import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
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
  Function? refetchFunction;
  Function? fetchMoreFunction;

  void onGotoAddPage() async {
    var rst = await Get.toNamed(
      AdminEditHashtagScreen.routeName,
      arguments: AdminEditHashtagScreenArguments(),
    );
    if (rst != null && rst && refetchFunction != null) {
      refetchFunction!();
    }
  }

  void onGotoEditPage(AdminEditHashtagScreenArguments args) async {
    var rst = await Get.toNamed(
      AdminEditHashtagScreen.routeName,
      arguments: args,
    );
    if (rst != null && rst && refetchFunction != null) {
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
      body: QueryGetHashtagListWidget(
        builder: (result, {refetch, fetchMore}) {
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
            List<QueryGetHashtagList$queryHashtag?> dataList =
                result.parsedData!.queryHashtag!;
            return Stack(
              children: [
                ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      QueryGetHashtagList$queryHashtag hashtagData =
                          dataList[index]!;
                      int skillCount = hashtagData.hashtagVariants!
                          .map((e) => e!.skillsAggregate!.count ?? 0)
                          .reduce((a, b) => a + b);
                      int requestCount = hashtagData.hashtagVariants!
                          .map((e) => e!.requestsAggregate!.count ?? 0)
                          .reduce((a, b) => a + b);
                      return ListTile(
                        leading: SizedBox(
                          width: 30.w,
                          height: 30.w,
                          child: Center(
                            child: hashtagData.iconName != '' &&
                                    hashtagData.iconName != null
                                ? FaIcon(
                                    faIconNameMapping[hashtagData.iconName],
                                  )
                                : faHashtagPlaceholderIcon,
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(hashtagData.name),
                            if (hashtagData.blessed ?? false)
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: FaIcon(
                                  FontAwesomeIcons.solidHeart,
                                  size: 16.w,
                                  color: Colors.redAccent,
                                ),
                              )
                          ],
                        ),
                        subtitle: Text(
                          'Skills: $skillCount, Requests: $requestCount',
                        ),
                        trailing: Icon(
                          Icons.edit,
                          size: 20.w,
                        ),
                        onTap: () {
                          onGotoEditPage(
                            AdminEditHashtagScreenArguments(
                                id: hashtagData.id,
                                metaName: hashtagData.name,
                                iconName: hashtagData.iconName,
                                blessed: hashtagData.blessed),
                          );
                        },
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
