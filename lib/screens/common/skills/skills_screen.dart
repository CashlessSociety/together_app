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
import 'package:together_app/screens/common/skills/skill_card.dart';
import 'package:together_app/screens/common/skills/skills_edit_screen.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/routes.dart';

class SkillsScreen extends StatefulWidget {
  static String routeName = '/skills_screen';
  final String userId;
  final SliverOverlapInjector sliverOverlapInjector;
  final double viewHeight;
  const SkillsScreen({
    Key? key,
    required this.userId,
    required this.sliverOverlapInjector,
    required this.viewHeight,
  }) : super(key: key);

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen>
    with AutomaticKeepAliveClientMixin {
  GraphQLClient? gqlClient;
  List<QueryGetSkillsPageData$queryHashtag?>? blessedHashtagList;
  QueryGetSkillsPageData$getUser? userData;
  String loggedInUserId = '';

  void onGetSkillPageData() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) async {
      var result = await gqlClient!.queryGetSkillsPageData(
        OptionsQueryGetSkillsPageData(
          fetchPolicy: FetchPolicy.networkOnly,
          cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
          variables: VariablesQueryGetSkillsPageData(
            id: widget.userId,
          ),
        ),
      );
      if (result.hasException) {
        showToast('Unable to get skill data');
      } else {
        setState(() {
          blessedHashtagList = result.parsedData?.queryHashtag;
          userData = result.parsedData?.getUser;
        });
      }
    });
  }

  void onCreateSkill({String? hashtagId, String? hashtagName}) async {
    var rst = await Get.toNamed(SkillsEditScreen.routeName,
        arguments: SkillsEditScreenArguments(
          hashtagId: hashtagId,
          hashtagName: hashtagName,
        ));
    if (rst != null && rst) {
      onGetSkillPageData();
    }
  }

  void onUpdateSkill({
    required String skillId,
    required String skillTitle,
    required String skillMessage,
    required bool isAvailable,
    required List<String> skillHashtagList,
  }) async {
    var rst = await Get.toNamed(SkillsEditScreen.routeName,
        arguments: SkillsEditScreenArguments(
            skillId: skillId,
            skillTitle: skillTitle,
            skillMessage: skillMessage,
            isAvailable: isAvailable,
            skillHashtagList: skillHashtagList));
    if (rst != null && rst) {
      onGetSkillPageData();
    }
  }

  void onDeleteSkill({
    required String skillId,
  }) async {
    bool result = await showTwoOptionDialog(context) ?? false;
    if (result) {
      setState(() {
        userData!.skills!.removeWhere((element) => element!.id == skillId);
      });
      gqlClient!.mutateRemoveSkill(
        OptionsMutationRemoveSkill(
            variables: VariablesMutationRemoveSkill(
              skillId: skillId,
            ),
            onCompleted: (result, MutationRemoveSkill? data) {
              showToast('Deleted');
              onGetSkillPageData();
            },
            onError: (e) {
              showToast('Unable to delete');
            }),
      );
    }
  }

  Widget buildBlessedHashtag(
    List<QueryGetSkillsPageData$queryHashtag?> hashtagList,
  ) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.w,
        children: List.generate(hashtagList.length, (index) {
          if (hashtagList[index] != null) {
            var data = hashtagList[index]!;
            return ActionChip(
              avatar: data.iconName == ''
                  ? null
                  : Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: SizedBox(
                        height: 20.w,
                        child: FittedBox(
                          child: FaIcon(
                            faIconNameMapping[data.iconName],
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
              backgroundColor: kPrimaryOrange,
              label: Text(
                data.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                onCreateSkill(
                  hashtagId: data.id,
                  hashtagName: data.name,
                );
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        }),
      ),
    );
  }

  Widget buildAddSkillButton() {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: GestureDetector(
        onTap: () {
          onCreateSkill();
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
                "Add a skill",
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

  Widget buildEmptySkillSection() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do you have a skill you can share?",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.w),
          Text(
            "If you are skilled or just interested in any of the following areas, let people know!",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 12.w),
          Text(
            "Skills marked with * are in high demand.",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
          SizedBox(height: 20.w),
          buildBlessedHashtag(blessedHashtagList!),
          SizedBox(height: 16.w),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onCreateSkill();
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

  Widget buildSkillSection(int index) {
    if (userData!.skillsAggregate!.count == 0) {
      if (loggedInUserId == widget.userId) {
        return buildEmptySkillSection();
      } else {
        return const Center(
          child: Text("No Skill Data"),
        );
      }
    } else {
      if (index == 0) {
        return widget.userId == loggedInUserId
            ? buildAddSkillButton()
            : const SizedBox.shrink();
      } else {
        return SkillCard(
          isOwner: widget.userId == loggedInUserId,
          isLast: index == userData!.skills!.length,
          skillData: userData!.skills![index - 1]!,
          onDelete: onDeleteSkill,
          onUpdate: onUpdateSkill,
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    onGetSkillPageData();
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
          itemCount += userData!.skills!.length;
        }
        return CustomScrollView(
          key: PageStorageKey<String>(SkillsScreen.routeName),
          slivers: [
            widget.sliverOverlapInjector,
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  if (hasLoaded) {
                    return buildSkillSection(index);
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
