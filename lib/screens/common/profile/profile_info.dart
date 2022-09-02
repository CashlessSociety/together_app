import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
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
  final double collapsedHeight = 100.w;
  final double expandedHeight = 300.w;
  final double indicatorWeight = 2.w;
  late double tabViewHeight;
  Function? refetchFunction;

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
    tabViewHeight = 1.sh -
        ScreenUtil().statusBarHeight -
        collapsedHeight -
        tabHeight -
        indicatorWeight;

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
                      double scrollSpace = expandedHeight -
                          collapsedHeight -
                          tabHeight -
                          indicatorWeight;
                      if (constraints.scrollOffset > scrollSpace) {
                        scrollPercent = 1.0;
                      } else {
                        scrollPercent = constraints.scrollOffset / scrollSpace;
                      }
                      return SliverAppBar(
                        collapsedHeight: collapsedHeight,
                        expandedHeight: expandedHeight,
                        pinned: true,
                        elevation: 0,
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
                          indicatorColor: kPrimaryOrange,
                          labelColor: kDeepBlue,
                          indicatorWeight: indicatorWeight,
                          unselectedLabelColor: kDeepBlue,
                          tabs: [
                            Tab(
                              text: "Gratitude",
                              height: tabHeight,
                            ),
                            Tab(
                              text: "Skills",
                              height: tabHeight,
                            ),
                            Tab(
                              text: "Requests",
                              height: tabHeight,
                            ),
                          ],
                        ),
                        flexibleSpace:
                            buildProfileSection(scrollPercent, result),
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
      double scrollPercent, QueryResult<QueryGetUserWithId> result) {
    return FlexibleSpaceBar(
      expandedTitleScale: 1,
      centerTitle: true,
      titlePadding: EdgeInsets.zero,
      title: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: tabHeight,
            child: Container(
              decoration: BoxDecoration(
                color: kWhiteTeal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular((1 - scrollPercent) * 40.w),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1.5.w, 2.w),
                    blurRadius: 2.w,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: tabHeight,
                  left: 30.w,
                  right: 30.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 100.w + (1 - scrollPercent) * 90.w,
                      child: Row(
                        children: [
                          SizedBox(width: 20.w),
                          Expanded(
                            flex: 7,
                            child: buildUserInfoSection(result),
                          ),
                          Expanded(
                            flex: 6,
                            child: buildUserAvatarSection(result),
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: (1 - scrollPercent) * 60.w,
                      child: Text(
                        result.parsedData?.getUser?.bio ?? "",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildUserAvatarSection(QueryResult<QueryGetUserWithId> result) {
    String avatar = result.parsedData?.getUser?.avatar ?? "";
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.w),
      child: FittedBox(
        alignment: Alignment.centerRight,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 0.5.w),
          ),
          child: avatar == ""
              ? const Icon(
                  Icons.person,
                  color: Colors.grey,
                )
              : CachedNetworkImage(
                  fadeInDuration: const Duration(milliseconds: 200),
                  fadeOutDuration: const Duration(milliseconds: 200),
                  imageUrl: toCdnUrl(avatar),
                  placeholder: (context, url) {
                    return CircularProgressIndicator(
                      strokeWidth: 2.w,
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

  Widget buildUserInfoSection(QueryResult<QueryGetUserWithId> result) {
    if (result.parsedData != null) {
      if (result.parsedData!.getUser != null) {
        QueryGetUserWithId$getUser data = result.parsedData!.getUser!;
        return Row(
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: TextStyle(fontSize: 20.sp, color: Colors.black87),
                  ),
                  Text(
                    data.email,
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
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
