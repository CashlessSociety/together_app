import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/screens/common/gratitude/gratitude_screen.dart';
import 'package:together_app/screens/common/requests/requests_screen.dart';
import 'package:together_app/screens/common/skills/skills_screen.dart';
import 'package:together_app/utils/constants.dart';

class MyProfileInfo extends StatefulWidget {
  final String userId;
  final int? focusedTab;
  const MyProfileInfo({Key? key, required this.userId, this.focusedTab})
      : super(key: key);

  @override
  State<MyProfileInfo> createState() => _MyProfileInfoState();
}

class _MyProfileInfoState extends State<MyProfileInfo>
    with TickerProviderStateMixin {
  late TabController tabController;
  late Map<String, Widget> tabViewMap;
  List<String> tabViewName = [
    GratitudeScreen.routeName,
    SkillsScreen.routeName,
    RequestsScreen.routeName
  ];
  ScrollController scrollController = ScrollController();
  final double tabHeight = 45.w;
  final double collapsedHeight = 100.w;
  final double expandedHeight = 240.w;
  final double indicatorWeight = 2.w;
  late double tabViewHeight;

  @override
  void initState() {
    tabViewHeight = 1.sh -
        ScreenUtil().statusBarHeight -
        collapsedHeight -
        tabHeight -
        indicatorWeight;

    tabViewMap = {
      GratitudeScreen.routeName: GratitudeScreen(userId: widget.userId),
      SkillsScreen.routeName: SkillsScreen(userId: widget.userId),
      RequestsScreen.routeName: RequestsScreen(userId: widget.userId),
    };

    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GQLFQueryGetUserWithId(
        options: GQLOptionsQueryGetUserWithId(
            variables: VariablesQueryGetUserWithId(id: widget.userId)),
        builder: ((result, {fetchMore, refetch}) {
          return DefaultTabController(
            length: 3,
            initialIndex: widget.focusedTab ?? 0,
            child: NestedScrollView(
              controller: scrollController,
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
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
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
                        flexibleSpace: FlexibleSpaceBar(
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
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.blueAccent
                                            .withOpacity(1 - scrollPercent),
                                        Colors.redAccent
                                            .withOpacity(1 - scrollPercent)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: SafeArea(
                                  bottom: false,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: tabHeight),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20.w),
                                        Expanded(
                                          flex: 4,
                                          child: buildUserAvatarSection(),
                                        ),
                                        SizedBox(width: scrollPercent * 20.w),
                                        Expanded(
                                          flex: 5,
                                          child: buildUserInfoSection(result),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ];
              },
              body: TabBarView(
                children: List.generate(tabViewName.length, (index) {
                  Widget tabWidget = tabViewMap[tabViewName[index]]!;
                  return Builder(builder: (context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(tabViewName[index]),
                      slivers: [
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverFixedExtentList(
                          itemExtent: tabViewHeight,
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return tabWidget;
                            },
                            childCount: 1,
                          ),
                        ),
                      ],
                    );
                  });
                }),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget buildUserAvatarSection() {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: const FittedBox(
          child: Icon(
            Icons.person,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget buildUserInfoSection(QueryResult<QueryGetUserWithId> result) {
    if (result.parsedData != null) {
      QueryGetUserWithId$getUser data = result.parsedData!.getUser!;
      return Row(
        children: [
          Column(
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
          IconButton(
            onPressed: () async {
              const FlutterSecureStorage storage = FlutterSecureStorage();
              await storage.delete(key: 'userId');
              Get.back();
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.grey,
            ),
          )
        ],
      );
    } else if (result.hasException) {
      return Center(
        child: ElevatedButton(
            onPressed: () async {
              const FlutterSecureStorage storage = FlutterSecureStorage();
              await storage.delete(key: 'userId');
              Get.back();
            },
            child: const Text('Reset')),
      );
    } else {
      return const SizedBox();
    }
  }
}
