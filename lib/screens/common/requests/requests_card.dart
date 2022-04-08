import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:together_app/graphql/query/query.graphql.dart';
import 'package:together_app/utils/constants.dart';
import 'package:together_app/graphql/schema/schema.graphql.dart';

class RequestCard extends StatefulWidget {
  final QueryGetRequestsPageData$getUser$requests requestData;
  final bool isLast;
  final bool isOwner;
  final void Function({
    required String requestId,
  }) onDelete;
  final void Function({
    required String requestId,
    required String requestTitle,
    required String requestMessage,
    required EnumRequestStatus status, // status
    required List<String> requestHashtagList,
  }) onUpdate;
  const RequestCard({
    Key? key,
    required this.requestData,
    required this.onDelete,
    required this.onUpdate,
    required this.isLast,
    required this.isOwner,
  }) : super(key: key);

  @override
  State<RequestCard> createState() => _RequestCardState();
}

class _RequestCardState extends State<RequestCard> {
  Widget buildRequestCardTop(QueryGetRequestsPageData$getUser$requests data) {
    String firstIcon = '';
    if (data.hashtagVariants.isNotEmpty) {
      String? firstHashtagName = hashTagRegExp
          .firstMatch(data.message!)
          ?.group(0)
          ?.trim()
          .replaceFirst("#", '');
      if (firstHashtagName != null) {
        var firstHashtagData = data.hashtagVariants.firstWhereOrNull(
            (element) => element!.hashtag.name == firstHashtagName);
        if (firstHashtagData != null) {
          firstIcon = firstHashtagData.hashtag.iconName ?? '';
        }
      }
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 13.w),
          child: SizedBox(
            height: 24.w,
            width: 24.w,
            child: FittedBox(
              child: firstIcon != ''
                  ? FaIcon(
                      faIconNameMapping[firstIcon],
                      color: kDeepBlue,
                    )
                  : const SizedBox(),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title!,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8.w),
              Wrap(
                spacing: 12.w,
                runSpacing: 6.w,
                children: List.generate(data.hashtagVariants.length, (index) {
                  String tag = data.hashtagVariants[index]!.hashtag.name;
                  return Text(
                    '#$tag',
                    style: TextStyle(
                      color: kPrimaryOrange,
                      fontSize: 12.w,
                      fontWeight: FontWeight.w700,
                    ),
                  );
                }),
              ),
              SizedBox(height: 8.w),
              ReadMoreText(
                data.message!,
                trimLines: 4,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.black87,
                ),
                colorClickableText: Colors.grey,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Show more',
                trimExpandedText: ' Show less',
                delimiter: '',
                moreStyle: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildOtherRequestCardBottom(
      QueryGetRequestsPageData$getUser$requests data) {
    EnumRequestStatus status = data.status; //status
    if (status == EnumRequestStatus.done) {
      return const SizedBox.shrink();
    } else {
      return Chip(
        visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
        label: Text(
          "NOT AVAILABLE",
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[500],
          ),
        ),
        backgroundColor: Colors.grey[300],
      );
    }
  }

  Widget buildOwnerRequestCardBottom(
      QueryGetRequestsPageData$getUser$requests data) {
    EnumRequestStatus status = data.status; // status
    List<String> requestHashtagList = [];
    if (data.hashtagVariants.isNotEmpty) {
      requestHashtagList =
          data.hashtagVariants.map((e) => e!.hashtag.name).toList();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //status drop down
        // RequestAvailableSwitch(
        //   requestId: data.id,
        //   isAvailable: isAvailable,
        //   onChanged: (value) {
        //     isAvailable = value;
        //   },
        // ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PopupMenuButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.more_horiz),
              onSelected: (RequestCardActions result) {
                if (result == RequestCardActions.edit) {
                  widget.onUpdate(
                    requestId: data.id,
                    requestTitle: data.title!,
                    requestMessage: data.message!,
                    status: status,
                    requestHashtagList: requestHashtagList,
                  );
                } else if (result == RequestCardActions.remove) {
                  widget.onDelete(requestId: data.id);
                }
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<RequestCardActions>>[
                PopupMenuItem<RequestCardActions>(
                  height: 40.w,
                  value: RequestCardActions.edit,
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 16.w,
                        color: kDeepBlue,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: kDeepBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem<RequestCardActions>(
                  height: 40.w,
                  value: RequestCardActions.remove,
                  child: Row(
                    children: [
                      Icon(
                        Icons.close,
                        size: 16.w,
                        color: Colors.red,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "Remove",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 0,
        right: 0,
        top: 5.w,
        bottom: 15.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
            child: buildRequestCardTop(widget.requestData),
          ),
          if (widget.isOwner)
            Padding(
              padding: EdgeInsets.only(left: 50.w, right: 15.w, bottom: 15.w),
              child: buildOwnerRequestCardBottom(widget.requestData),
            ),
          if (!widget.isOwner)
            Padding(
              padding: EdgeInsets.only(left: 50.w, bottom: 10.w),
              child: buildOtherRequestCardBottom(widget.requestData),
            ),
          if (!widget.isLast)
            Divider(
              height: 0,
              indent: 16.w,
              endIndent: 16.w,
              color: Colors.grey,
            )
        ],
      ),
    );
  }
}

enum RequestCardActions { edit, remove }
