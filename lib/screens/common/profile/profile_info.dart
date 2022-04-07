import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/screens/common/gratitude/gratitude_screen.dart';
import 'package:together_app/screens/common/profile/profile_edit_screen.dart';
import 'package:together_app/screens/common/requests/requests_screen.dart';
import 'package:together_app/screens/common/skills/skills_screen.dart';
import 'package:together_app/screens/main_entry/main_entry_drawer.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/utils/providers.dart';
import 'package:together_app/utils/routes.dart';

class ProfileInfo extends StatefulWidget {
  final String userId;
  final int? focusedTab;
  final bool isOwner;
  const ProfileInfo({
    Key? key,
    required this.userId,
    this.focusedTab,
    required this.isOwner,
  }) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo>
    with TickerProviderStateMixin {
  late TabController tabController;
  List<String> tabViewName = [
    GratitudeScreen.routeName,
    SkillsScreen.routeName,
    RequestsScreen.routeName
  ];
  final double tabHeight = 45.w;
  final double collapsedHeight = 45.w;
  final double expandedHeight = 230.w;
  final double indicatorWeight = 2.w;
  final double topBarHeight = 45.w;
  late double tabViewHeight;
  Function? refetchFunction;

  double scrollPercentMinModifier(double scrollPercent, double minPercent) {
    if (scrollPercent >= minPercent) {
      return (scrollPercent - minPercent) / (1 - minPercent);
    } else {
      return 0;
    }
  }

  void onGotoProfileEdit() async {
    var rst = await Get.toNamed(
      ProfileEditScreen.routeName,
      arguments: ProfileEditScreenArguments(userId: widget.userId),
    );
    if (rst != null && rst) {
      if (refetchFunction != null) {
        refetchFunction!();
      }
    }
  }

  void onRefreshUserInfo({
    required String id,
    required String name,
    required String email,
    required String avatar,
  }) {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      Provider.of<UserInfoNotifier>(context, listen: false).updateInfo(
        id: id,
        name: name,
        email: email,
        avatar: avatar,
      );
    });
  }

  void onUserNotFound() async {
    showToast("Invalid User Info");
    await const FlutterSecureStorage().delete(key: 'userId');
    Provider.of<LoginStateRefresher>(context, listen: false).refresh();
  }

  @override
  void initState() {
    tabViewHeight =
        1.sh - ScreenUtil().statusBarHeight - collapsedHeight - tabHeight;

    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: widget.isOwner ? const MainEntryDrawer() : null,
      body: QueryGetUserWithIdWidget(
        options: OptionsQueryGetUserWithId(
            fetchPolicy: FetchPolicy.cacheAndNetwork,
            variables: VariablesQueryGetUserWithId(id: widget.userId)),
        builder: ((result, {refetch, fetchMore}) {
          if (result.parsedData != null && result.parsedData!.getUser == null) {
            onUserNotFound();
            return const SizedBox.shrink();
          }
          if (refetchFunction != refetch) {
            refetchFunction = refetch;
          }
          if (result.parsedData?.getUser?.id != null) {
            String userId = result.parsedData!.getUser!.id;
            String userName = result.parsedData!.getUser!.name;
            String userEmail = result.parsedData!.getUser!.email;
            String userAvatar = result.parsedData!.getUser!.avatar ?? "";
            onRefreshUserInfo(
              id: userId,
              name: userName,
              email: userEmail,
              avatar: userAvatar,
            );
          }
          return DefaultTabController(
            length: 3,
            initialIndex: widget.focusedTab ?? 0,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverLayoutBuilder(
                        builder: (context, SliverConstraints constraints) {
                      double scrollPercent = 0;
                      bool hasCollapsed = false;
                      double scrollSpace = expandedHeight -
                          collapsedHeight -
                          tabHeight -
                          indicatorWeight;
                      if (constraints.scrollOffset > scrollSpace) {
                        scrollPercent = 1.0;
                      } else {
                        scrollPercent = constraints.scrollOffset / scrollSpace;
                      }
                      hasCollapsed = scrollPercent > 0.85;
                      return SliverAppBar(
                        collapsedHeight: collapsedHeight,
                        expandedHeight: expandedHeight,
                        pinned: true,
                        elevation: 0,
                        toolbarHeight: topBarHeight,
                        leading: IconButton(
                          icon: Icon(
                            widget.isOwner ? Icons.menu : Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            if (widget.isOwner) {
                              Scaffold.of(context).openDrawer();
                            } else {
                              Get.back();
                            }
                          },
                        ),
                        actions: [
                          if (widget.isOwner)
                            IconButton(
                              onPressed: () {
                                onGotoProfileEdit();
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.black54,
                              ),
                            ),
                        ],
                        backgroundColor: Colors.white,
                        bottom: TabBar(
                          padding: EdgeInsets.symmetric(horizontal: 38.w),
                          indicatorColor: kPrimaryYellow,
                          labelColor: kPrimaryBlack,
                          indicatorWeight: indicatorWeight,
                          unselectedLabelColor: kPrimaryBlack.withOpacity(0.5),
                          tabs: [
                            Tab(
                              text: "Gratitude",
                              height: tabHeight - indicatorWeight,
                            ),
                            Tab(
                              text: "Skills",
                              height: tabHeight - indicatorWeight,
                            ),
                            Tab(
                              text: "Requests",
                              height: tabHeight - indicatorWeight,
                            ),
                          ],
                        ),
                        flexibleSpace: buildProfileSection(
                            scrollPercent, hasCollapsed, result),
                      );
                    }),
                  ),
                ];
              },
              body: TabBarView(
                children: List.generate(tabViewName.length, (index) {
                  return Builder(builder: (context) {
                    var sliverOverlapInjector = SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context,
                      ),
                    );
                    if (tabViewName[index] == SkillsScreen.routeName) {
                      return SkillsScreen(
                        userId: widget.userId,
                        sliverOverlapInjector: sliverOverlapInjector,
                        viewHeight: tabViewHeight,
                      );
                    } else if (tabViewName[index] ==
                        GratitudeScreen.routeName) {
                      return GratitudeScreen(
                        userId: widget.userId,
                        sliverOverlapInjector: sliverOverlapInjector,
                        viewHeight: tabViewHeight,
                      );
                    } else if (tabViewName[index] == RequestsScreen.routeName) {
                      return RequestsScreen(
                        userId: widget.userId,
                        sliverOverlapInjector: sliverOverlapInjector,
                        viewHeight: tabViewHeight,
                      );
                    } else {
                      return const SizedBox();
                    }
                  });
                }),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget buildProfileSection(
    double scrollPercent,
    bool hasCollapsed,
    QueryResult<QueryGetUserWithId> result,
  ) {
    double halfScrollPercent = scrollPercentMinModifier(scrollPercent, 0.5);
    return FlexibleSpaceBar(
      expandedTitleScale: 1,
      centerTitle: true,
      titlePadding: EdgeInsets.zero,
      title: Stack(
        children: [
          /// light yellow background
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryLightYellow1,
              ),
            ),
          ),

          /// yellow bar background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height:
                topBarHeight + indicatorWeight + ScreenUtil().statusBarHeight,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryYellow,
              ),
            ),
          ),

          Positioned(
            top: 25.w + ScreenUtil().statusBarHeight + 102.w,
            left: 25.w,
            width: 94.w,
            child: buildGratitudeIconWithText(),
          ),

          Positioned(
            top: 25.w + ScreenUtil().statusBarHeight + 25.w * halfScrollPercent,
            left: 25.w,
            height: 94.w,
            width: 94.w,
            child: buildUserAvatarSection(result, halfScrollPercent),
          ),

          Positioned(
            top: topBarHeight + indicatorWeight + ScreenUtil().statusBarHeight,
            left: 140.w,
            right: 25.w,
            bottom: tabHeight + indicatorWeight,
            child: buildUserInfoSection(result, halfScrollPercent),
          ),

          /// light yellow background
          Positioned(
            left: 0,
            right: 0,
            height: tabHeight + 1,
            bottom: -1,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryLightYellow2,
              ),
            ),
          ),

          if (hasCollapsed)
            Positioned(
              top: ScreenUtil().statusBarHeight,
              right: 0,
              left: 0,
              height: topBarHeight + indicatorWeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50.w),
                  Text(
                    result.parsedData?.getUser?.email ?? "",
                    style: TextStyle(
                        color: kDeepBlue2,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 50.w,
                    child: Center(child: buildGratitudeIcon()),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget buildGratitudeIcon() {
    if (!widget.isOwner) {
      return GestureDetector(
        onTap: () {
          showToast('send gratitude');
        },
        child: SvgPicture.asset(
          'assets/svgs/give_gratitude_icon.svg',
          width: 26.w,
          height: 24.w,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget buildGratitudeIconWithText() {
    if (!widget.isOwner) {
      return GestureDetector(
        onTap: () {
          showToast('send gratitude');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/svgs/give_gratitude_icon.svg',
              width: 26.w,
              height: 24.w,
            ),
            SizedBox(
              height: 3.w,
            ),
            Text(
              "GIVE\nGRATITUDE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9.sp,
                color: kPrimaryBlack,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget buildUserAvatarSection(
    QueryResult<QueryGetUserWithId> result,
    double scrollPercent,
  ) {
    String avatar = result.parsedData?.getUser?.avatar ?? "";
    return Opacity(
      opacity: 1 - scrollPercent,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 3.w),
        ),
        child: avatar == ""
            ? Icon(
                Icons.person,
                color: Colors.grey,
                size: 50.w,
              )
            : Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: CachedNetworkImage(
                  fadeInDuration: const Duration(milliseconds: 200),
                  fadeOutDuration: const Duration(milliseconds: 200),
                  imageUrl: toCdnUrl(avatar),
                  placeholder: (context, url) {
                    return CircularProgressIndicator(
                      strokeWidth: 5.w,
                      valueColor: AlwaysStoppedAnimation<Color>(kPrimaryYellow),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  },
                ),
              ),
      ),
    );
  }

  Widget buildUserInfoSection(
    QueryResult<QueryGetUserWithId> result,
    double scrollPercent,
  ) {
    if (result.parsedData != null) {
      if (result.parsedData!.getUser != null) {
        QueryGetUserWithId$getUser data = result.parsedData!.getUser!;
        return Opacity(
          opacity: 1 - scrollPercent,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.w),
                SizedBox(
                  height: 29.w,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      data.name,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                        color: kPrimaryBlack,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.w,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      data.email,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: kDeepBlue2,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: expandedHeight -
                      topBarHeight -
                      tabHeight -
                      indicatorWeight -
                      88.w,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: IgnorePointer(
                          ignoring: true,
                          child: ReadMoreText(
                            data.bio ?? "",
                            trimLines: 3,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: kPrimaryBlack,
                              fontWeight: FontWeight.w300,
                            ),
                            colorClickableText: Colors.grey,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'read more >>',
                            delimiter: '... ',
                            moreStyle: TextStyle(
                              fontSize: 12.sp,
                              color: kDeepBlue2,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            showToast('bio clicked');
                          },
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.w,
                  child: Row(
                    children: [
                      Text(
                        "Message me on: ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: kPrimaryBlack,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: FaIcon(
                          FontAwesomeIcons.solidEnvelope,
                          size: 15.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 15.w,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.w),
              ],
            ),
          ),
        );
      } else {
        return Center(
          child: ElevatedButton(
              onPressed: () async {
                const FlutterSecureStorage storage = FlutterSecureStorage();
                await storage.delete(key: 'userId');
                Get.back();
              },
              child: const Text('Reset')),
        );
      }
    } else if (result.hasException) {
      return const Text("Network Error");
    } else {
      return const SizedBox();
    }
  }
}
