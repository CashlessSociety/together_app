import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:together_app/components/alter_scaffold.dart';
import 'package:together_app/screens/nav_bottom/social_graph/social_graph_user_list.dart';
import 'package:together_app/utils/providers.dart';

class SocialGraphScreen extends StatefulWidget {
  static String routeName = 'social_graph_screen';
  const SocialGraphScreen({Key? key}) : super(key: key);

  @override
  State<SocialGraphScreen> createState() => _SocialGraphScreenState();
}

class _SocialGraphScreenState extends State<SocialGraphScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AlterScaffold(
      body: Consumer<LoginStateRefresher>(
        builder: (context, provider, child) {
          return FutureBuilder(
            future: const FlutterSecureStorage().read(key: 'userId'),
            builder: (context, AsyncSnapshot<String?> snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
                return SocialGraphUserList(userId: snapshot.data!);
              } else {
                return const Center(
                  child: Text('Login to see more'),
                );
              }
            },
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
