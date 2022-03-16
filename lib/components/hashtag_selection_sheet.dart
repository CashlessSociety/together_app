import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';
import 'package:together_app/models/hashtag_key_match.dart';

class HashtagSelectionSheet extends StatefulWidget {
  final int maxDisplayCount;
  final Stream<HashtagKeyMatch?> hashtagSearchStream;
  final Function(
    int start,
    int end,
    String hashtag,
    String icon,
  ) onTapHashtag;

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
  GraphQLClient? gqlClient;
  double itemHeight = 60.w;
  HashtagKeyMatch? currentMatch;
  late StreamSubscription hashtagMatchStreamSubscription;
  late StreamController<List<QuerySearchTopRequestHashtag$queryHashtagMeta>>
      hashtagBuilderStreamController;
  late Stream<List<QuerySearchTopRequestHashtag$queryHashtagMeta>>
      hashtagBuilderStream;

  InputHashtagMetaOrder hashtagMetaOrder = InputHashtagMetaOrder(
    desc: EnumHashtagMetaOrderable.requestCountAllTime,
    then: InputHashtagMetaOrder(
      desc: EnumHashtagMetaOrderable.blessedInt,
      then: InputHashtagMetaOrder(
        asc: EnumHashtagMetaOrderable.metaName,
      ),
    ),
  );

  void onSearchHashtag(HashtagKeyMatch match) async {
    String text = match.keyword.toLowerCase();
    var result = await gqlClient!.querySearchTopRequestHashtag(
      GQLOptionsQuerySearchTopRequestHashtag(
        fetchPolicy: FetchPolicy.noCache,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: VariablesQuerySearchTopRequestHashtag(
          keywordRegex: "/^$text.*/",
          hashtagMetaOrder: hashtagMetaOrder,
        ),
      ),
    );
    if (result.parsedData != null &&
        currentMatch != null &&
        currentMatch!.keyword == match.keyword) {
      hashtagBuilderStreamController
          .add(result.parsedData!.queryHashtagMeta!.map((e) => e!).toList());
    }
  }

  Widget buildHashtagCard(
      QuerySearchTopRequestHashtag$queryHashtagMeta hashtagData) {
    // int counter = hashtagData.requestCountLast24h;
    // int counter = hashtagData.requestCountLast1w;
    int counter = hashtagData.requestCountAllTime ?? 0;
    String subtitleText =
        "$counter request${counter == 1 ? "s" : ""} of all time";
    return ListTile(
      dense: true,
      minVerticalPadding: 0,
      leading: SizedBox(
        width: 24.w,
        height: 24.w,
        child: FittedBox(
          child: hashtagData.iconName != null && hashtagData.iconName != ""
              ? FaIcon(
                  faIconNameMapping[hashtagData.iconName],
                )
              : const SizedBox(),
        ),
      ),
      title: Row(
        children: [
          Text(
            '#${hashtagData.metaName}',
            style: TextStyle(
                fontWeight: (hashtagData.blessed ?? false)
                    ? FontWeight.bold
                    : FontWeight.normal),
          ),
        ],
      ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(color: counter == 0 ? Colors.transparent : null),
      ),
      onTap: () {
        int start = currentMatch?.start ?? 0;
        int end = currentMatch?.end ?? 0;
        widget.onTapHashtag(
          start,
          end,
          hashtagData.metaName,
          hashtagData.iconName ?? '',
        );
      },
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
      if (event != null) {
        if (currentMatch == null) {
          currentMatch = event;
          onSearchHashtag(event);
        } else if (currentMatch!.keyword != event.keyword) {
          currentMatch = event;
          onSearchHashtag(event);
        }
      } else {
        if (currentMatch != null) {
          currentMatch = event;
          hashtagBuilderStreamController.add([]);
        }
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
              var data = snapshot.data
                  as List<QuerySearchTopRequestHashtag$queryHashtagMeta>;
              return buildHashtagList(data);
            } else {
              return const SizedBox.shrink();
            }
          }),
    );
  }
}
