import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:together_app/graphql/requests/requests.graphql.dart';
import 'package:together_app/screens/nav_leftside/admin_portal/admin_manage_hashtags/admin_edit_hashtag_screen.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/routes.dart';

class AdminManageHashtagsScreen extends StatefulWidget {
  static String routeName = '/admin_manage_hashtags_screen';
  const AdminManageHashtagsScreen({Key? key}) : super(key: key);

  @override
  State<AdminManageHashtagsScreen> createState() =>
      _AdminManageHashtagsScreenState();
}

class _AdminManageHashtagsScreenState extends State<AdminManageHashtagsScreen> {
  AdminEditHashtagScreenArguments? selectedHashtagArgs;
  Function? refetchFunction;
  Function? fetchMoreFunction;

  void onGotoAddPage() async {
    var rst = await Get.toNamed(
      AdminEditHashtagScreen.routeName,
      arguments: AdminEditHashtagScreenArguments(),
    );
    if (rst != null &&
        rst is MutationAddHashtag$addHashtag$hashtag &&
        refetchFunction != null) {
      refetchFunction!();
    }
  }

  void onGotoEditPage() async {
    var rst = await Get.toNamed(
      AdminEditHashtagScreen.routeName,
      arguments: selectedHashtagArgs,
    );
    if (rst != null &&
        rst is MutationAddHashtag$addHashtag$hashtag &&
        refetchFunction != null) {
      refetchFunction!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text("Manage Hashtags"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add a hashtag',
            onPressed: () {
              onGotoAddPage();
            },
          ),
        ],
      ),
      body: GQLFQueryGetAllHashtags(
        builder: (result, {fetchMore, refetch}) {
          if (refetchFunction == null || refetchFunction != refetch) {
            refetchFunction = refetch;
          }
          if (fetchMoreFunction == null || fetchMoreFunction != fetchMore) {
            fetchMoreFunction = fetchMore;
          }

          if (result.isLoading) {
            return const Center(child: Text('Loading hashtags'));
          }
          if (result.hasException) {
            return const Center(child: Text('Error loading hashtags'));
          }
          if (result.parsedData != null) {
            List<QueryGetAllHashtags$queryHashtag?> dataList =
                result.parsedData!.queryHashtag!;
            return Stack(
              children: [
                ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      QueryGetAllHashtags$queryHashtag hashtagData =
                          dataList[index]!;
                      return ListTile(
                        leading: FaIcon(faIconNameMapping[
                            hashtagData.iconName == ''
                                ? faDefaultIcon
                                : hashtagData.iconName]),
                        title: Text(hashtagData.hashtag),
                        subtitle: Text(
                            'Skill: ${hashtagData.skillsAggregate!.count}, Requests: ${hashtagData.requestsAggregate!.count}'),
                      );
                    }),
                Positioned(
                  bottom: 30.w + MediaQuery.of(context).viewPadding.bottom,
                  right: 20.w,
                  child: FloatingActionButton(
                      child: Icon(
                        Icons.refresh,
                        size: 30.w,
                      ),
                      onPressed: () {
                        if (refetchFunction != null) {
                          refetchFunction!();
                        }
                      }),
                ),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
