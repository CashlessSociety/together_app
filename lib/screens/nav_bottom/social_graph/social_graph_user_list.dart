import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/screens/common/profile/other_profile_screen.dart';
import 'package:together_app/utils/routes.dart';

class SocialGraphUserList extends StatefulWidget {
  final String userId;
  const SocialGraphUserList({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  State<SocialGraphUserList> createState() => _SocialGraphUserListState();
}

class _SocialGraphUserListState extends State<SocialGraphUserList> {
  @override
  Widget build(BuildContext context) {
    return GQLFQueryGetAllUsers(
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) {
          return const Text('Loading user list info');
        } else if (result.parsedData != null) {
          List<QueryGetAllUsers$queryUser?> dataList =
              result.parsedData!.queryUser!;
          dataList.removeWhere((element) => element!.id == widget.userId);
          return Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    refetch!();
                  },
                  child: const Text("Refresh")),
              Expanded(
                child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(dataList[index]!.name),
                      subtitle: Text(dataList[index]!.email),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Get.toNamed(OtherProfileScreen.routeName,
                            arguments: OtherProfileScreenArguments(
                              otherUserId: dataList[index]!.id,
                            ));
                      },
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return const Text('Error! ');
        }
      },
    );
  }
}
