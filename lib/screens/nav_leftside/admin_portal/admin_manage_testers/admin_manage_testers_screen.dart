import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';

class AdminManageTestersScreen extends StatefulWidget {
  static String routeName = "/admin_manage_testers_screen";

  const AdminManageTestersScreen({Key? key}) : super(key: key);

  @override
  State<AdminManageTestersScreen> createState() =>
      _AdminManageTestersScreenState();
}

class _AdminManageTestersScreenState extends State<AdminManageTestersScreen> {
  GraphQLClient? gqlClient;
  bool isProcessing = false;

  void startProcessing() {
    showToast("Processing", duration: const Duration(hours: 1));
    setState(() {
      isProcessing = true;
    });
  }

  void endProcessing(bool isSuccess) {
    dismissAllToast();
    showToast(isSuccess ? "Success" : "Error");
    setState(() {
      isProcessing = false;
    });
  }

  void onAddTester() {
    startProcessing();
    List<InputAddUserInput> testInfo = List.generate(10, (index) {
      String currentTime =
          "${DateTime.now().toUtc().microsecondsSinceEpoch}".substring(7);
      String ramNum = "${Random().nextInt(89999) + 10000}";
      InputAddUserInput info = InputAddUserInput(
        email: '$ramNum@$currentTime',
        name: '$ramNum $currentTime',
        isTest: true,
        createdTimestamp: DateTime.now().toUtc().toIso8601String(),
      );
      return info;
    });
    gqlClient!.mutateCreateTester(
      OptionsMutationCreateTester(
        fetchPolicy: FetchPolicy.noCache,
        variables: VariablesMutationCreateTester(testerInfo: testInfo),
        onCompleted: (result, MutationCreateTester? data) {
          var userData = data?.addUser?.user;
          print("userData $userData");
          if (userData != null && userData.isNotEmpty) {
            endProcessing(true);
          } else {
            endProcessing(false);
          }
        },
        onError: (e) {
          print("error $e");
        },
      ),
    );
  }

  void onDeleteTester() {
    startProcessing();
    gqlClient!.mutateDeleteTester(
      OptionsMutationDeleteTester(
        fetchPolicy: FetchPolicy.noCache,
        onCompleted: (result, MutationDeleteTester? data) {
          var numUids = data?.deleteUser?.numUids;
          print('numUids $numUids');
          if (numUids != null) {
            endProcessing(true);
          } else {
            endProcessing(false);
          }
        },
        onError: (e) {
          print("error $e");
        },
      ),
    );
  }

  List<InputAddGratitudeInput> getGratitudeInputList(
    List<String> noSenderIdList,
    List<String> allIdList,
  ) {
    List<InputAddGratitudeInput> info = [];
    for (String noSenderId in noSenderIdList) {
      allIdList.shuffle();
      String? toId = allIdList.firstWhereOrNull((e) => e != noSenderId);
      if (toId != null) {
        info.add(
          InputAddGratitudeInput(
            from: InputUserRef(id: noSenderId),
            to: InputUserRef(id: toId),
            hashtagVariants: [],
            message: "Gratitude From $noSenderId To $toId",
            isTest: true,
            createdTimestamp: DateTime.now().toUtc().toIso8601String(),
          ),
        );
      }
    }
    return info;
  }

  void onAddRandomTestGratitude() async {
    startProcessing();
    var rst = await gqlClient!.queryGetTesters(OptionsQueryGetTesters(
      fetchPolicy: FetchPolicy.noCache,
    ));
    var allTester = rst.parsedData?.allTester;
    var noSendTester = rst.parsedData?.noSendTester;
    if (allTester == null || noSendTester == null) {
      endProcessing(false);
    } else {
      List<String> noSenderIdList = [];
      List<String> allIdList = allTester.map((e) => e!.id).toList();
      noSendTester.shuffle();
      allIdList.shuffle();
      int userIndex = 0;
      while (userIndex < 10) {
        if (noSendTester.length < userIndex + 1) {
          userIndex = 10;
        } else {
          noSenderIdList.add(noSendTester[userIndex]!.id);
          userIndex++;
        }
      }
      List<InputAddGratitudeInput> info =
          getGratitudeInputList(noSenderIdList, allIdList);
      for (var element in info) {
        print(element.message);
      }
      gqlClient!.mutateCreateTestGratitude(
        OptionsMutationCreateTestGratitude(
          fetchPolicy: FetchPolicy.noCache,
          variables: VariablesMutationCreateTestGratitude(info: info),
          onCompleted: (result, MutationCreateTestGratitude? data) {
            var numUids = data?.addGratitude?.numUids;
            print('numUids $numUids');
            if (numUids != null) {
              endProcessing(true);
            } else {
              endProcessing(false);
            }
          },
          onError: (e) {
            print("error $e");
          },
        ),
      );
    }
  }

  void onDeleteTestGratitude() {
    startProcessing();
    gqlClient!.mutateDeleteTestGratitude(
      OptionsMutationDeleteTestGratitude(
        fetchPolicy: FetchPolicy.noCache,
        onCompleted: (result, MutationDeleteTestGratitude? data) {
          var numUids = data?.deleteGratitude?.numUids;
          print('numUids $numUids');
          if (numUids != null) {
            endProcessing(true);
          } else {
            endProcessing(false);
          }
        },
        onError: (e) {
          print("error $e");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manager Test Data"),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                      ),
                      onPressed: () {
                        onAddTester();
                      },
                      child: const Text("Add 10 testers")),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent),
                      ),
                      onPressed: () {
                        onDeleteTester();
                      },
                      child: const Text("Delete all testers")),
                ],
              ),
              const Divider(height: 0),
              Column(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                      ),
                      onPressed: () {
                        onAddRandomTestGratitude();
                      },
                      child: const Text("Randomly add test Gratitude")),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent),
                      ),
                      onPressed: () {
                        onDeleteTestGratitude();
                      },
                      child: const Text("Delete all test Gratitude")),
                ],
              ),
            ],
          ),
          Positioned.fill(
            child: IgnorePointer(
              ignoring: !isProcessing,
              child: Container(),
            ),
          ),
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
