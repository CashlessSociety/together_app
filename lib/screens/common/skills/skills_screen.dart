import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GQLFQueryGetSkillsPageData(
          options: GQLOptionsQueryGetSkillsPageData(
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

              /// has skill, show list
              else {
                return Text("list");
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
