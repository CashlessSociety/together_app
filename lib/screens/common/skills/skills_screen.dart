import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/screens/common/skills/skills_available_switch.dart';
import 'package:together_app/screens/common/skills/skills_edit_screen.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/routes.dart';

class SkillsScreen extends StatefulWidget {
  static String routeName = '/skills_screen';
  final String userId;
  const SkillsScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  Function? queryRefetch;

  void onCreateSkill({String? hashtagMetaId, String? hashtagMetaName}) async {
    var rst = await Get.toNamed(SkillsEditScreen.routeName,
        arguments: SkillsEditScreenArguments(
          hashtagMetaId: hashtagMetaId,
          hashtagMetaName: hashtagMetaName,
        ));
    print('rst $rst');
    if (queryRefetch != null) {
      queryRefetch!();
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
    if (queryRefetch != null) {
      queryRefetch!();
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
              padding: EdgeInsets.all(15.w),
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
        SizedBox(
          height: 4.w,
        ),
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
          height: 4.w,
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
    return SizedBox(
      height: 25.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SkillAvailableSwitch(
            skillId: data.id,
            isAvailable: data.isAvailable ?? false,
          ),
          ElevatedButton(
            onPressed: () {
              onUpdateSkill(
                skillId: data.id,
                skillTitle: data.title!,
                skillMessage: data.message!,
                isAvailable: data.isAvailable ?? false,
              );
            },
            child: Row(
              children: [Icon(Icons.edit), Text("Edit Skill")],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSkillListSection(QueryResult<QueryGetSkillsPageData> result) {
    List<QueryGetSkillsPageData$getUser$skills?> skillList =
        result.parsedData!.getUser!.skills!;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        buildAddSkillButton(),
        ...List.generate(skillList.length, (index) {
          return buildSkillCard(skillList[index]!);
        }),
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

  Widget buildEmptySkillSection(QueryResult<QueryGetSkillsPageData> result) {
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
          buildBlessedHashtag(result.parsedData!.queryHashtagMeta!),
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: GQLFQueryGetSkillsPageData(
          options: GQLOptionsQueryGetSkillsPageData(
            fetchPolicy: FetchPolicy.cacheAndNetwork,
            variables: VariablesQueryGetSkillsPageData(
              id: widget.userId,
            ),
          ),
          builder: (result, {refetch, fetchMore}) {
            if (queryRefetch != refetch) {
              queryRefetch = refetch;
            }
            if (result.parsedData != null) {
              /// no skill, prompt create
              if (result.parsedData!.getUser!.skillsAggregate!.count == 0) {
                return buildEmptySkillSection(result);
              }

              /// has skill, show list
              else {
                return buildSkillListSection(result);
              }
            } else if (result.isLoading) {
              return Center(
                child: Text(
                  "Loading...",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          }),
    );
  }
}
