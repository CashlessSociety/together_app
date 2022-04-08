import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/components/dialogs.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';
import 'package:together_app/screens/common/requests/requests_card.dart';
import 'package:together_app/screens/common/requests/requests_edit_screen.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/routes.dart';

class RequestsScreen extends StatefulWidget {
  final String userId;
  final SliverOverlapInjector sliverOverlapInjector;
  final double viewHeight;
  static String routeName = '/requests_screen';
  const RequestsScreen({
    Key? key,
    required this.userId,
    required this.sliverOverlapInjector,
    required this.viewHeight,
  }) : super(key: key);

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen>
    with AutomaticKeepAliveClientMixin {
  GraphQLClient? gqlClient;
  // GraphQL queries
  List<QueryGetRequestsPageData$queryHashtag?>? blessedHashtagList;
  QueryGetRequestsPageData$getUser? userData;
  String loggedInUserId = '';

  void onGetRequestPageData() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) async {
      var result = await gqlClient!.queryGetRequestsPageData(
        OptionsQueryGetRequestsPageData(
          fetchPolicy: FetchPolicy.networkOnly,
          cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
          variables: VariablesQueryGetRequestsPageData(
            id: widget.userId,
          ),
        ),
      );
      if (result.hasException) {
        showToast('Unable to get request data');
      } else {
        setState(() {
          userData = result.parsedData?.getUser;
        });
      }
    });
  }

  void onCreateRequest({String? hashtagId, String? hashtagName}) async {
    var rst = await Get.toNamed(RequestsEditScreen.routeName,
        arguments: RequestsEditScreenArguments(
          hashtagId: hashtagId,
          hashtagName: hashtagName,
        ));
    if (rst != null && rst) {
      onGetRequestPageData();
    }
  }

  void onUpdateRequest({
    required String requestId,
    required String requestTitle,
    required String requestMessage,
    required EnumRequestStatus status,
    required List<String> requestHashtagList,
  }) async {
    var rst = await Get.toNamed(RequestsEditScreen.routeName,
        arguments: RequestsEditScreenArguments(
            requestId: requestId,
            requestTitle: requestTitle,
            requestMessage: requestMessage,
            requestStatus: status,
            requestHashtagList: requestHashtagList));
    if (rst != null && rst) {
      onGetRequestPageData();
    }
  }

  void onDeleteRequest({
    required String requestId,
  }) async {
    bool result = await showTwoOptionDialog(context) ?? false;
    if (result) {
      setState(() {
        userData!.requests!.removeWhere((element) => element!.id == requestId);
      });
      gqlClient!.mutateRemoveRequest(
        OptionsMutationRemoveRequest(
            variables: VariablesMutationRemoveRequest(
              requestId: requestId,
            ),
            onCompleted: (result, MutationRemoveRequest? data) {
              showToast('Deleted');
              onGetRequestPageData();
            },
            onError: (e) {
              showToast('Unable to delete');
            }),
      );
    }
  }

  Widget buildAddRequestButton() {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: GestureDetector(
        onTap: () {
          onCreateRequest();
        },
        child: Container(
          height: 70.w,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5.w)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: kDeepBlue,
              ),
              Text(
                "Add a request",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: kDeepBlue,
                    fontSize: 15.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmptyRequestSection() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do you have a request you can share?",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.w),
          Text(
            "If you are requested or just interested in any of the following areas, let people know!",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 12.w),
          Text(
            "Requests marked with * are in high demand.",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
          SizedBox(height: 20.w),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onCreateRequest();
              },
              child: Text(
                "Something Else",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: kDeepBlue),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildRequestSection(int index) {
    if (userData!.requestsAggregate!.count == 0) {
      if (loggedInUserId == widget.userId) {
        return buildEmptyRequestSection();
      } else {
        return const Center(
          child: Text("No Request Data"),
        );
      }
    } else {
      if (index == 0) {
        return widget.userId == loggedInUserId
            ? buildAddRequestButton()
            : const SizedBox.shrink();
      } else {
        return RequestCard(
          isOwner: widget.userId == loggedInUserId,
          isLast: index == userData!.requests!.length,
          requestData: userData!.requests![index - 1]!,
          onDelete: onDeleteRequest,
          onUpdate: onUpdateRequest,
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    onGetRequestPageData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final GraphQLClient client = GraphQLProvider.of(context).value;
    if (client != gqlClient) {
      gqlClient = client;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: const FlutterSecureStorage().read(key: 'userId'),
      builder: (context, AsyncSnapshot<String?> snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          loggedInUserId = snapshot.data!;
        }
        int itemCount = 1;
        bool hasLoaded = false;
        if (blessedHashtagList != null && userData != null) {
          hasLoaded = true;
          itemCount += userData!.requests!.length;
        }
        return CustomScrollView(
          key: PageStorageKey<String>(RequestsScreen.routeName),
          slivers: [
            widget.sliverOverlapInjector,
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  if (hasLoaded) {
                    return buildRequestSection(index);
                  } else {
                    return SizedBox(
                      height: widget.viewHeight - 100.w,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                },
                childCount: itemCount,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

// class RequestsScreen extends StatelessWidget {
//   final String userId;
//   final SliverOverlapInjector sliverOverlapInjector;
//   final double viewHeight;

//   static String routeName = '/requests_screen';
//   const RequestsScreen({
//     Key? key,
//     required this.userId,
//     required this.sliverOverlapInjector,
//     required this.viewHeight,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('This is $routeName'),
//       ),
//     );
//   }
// }
