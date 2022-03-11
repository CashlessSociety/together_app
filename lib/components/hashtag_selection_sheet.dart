import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';

class HashtagSelectionSheet extends StatefulWidget {
  final int maxDisplayCount;
  final Stream<RegExpMatch?> hashtagSearchStream;
  final Function onTapHashtag;

  const HashtagSelectionSheet({
    Key? key,
    this.maxDisplayCount = 5,
    required this.hashtagSearchStream,
    required this.onTapHashtag,
  }) : super(key: key);

  @override
  State<HashtagSelectionSheet> createState() => _HashtagSelectionSheetState();
}

class _HashtagSelectionSheetState extends State<HashtagSelectionSheet> {
  double itemHeight = 60.w;
  FetchMore<QuerySearchTopRequestHashtag>? fetchMoreFunction;
  bool hasReceivedData = false;
  late StreamSubscription hashtagMatchStreamSubscription;
  GraphQLClient? gqlClient;
  late StreamController<List<QuerySearchTopRequestHashtag$queryHashtagMeta>>
      hashtagBuilderStreamController;
  late Stream<List<QuerySearchTopRequestHashtag$queryHashtagMeta>>
      hashtagBuilderStream;

  void onSearchHashtag(RegExpMatch match) async {
    String text = match.group(0)!.trim().replaceFirst("#", "").toLowerCase();
    var result = await gqlClient!.querySearchTopRequestHashtag(
      GQLOptionsQuerySearchTopRequestHashtag(
        fetchPolicy: FetchPolicy.noCache,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: VariablesQuerySearchTopRequestHashtag(
          keywordRegex: "/^$text.*/",
        ),
      ),
    );
    if (result.parsedData != null) {
      hashtagBuilderStreamController
          .add(result.parsedData!.queryHashtagMeta!.map((e) => e!).toList());
    }
  }

  Widget buildHashtagCard(
      QuerySearchTopRequestHashtag$queryHashtagMeta hashtagData) {
    return ListTile(
      dense: true,
      minVerticalPadding: 0,
      title: Text('#${hashtagData.metaName}'),
      subtitle: Text("${hashtagData.totalRequestCount ?? 0}"),
      onTap: () {},
    );
  }

  Widget buildHashtagList(
      List<QuerySearchTopRequestHashtag$queryHashtagMeta> dataList) {
    return SizedBox(
      height: dataList.length > widget.maxDisplayCount
          ? widget.maxDisplayCount * itemHeight
          : dataList.length * itemHeight,
      child: ListView.builder(
          itemExtent: itemHeight,
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return buildHashtagCard(dataList[index]);
          }),
    );
  }

  @override
  void initState() {
    hashtagBuilderStreamController = StreamController();
    hashtagBuilderStream =
        hashtagBuilderStreamController.stream.asBroadcastStream();

    hashtagMatchStreamSubscription = widget.hashtagSearchStream.listen((event) {
      print('event $event');
      if (event != null) {
        onSearchHashtag(event);
      } else {
        hashtagBuilderStreamController.add([]);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    hashtagMatchStreamSubscription.cancel();
    hashtagBuilderStreamController.close();
    super.dispose();
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
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8.w),
      clipBehavior: Clip.hardEdge,
      child: StreamBuilder(
          stream: hashtagBuilderStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return buildHashtagList(snapshot.data
                  as List<QuerySearchTopRequestHashtag$queryHashtagMeta>);
            } else {
              return const SizedBox();
            }
          }),
    );
  }
}
