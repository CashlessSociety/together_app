import 'package:flutter/material.dart';
import 'package:together_app/components/alter_scaffold.dart';

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
        title: const Text("Matching Requests"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [],
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
