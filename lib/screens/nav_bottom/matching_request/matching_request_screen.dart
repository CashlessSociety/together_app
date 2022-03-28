import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together_app/components/alter_scaffold.dart';
import 'package:together_app/screens/nav_bottom/matching_request/social_graph_view.dart';
import 'package:together_app/utils/routes.dart';

class MatchingRequestScreen extends StatefulWidget {
  static String routeName = '/matching_request_screen';
  const MatchingRequestScreen({Key? key}) : super(key: key);

  @override
  State<MatchingRequestScreen> createState() => _MatchingRequestScreenState();
}

class _MatchingRequestScreenState extends State<MatchingRequestScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AlterScaffold(
      appBar: AppBar(
        title: const Text("Network graph"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(
                      SocialGraphView.routeName,
                      arguments: SocialGraphViewArguments(
                        htmlAssetPath: "webview/html/graph_1.html",
                      ),
                    );
                  },
                  child: const Text("Test 1: Images")),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(
                      SocialGraphView.routeName,
                      arguments: SocialGraphViewArguments(
                        htmlAssetPath: "webview/html/graph_2.html",
                      ),
                    );
                  },
                  child: const Text("Test 2: Groups")),
            ],
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
