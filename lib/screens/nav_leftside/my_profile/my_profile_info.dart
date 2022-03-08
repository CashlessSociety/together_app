import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:together_app/graphql/query/query.graphql.dart';

class MyProfileInfo extends StatefulWidget {
  final String userId;
  const MyProfileInfo({Key? key, required this.userId}) : super(key: key);

  @override
  State<MyProfileInfo> createState() => _MyProfileInfoState();
}

class _MyProfileInfoState extends State<MyProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GQLFQueryGetUserWithId(
        options: GQLOptionsQueryGetUserWithId(
            variables: VariablesQueryGetUserWithId(id: widget.userId)),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Text('Loading user info');
          } else if (result.parsedData != null) {
            QueryGetUserWithId$getUser data = result.parsedData!.getUser!;
            return Column(
              children: [
                const Text('User Info'),
                Text('ID: ${data.id}'),
                Text('Email: ${data.email}'),
                Text('Name: ${data.name}'),
                ElevatedButton(
                    onPressed: () async {
                      const FlutterSecureStorage storage =
                          FlutterSecureStorage();
                      await storage.delete(key: 'userId');
                      Get.back();
                    },
                    child: const Text('Logout'))
              ],
            );
          } else {
            return ElevatedButton(
                onPressed: () async {
                  const FlutterSecureStorage storage = FlutterSecureStorage();
                  await storage.delete(key: 'userId');
                  Get.back();
                },
                child: const Text('Reset'));
          }
        },
      ),
    );
  }
}
