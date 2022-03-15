import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/components/dialogs.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/screens/common/skills/skills_available_switch.dart';
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
  List<QueryGetSkillsPageData$queryHashtagMeta?>? blessedHashtagList;
  QueryGetSkillsPageData$getUser? userData;

  void onGetSkillPageData() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) async {
      var result = await gqlClient!.queryGetSkillsPageData(
        GQLOptionsQueryGetSkillsPageData(
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
          blessedHashtagList = result.parsedData?.queryHashtagMeta;
          userData = result.parsedData?.getUser;
        });
      }
    });
  }

  void onCreateSkill({String? hashtagMetaId, String? hashtagMetaName}) async {
    var rst = await Get.toNamed(SkillsEditScreen.routeName,
        arguments: SkillsEditScreenArguments(
          hashtagMetaId: hashtagMetaId,
          hashtagMetaName: hashtagMetaName,
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
  }) async {
    var rst = await Get.toNamed(SkillsEditScreen.routeName,
        arguments: SkillsEditScreenArguments(
          skillId: skillId,
          skillTitle: skillTitle,
          skillMessage: skillMessage,
          isAvailable: isAvailable,
        ));
    print('rst $rst');
    onGetSkillPageData();
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
        GQLOptionsMutationRemoveSkill(
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
    List<QueryGetSkillsPageData$queryHashtagMeta?> hashtagMetaList,
  ) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.w,
        children: List.generate(hashtagMetaList.length, (index) {
          if (hashtagMetaList[index] != null) {
            var data = hashtagMetaList[index]!;
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
                data.metaName,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                onCreateSkill(
                  hashtagMetaId: data.id,
                  hashtagMetaName: data.metaName,
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

  Widget buildSkillCard(QueryGetSkillsPageData$getUser$skills data) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
        top: 5.w,
        bottom: 15.w,
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(5.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
              child: buildSkillCardTop(data),
            ),
            const Divider(height: 0, thickness: 1),
            Padding(
              padding: EdgeInsets.all(15.w),
              child: buildSkillCardBottom(data),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSkillCardTop(QueryGetSkillsPageData$getUser$skills data) {
    String firstIcon = data.hashtagVariants[0]!.hashtagMeta.iconName ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (firstIcon != "")
              Padding(
                padding: EdgeInsets.only(right: 4.w),
                child: SizedBox(
                  height: 24.w,
                  width: 24.w,
                  child: FittedBox(
                    child: FaIcon(
                      faIconNameMapping[firstIcon],
                      color: kDeepBlue,
                    ),
                  ),
                ),
              ),
            Text(
              data.title!,
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black87,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
        SizedBox(height: 5.w),
        Text(
          data.message!,
          maxLines: 3,
          overflow: TextOverflow.fade,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 8.w,
        ),
        Text(
          "SKILL HASHTAGS",
          style: TextStyle(
            fontSize: 11.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 4.w,
        ),
        Wrap(
          spacing: 4.w,
          runSpacing: 4.w,
          children: List.generate(data.hashtagVariants.length, (index) {
            String tag = data.hashtagVariants[index]!.hashtagMeta.metaName;
            return Chip(
              label: Text(
                '#$tag',
                style: TextStyle(color: kPrimaryOrange, fontSize: 12.w),
              ),
              padding: EdgeInsets.zero,
              backgroundColor: Colors.grey[200],
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
            );
          }),
        )
      ],
    );
  }

  Widget buildSkillCardBottom(QueryGetSkillsPageData$getUser$skills data) {
    bool isAvailable = data.isAvailable ?? false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SkillAvailableSwitch(
          skillId: data.id,
          isAvailable: isAvailable,
          onChanged: (value) {
            isAvailable = value;
          },
        ),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.grey),
                elevation: MaterialStateProperty.all(0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 0)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                ),
              ),
              onPressed: () {
                onDeleteSkill(skillId: data.id);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 16.w,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Remove",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            SizedBox(width: 2.w),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                foregroundColor: MaterialStateProperty.all(kDeepBlue),
                elevation: MaterialStateProperty.all(0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 0)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                ),
              ),
              onPressed: () {
                onUpdateSkill(
                  skillId: data.id,
                  skillTitle: data.title!,
                  skillMessage: data.message!,
                  isAvailable: isAvailable,
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    size: 16.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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
    return Builder(
      builder: (context) {
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
                    if (userData!.skillsAggregate!.count == 0) {
                      return buildEmptySkillSection();
                    } else {
                      if (index == 0) {
                        return buildAddSkillButton();
                      } else {
                        return buildSkillCard(userData!.skills![index - 1]!);
                      }
                    }
                  } else {
                    return SizedBox(
                      height: widget.viewHeight,
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
