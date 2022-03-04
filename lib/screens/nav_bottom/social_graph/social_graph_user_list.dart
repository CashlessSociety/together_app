import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:together_app/graphql/requests/requests.graphql.dart';

class SocialGraphUserList extends StatefulWidget {
  const SocialGraphUserList({Key? key}) : super(key: key);

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
          print('dataList $dataList');
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
                      title: Text('Name: ${dataList[index]!.name}'),
                      subtitle: Text('Email: ${dataList[index]!.email}'),
                      trailing: Text(
                        dataList[index]!.id,
                        style:
                            TextStyle(fontSize: 10.sp, color: Colors.grey[600]),
                      ),
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
