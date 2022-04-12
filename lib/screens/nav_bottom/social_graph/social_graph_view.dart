import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/routes.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialGraphView extends StatefulWidget {
  static String routeName = '/social_graph_view';

  final SocialGraphViewArguments arguments;

  const SocialGraphView({Key? key, required this.arguments}) : super(key: key);

  @override
  State<SocialGraphView> createState() => _SocialGraphViewState();
}

class _SocialGraphViewState extends State<SocialGraphView> {
  GraphQLClient? gqlClient;
  WebViewController? webViewController;
  String nodesStr = "";
  String edgesStr = "";
  String optionsStr = "";
  bool isLoading = true;
  Map<String, String> edgesMap = {};

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory<OneSequenceGestureRecognizer>(
      () => EagerGestureRecognizer(),
    ),
  };

  String getOptionsStr() {
    Map options = {
      "nodes": {
        "shape": "dot",
        "borderWidth": 2,
        "size": 22,
        "color": {"border": "#222222", "background": "#666666"},
        "font": {"size": 16, "color": "#eeeeee"}
      },
      "edges": {
        "color": "lightgray",
        "smooth": {
          "type": "continuous",
        },
        "length": 250,
      },
      "physics": {"stabilization": true},
      "layout": {
        // "randomSeed": 1,
        "improvedLayout": true,
      }
    };
    return jsonEncode(options);
  }

  Future<void> getGraphData() async {
    List nodesList = [];
    List edgesList = [];
    var rst = await gqlClient!.queryGetTestGraphData(
      OptionsQueryGetTestGraphData(
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    var userList = rst.parsedData?.queryUser;
    setState(() {
      isLoading = false;
    });
    if (userList != null) {
      for (var user in userList) {
        int r = Random().nextInt(255);
        int g = Random().nextInt(255);
        int b = Random().nextInt(255);
        nodesList.add({
          "id": user!.id,
          "label": user.email,
          "color": "rgb($r, $g, $b)",
        });
        if (user.gratitudeSent != null) {
          onProcessEdgesMap(user.gratitudeSent!);
        }
      }
      edgesMap.forEach((key, value) {
        String _f = key.split('-')[0];
        String _t = key.split('-')[1];
        edgesList.add({
          "from": _f,
          "to": _t,
          "arrows": value,
        });
      });
      nodesStr = jsonEncode(nodesList);
      edgesStr = jsonEncode(edgesList);
    } else {
      showToast("Load Error");
      print(rst.exception);
    }
  }

  void onProcessEdgesMap(
    List<QueryGetTestGraphData$queryUser$gratitudeSent?> gratitudeSent,
  ) {
    for (var gratitude in gratitudeSent) {
      String fromId = gratitude!.from.id;
      String toId = gratitude.to.id;
      String ftId = '$fromId-$toId';
      String tfId = '$toId-$fromId';
      bool hasFT = edgesMap.containsKey(ftId);
      bool hasTF = edgesMap.containsKey(tfId);
      if (!hasFT && !hasTF) {
        edgesMap[ftId] = "to";
      } else if (!hasFT && hasTF) {
        edgesMap[tfId] = "to, from";
      }
    }
  }

  @override
  void initState() {
    optionsStr = getOptionsStr();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
        ),
        title: const Text(
          "Graph Example",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: kPrimaryBlack,
      ),
      body: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0.5.sw - 0.5.sh,
            right: 0.5.sw - 0.5.sh,
            child: WebView(
              gestureRecognizers: gestureRecognizers,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) {
                webViewController = controller;
                webViewController!
                    .loadFlutterAsset(widget.arguments.htmlAssetPath);
              },
              onPageFinished: (url) async {
                await getGraphData();
                String jsStr =
                    "onDrawGraph('$nodesStr', '$edgesStr', '$optionsStr');";
                webViewController!.runJavascript(jsStr);
              },
            ),
          ),
          if (isLoading)
            const Positioned.fill(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final GraphQLClient client = GraphQLProvider.of(context).value;
    if (client != gqlClient) {
      gqlClient = client;
    }
  }
}
