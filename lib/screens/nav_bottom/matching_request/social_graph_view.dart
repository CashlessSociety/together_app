import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:together_app/utils/routes.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class SocialGraphView extends StatefulWidget {
  static String routeName = '/social_graph_view';

  final SocialGraphViewArguments arguments;
  const SocialGraphView({Key? key, required this.arguments}) : super(key: key);

  @override
  State<SocialGraphView> createState() => _SocialGraphViewState();
}

class _SocialGraphViewState extends State<SocialGraphView> {
  WebViewPlusController? webViewController;
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory<OneSequenceGestureRecognizer>(
      () => EagerGestureRecognizer(),
    ),
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph Example"),
        backgroundColor: Colors.black54,
      ),
      body: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0.5.sw - 0.5.sh,
            right: 0.5.sw - 0.5.sh,
            child: WebViewPlus(
              gestureRecognizers: gestureRecognizers,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: widget.arguments.htmlAssetPath,
              onWebViewCreated: (controller) {
                webViewController = controller;
              },
            ),
          ),
        ],
      ),
    );
  }
}
