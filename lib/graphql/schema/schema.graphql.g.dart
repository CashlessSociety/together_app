// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputIntRange _$InputIntRangeFromJson(Map<String, dynamic> json) =>
    InputIntRange(
      min: json['min'] as int,
      max: json['max'] as int,
    );

Map<String, dynamic> _$InputIntRangeToJson(InputIntRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputFloatRange _$InputFloatRangeFromJson(Map<String, dynamic> json) =>
    InputFloatRange(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
    );

Map<String, dynamic> _$InputFloatRangeToJson(InputFloatRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputInt64Range _$InputInt64RangeFromJson(Map<String, dynamic> json) =>
    InputInt64Range(
      min: json['min'] as String,
      max: json['max'] as String,
    );

Map<String, dynamic> _$InputInt64RangeToJson(InputInt64Range instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputDateTimeRange _$InputDateTimeRangeFromJson(Map<String, dynamic> json) =>
    InputDateTimeRange(
      min: json['min'] as String,
      max: json['max'] as String,
    );

Map<String, dynamic> _$InputDateTimeRangeToJson(InputDateTimeRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputStringRange _$InputStringRangeFromJson(Map<String, dynamic> json) =>
    InputStringRange(
      min: json['min'] as String,
      max: json['max'] as String,
    );

Map<String, dynamic> _$InputStringRangeToJson(InputStringRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputAuthRule _$InputAuthRuleFromJson(Map<String, dynamic> json) =>
    InputAuthRule(
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputAuthRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputAuthRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : InputAuthRule.fromJson(json['not'] as Map<String, dynamic>),
      rule: json['rule'] as String?,
    );

Map<String, dynamic> _$InputAuthRuleToJson(InputAuthRule instance) =>
    <String, dynamic>{
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
      'rule': instance.rule,
    };

InputCustomHTTP _$InputCustomHTTPFromJson(Map<String, dynamic> json) =>
    InputCustomHTTP(
      url: json['url'] as String,
      method: $enumDecode(_$EnumHTTPMethodEnumMap, json['method'],
          unknownValue: EnumHTTPMethod.$unknown),
      body: json['body'] as String?,
      graphql: json['graphql'] as String?,
      mode: $enumDecodeNullable(_$EnumModeEnumMap, json['mode'],
          unknownValue: EnumMode.$unknown),
      forwardHeaders: (json['forwardHeaders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      secretHeaders: (json['secretHeaders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      introspectionHeaders: (json['introspectionHeaders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      skipIntrospection: json['skipIntrospection'] as bool?,
    );

Map<String, dynamic> _$InputCustomHTTPToJson(InputCustomHTTP instance) =>
    <String, dynamic>{
      'url': instance.url,
      'method': _$EnumHTTPMethodEnumMap[instance.method],
      'body': instance.body,
      'graphql': instance.graphql,
      'mode': _$EnumModeEnumMap[instance.mode],
      'forwardHeaders': instance.forwardHeaders,
      'secretHeaders': instance.secretHeaders,
      'introspectionHeaders': instance.introspectionHeaders,
      'skipIntrospection': instance.skipIntrospection,
    };

const _$EnumHTTPMethodEnumMap = {
  EnumHTTPMethod.$get: 'GET',
  EnumHTTPMethod.post: 'POST',
  EnumHTTPMethod.put: 'PUT',
  EnumHTTPMethod.patch: 'PATCH',
  EnumHTTPMethod.delete: 'DELETE',
  EnumHTTPMethod.$unknown: r'$unknown',
};

const _$EnumModeEnumMap = {
  EnumMode.batch: 'BATCH',
  EnumMode.single: 'SINGLE',
  EnumMode.$unknown: r'$unknown',
};

InputPointRef _$InputPointRefFromJson(Map<String, dynamic> json) =>
    InputPointRef(
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$InputPointRefToJson(InputPointRef instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

InputNearFilter _$InputNearFilterFromJson(Map<String, dynamic> json) =>
    InputNearFilter(
      distance: (json['distance'] as num).toDouble(),
      coordinate:
          InputPointRef.fromJson(json['coordinate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputNearFilterToJson(InputNearFilter instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'coordinate': instance.coordinate,
    };

InputPointGeoFilter _$InputPointGeoFilterFromJson(Map<String, dynamic> json) =>
    InputPointGeoFilter(
      near: json['near'] == null
          ? null
          : InputNearFilter.fromJson(json['near'] as Map<String, dynamic>),
      within: json['within'] == null
          ? null
          : InputWithinFilter.fromJson(json['within'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputPointGeoFilterToJson(
        InputPointGeoFilter instance) =>
    <String, dynamic>{
      'near': instance.near,
      'within': instance.within,
    };

InputPointListRef _$InputPointListRefFromJson(Map<String, dynamic> json) =>
    InputPointListRef(
      points: (json['points'] as List<dynamic>)
          .map((e) => InputPointRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputPointListRefToJson(InputPointListRef instance) =>
    <String, dynamic>{
      'points': instance.points,
    };

InputPolygonRef _$InputPolygonRefFromJson(Map<String, dynamic> json) =>
    InputPolygonRef(
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => InputPointListRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputPolygonRefToJson(InputPolygonRef instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
    };

InputMultiPolygonRef _$InputMultiPolygonRefFromJson(
        Map<String, dynamic> json) =>
    InputMultiPolygonRef(
      polygons: (json['polygons'] as List<dynamic>)
          .map((e) => InputPolygonRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputMultiPolygonRefToJson(
        InputMultiPolygonRef instance) =>
    <String, dynamic>{
      'polygons': instance.polygons,
    };

InputWithinFilter _$InputWithinFilterFromJson(Map<String, dynamic> json) =>
    InputWithinFilter(
      polygon:
          InputPolygonRef.fromJson(json['polygon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputWithinFilterToJson(InputWithinFilter instance) =>
    <String, dynamic>{
      'polygon': instance.polygon,
    };

InputContainsFilter _$InputContainsFilterFromJson(Map<String, dynamic> json) =>
    InputContainsFilter(
      point: json['point'] == null
          ? null
          : InputPointRef.fromJson(json['point'] as Map<String, dynamic>),
      polygon: json['polygon'] == null
          ? null
          : InputPolygonRef.fromJson(json['polygon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputContainsFilterToJson(
        InputContainsFilter instance) =>
    <String, dynamic>{
      'point': instance.point,
      'polygon': instance.polygon,
    };

InputIntersectsFilter _$InputIntersectsFilterFromJson(
        Map<String, dynamic> json) =>
    InputIntersectsFilter(
      polygon: json['polygon'] == null
          ? null
          : InputPolygonRef.fromJson(json['polygon'] as Map<String, dynamic>),
      multiPolygon: json['multiPolygon'] == null
          ? null
          : InputMultiPolygonRef.fromJson(
              json['multiPolygon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputIntersectsFilterToJson(
        InputIntersectsFilter instance) =>
    <String, dynamic>{
      'polygon': instance.polygon,
      'multiPolygon': instance.multiPolygon,
    };

InputPolygonGeoFilter _$InputPolygonGeoFilterFromJson(
        Map<String, dynamic> json) =>
    InputPolygonGeoFilter(
      near: json['near'] == null
          ? null
          : InputNearFilter.fromJson(json['near'] as Map<String, dynamic>),
      within: json['within'] == null
          ? null
          : InputWithinFilter.fromJson(json['within'] as Map<String, dynamic>),
      contains: json['contains'] == null
          ? null
          : InputContainsFilter.fromJson(
              json['contains'] as Map<String, dynamic>),
      intersects: json['intersects'] == null
          ? null
          : InputIntersectsFilter.fromJson(
              json['intersects'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputPolygonGeoFilterToJson(
        InputPolygonGeoFilter instance) =>
    <String, dynamic>{
      'near': instance.near,
      'within': instance.within,
      'contains': instance.contains,
      'intersects': instance.intersects,
    };

InputGenerateQueryParams _$InputGenerateQueryParamsFromJson(
        Map<String, dynamic> json) =>
    InputGenerateQueryParams(
      $get: json['get'] as bool?,
      query: json['query'] as bool?,
      password: json['password'] as bool?,
      aggregate: json['aggregate'] as bool?,
    );

Map<String, dynamic> _$InputGenerateQueryParamsToJson(
        InputGenerateQueryParams instance) =>
    <String, dynamic>{
      'get': instance.$get,
      'query': instance.query,
      'password': instance.password,
      'aggregate': instance.aggregate,
    };

InputGenerateMutationParams _$InputGenerateMutationParamsFromJson(
        Map<String, dynamic> json) =>
    InputGenerateMutationParams(
      add: json['add'] as bool?,
      update: json['update'] as bool?,
      delete: json['delete'] as bool?,
    );

Map<String, dynamic> _$InputGenerateMutationParamsToJson(
        InputGenerateMutationParams instance) =>
    <String, dynamic>{
      'add': instance.add,
      'update': instance.update,
      'delete': instance.delete,
    };

InputIntFilter _$InputIntFilterFromJson(Map<String, dynamic> json) =>
    InputIntFilter(
      eq: json['eq'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int?).toList(),
      le: json['le'] as int?,
      lt: json['lt'] as int?,
      ge: json['ge'] as int?,
      gt: json['gt'] as int?,
      between: json['between'] == null
          ? null
          : InputIntRange.fromJson(json['between'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputIntFilterToJson(InputIntFilter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
      'le': instance.le,
      'lt': instance.lt,
      'ge': instance.ge,
      'gt': instance.gt,
      'between': instance.between,
    };

InputInt64Filter _$InputInt64FilterFromJson(Map<String, dynamic> json) =>
    InputInt64Filter(
      eq: json['eq'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      le: json['le'] as String?,
      lt: json['lt'] as String?,
      ge: json['ge'] as String?,
      gt: json['gt'] as String?,
      between: json['between'] == null
          ? null
          : InputInt64Range.fromJson(json['between'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputInt64FilterToJson(InputInt64Filter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
      'le': instance.le,
      'lt': instance.lt,
      'ge': instance.ge,
      'gt': instance.gt,
      'between': instance.between,
    };

InputFloatFilter _$InputFloatFilterFromJson(Map<String, dynamic> json) =>
    InputFloatFilter(
      eq: (json['eq'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList(),
      le: (json['le'] as num?)?.toDouble(),
      lt: (json['lt'] as num?)?.toDouble(),
      ge: (json['ge'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      between: json['between'] == null
          ? null
          : InputFloatRange.fromJson(json['between'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputFloatFilterToJson(InputFloatFilter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
      'le': instance.le,
      'lt': instance.lt,
      'ge': instance.ge,
      'gt': instance.gt,
      'between': instance.between,
    };

InputDateTimeFilter _$InputDateTimeFilterFromJson(Map<String, dynamic> json) =>
    InputDateTimeFilter(
      eq: json['eq'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      le: json['le'] as String?,
      lt: json['lt'] as String?,
      ge: json['ge'] as String?,
      gt: json['gt'] as String?,
      between: json['between'] == null
          ? null
          : InputDateTimeRange.fromJson(
              json['between'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputDateTimeFilterToJson(
        InputDateTimeFilter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
      'le': instance.le,
      'lt': instance.lt,
      'ge': instance.ge,
      'gt': instance.gt,
      'between': instance.between,
    };

InputStringTermFilter _$InputStringTermFilterFromJson(
        Map<String, dynamic> json) =>
    InputStringTermFilter(
      allofterms: json['allofterms'] as String?,
      anyofterms: json['anyofterms'] as String?,
    );

Map<String, dynamic> _$InputStringTermFilterToJson(
        InputStringTermFilter instance) =>
    <String, dynamic>{
      'allofterms': instance.allofterms,
      'anyofterms': instance.anyofterms,
    };

InputStringRegExpFilter _$InputStringRegExpFilterFromJson(
        Map<String, dynamic> json) =>
    InputStringRegExpFilter(
      regexp: json['regexp'] as String?,
    );

Map<String, dynamic> _$InputStringRegExpFilterToJson(
        InputStringRegExpFilter instance) =>
    <String, dynamic>{
      'regexp': instance.regexp,
    };

InputStringFullTextFilter _$InputStringFullTextFilterFromJson(
        Map<String, dynamic> json) =>
    InputStringFullTextFilter(
      alloftext: json['alloftext'] as String?,
      anyoftext: json['anyoftext'] as String?,
    );

Map<String, dynamic> _$InputStringFullTextFilterToJson(
        InputStringFullTextFilter instance) =>
    <String, dynamic>{
      'alloftext': instance.alloftext,
      'anyoftext': instance.anyoftext,
    };

InputStringExactFilter _$InputStringExactFilterFromJson(
        Map<String, dynamic> json) =>
    InputStringExactFilter(
      eq: json['eq'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      le: json['le'] as String?,
      lt: json['lt'] as String?,
      ge: json['ge'] as String?,
      gt: json['gt'] as String?,
      between: json['between'] == null
          ? null
          : InputStringRange.fromJson(json['between'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputStringExactFilterToJson(
        InputStringExactFilter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
      'le': instance.le,
      'lt': instance.lt,
      'ge': instance.ge,
      'gt': instance.gt,
      'between': instance.between,
    };

InputStringHashFilter _$InputStringHashFilterFromJson(
        Map<String, dynamic> json) =>
    InputStringHashFilter(
      eq: json['eq'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$InputStringHashFilterToJson(
        InputStringHashFilter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
    };

InputAddGratitudeInput _$InputAddGratitudeInputFromJson(
        Map<String, dynamic> json) =>
    InputAddGratitudeInput(
      from: InputUserRef.fromJson(json['from'] as Map<String, dynamic>),
      to: InputUserRef.fromJson(json['to'] as Map<String, dynamic>),
      message: json['message'] as String?,
      isTest: json['isTest'] as bool?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputAddGratitudeInputToJson(
        InputAddGratitudeInput instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'message': instance.message,
      'isTest': instance.isTest,
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputAddHashtagInput _$InputAddHashtagInputFromJson(
        Map<String, dynamic> json) =>
    InputAddHashtagInput(
      name: json['name'] as String,
      iconName: json['iconName'] as String?,
      blessed: json['blessed'] as bool?,
      blessedInt: json['blessedInt'] as int?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      skillCountAllTime: json['skillCountAllTime'] as int?,
      requestCountAllTime: json['requestCountAllTime'] as int?,
      skillCountLast24h: json['skillCountLast24h'] as int?,
      requestCountLast24h: json['requestCountLast24h'] as int?,
      skillCountLast1w: json['skillCountLast1w'] as int?,
      requestCountLast1w: json['requestCountLast1w'] as int?,
    );

Map<String, dynamic> _$InputAddHashtagInputToJson(
        InputAddHashtagInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'blessedInt': instance.blessedInt,
      'hashtagVariants': instance.hashtagVariants,
      'skillCountAllTime': instance.skillCountAllTime,
      'requestCountAllTime': instance.requestCountAllTime,
      'skillCountLast24h': instance.skillCountLast24h,
      'requestCountLast24h': instance.requestCountLast24h,
      'skillCountLast1w': instance.skillCountLast1w,
      'requestCountLast1w': instance.requestCountLast1w,
    };

InputAddHashtagVariantInput _$InputAddHashtagVariantInputFromJson(
        Map<String, dynamic> json) =>
    InputAddHashtagVariantInput(
      variant: json['variant'] as String,
      hashtag:
          InputHashtagRef.fromJson(json['hashtag'] as Map<String, dynamic>),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudes: (json['gratitudes'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputAddHashtagVariantInputToJson(
        InputAddHashtagVariantInput instance) =>
    <String, dynamic>{
      'variant': instance.variant,
      'hashtag': instance.hashtag,
      'skills': instance.skills,
      'requests': instance.requests,
      'gratitudes': instance.gratitudes,
    };

InputAddRequestInput _$InputAddRequestInputFromJson(
        Map<String, dynamic> json) =>
    InputAddRequestInput(
      owner: InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
      title: json['title'] as String,
      message: json['message'] as String,
      status: $enumDecode(_$EnumRequestStatusEnumMap, json['status'],
          unknownValue: EnumRequestStatus.$unknown),
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputAddRequestInputToJson(
        InputAddRequestInput instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'status': _$EnumRequestStatusEnumMap[instance.status],
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

const _$EnumRequestStatusEnumMap = {
  EnumRequestStatus.open: 'OPEN',
  EnumRequestStatus.tentative: 'TENTATIVE',
  EnumRequestStatus.filled: 'FILLED',
  EnumRequestStatus.done: 'DONE',
  EnumRequestStatus.$unknown: r'$unknown',
};

InputAddSkillInput _$InputAddSkillInputFromJson(Map<String, dynamic> json) =>
    InputAddSkillInput(
      owner: InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
      title: json['title'] as String?,
      message: json['message'] as String?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAvailable: json['isAvailable'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputAddSkillInputToJson(InputAddSkillInput instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'isAvailable': instance.isAvailable,
      'createdTimestamp': instance.createdTimestamp,
    };

InputAddUserInput _$InputAddUserInputFromJson(Map<String, dynamic> json) =>
    InputAddUserInput(
      email: json['email'] as String,
      name: json['name'] as String,
      age: json['age'] as int?,
      bio: json['bio'] as String?,
      avatar: json['avatar'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      isTest: json['isTest'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudeSent: (json['gratitudeSent'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudeReceived: (json['gratitudeReceived'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputAddUserInputToJson(InputAddUserInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'bio': instance.bio,
      'avatar': instance.avatar,
      'isAdmin': instance.isAdmin,
      'isTest': instance.isTest,
      'createdTimestamp': instance.createdTimestamp,
      'requests': instance.requests,
      'skills': instance.skills,
      'gratitudeSent': instance.gratitudeSent,
      'gratitudeReceived': instance.gratitudeReceived,
    };

InputGratitudeFilter _$InputGratitudeFilterFromJson(
        Map<String, dynamic> json) =>
    InputGratitudeFilter(
      id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isTest: json['isTest'] as bool?,
      has: (json['has'] as List<dynamic>?)
          ?.map((e) => $enumDecodeNullable(_$EnumGratitudeHasFilterEnumMap, e,
              unknownValue: EnumGratitudeHasFilter.$unknown))
          .toList(),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : InputGratitudeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputGratitudeFilterToJson(
        InputGratitudeFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isTest': instance.isTest,
      'has':
          instance.has?.map((e) => _$EnumGratitudeHasFilterEnumMap[e]).toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumGratitudeHasFilterEnumMap = {
  EnumGratitudeHasFilter.from: 'from',
  EnumGratitudeHasFilter.to: 'to',
  EnumGratitudeHasFilter.message: 'message',
  EnumGratitudeHasFilter.isTest: 'isTest',
  EnumGratitudeHasFilter.hashtagVariants: 'hashtagVariants',
  EnumGratitudeHasFilter.createdTimestamp: 'createdTimestamp',
  EnumGratitudeHasFilter.$unknown: r'$unknown',
};

InputGratitudeOrder _$InputGratitudeOrderFromJson(Map<String, dynamic> json) =>
    InputGratitudeOrder(
      asc: $enumDecodeNullable(_$EnumGratitudeOrderableEnumMap, json['asc'],
          unknownValue: EnumGratitudeOrderable.$unknown),
      desc: $enumDecodeNullable(_$EnumGratitudeOrderableEnumMap, json['desc'],
          unknownValue: EnumGratitudeOrderable.$unknown),
      then: json['then'] == null
          ? null
          : InputGratitudeOrder.fromJson(json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputGratitudeOrderToJson(
        InputGratitudeOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumGratitudeOrderableEnumMap[instance.asc],
      'desc': _$EnumGratitudeOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumGratitudeOrderableEnumMap = {
  EnumGratitudeOrderable.message: 'message',
  EnumGratitudeOrderable.createdTimestamp: 'createdTimestamp',
  EnumGratitudeOrderable.$unknown: r'$unknown',
};

InputGratitudePatch _$InputGratitudePatchFromJson(Map<String, dynamic> json) =>
    InputGratitudePatch(
      from: json['from'] == null
          ? null
          : InputUserRef.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : InputUserRef.fromJson(json['to'] as Map<String, dynamic>),
      message: json['message'] as String?,
      isTest: json['isTest'] as bool?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputGratitudePatchToJson(
        InputGratitudePatch instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'message': instance.message,
      'isTest': instance.isTest,
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputGratitudeRef _$InputGratitudeRefFromJson(Map<String, dynamic> json) =>
    InputGratitudeRef(
      id: json['id'] as String?,
      from: json['from'] == null
          ? null
          : InputUserRef.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : InputUserRef.fromJson(json['to'] as Map<String, dynamic>),
      message: json['message'] as String?,
      isTest: json['isTest'] as bool?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputGratitudeRefToJson(InputGratitudeRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'message': instance.message,
      'isTest': instance.isTest,
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputHashtagFilter _$InputHashtagFilterFromJson(Map<String, dynamic> json) =>
    InputHashtagFilter(
      id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] == null
          ? null
          : InputStringExactFilterStringRegExpFilter.fromJson(
              json['name'] as Map<String, dynamic>),
      blessed: json['blessed'] as bool?,
      has: (json['has'] as List<dynamic>?)
          ?.map((e) => $enumDecodeNullable(_$EnumHashtagHasFilterEnumMap, e,
              unknownValue: EnumHashtagHasFilter.$unknown))
          .toList(),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : InputHashtagFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputHashtagFilterToJson(InputHashtagFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'blessed': instance.blessed,
      'has':
          instance.has?.map((e) => _$EnumHashtagHasFilterEnumMap[e]).toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumHashtagHasFilterEnumMap = {
  EnumHashtagHasFilter.name: 'name',
  EnumHashtagHasFilter.iconName: 'iconName',
  EnumHashtagHasFilter.blessed: 'blessed',
  EnumHashtagHasFilter.blessedInt: 'blessedInt',
  EnumHashtagHasFilter.hashtagVariants: 'hashtagVariants',
  EnumHashtagHasFilter.skillCountAllTime: 'skillCountAllTime',
  EnumHashtagHasFilter.requestCountAllTime: 'requestCountAllTime',
  EnumHashtagHasFilter.skillCountLast24h: 'skillCountLast24h',
  EnumHashtagHasFilter.requestCountLast24h: 'requestCountLast24h',
  EnumHashtagHasFilter.skillCountLast1w: 'skillCountLast1w',
  EnumHashtagHasFilter.requestCountLast1w: 'requestCountLast1w',
  EnumHashtagHasFilter.$unknown: r'$unknown',
};

InputHashtagOrder _$InputHashtagOrderFromJson(Map<String, dynamic> json) =>
    InputHashtagOrder(
      asc: $enumDecodeNullable(_$EnumHashtagOrderableEnumMap, json['asc'],
          unknownValue: EnumHashtagOrderable.$unknown),
      desc: $enumDecodeNullable(_$EnumHashtagOrderableEnumMap, json['desc'],
          unknownValue: EnumHashtagOrderable.$unknown),
      then: json['then'] == null
          ? null
          : InputHashtagOrder.fromJson(json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputHashtagOrderToJson(InputHashtagOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumHashtagOrderableEnumMap[instance.asc],
      'desc': _$EnumHashtagOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumHashtagOrderableEnumMap = {
  EnumHashtagOrderable.name: 'name',
  EnumHashtagOrderable.iconName: 'iconName',
  EnumHashtagOrderable.blessedInt: 'blessedInt',
  EnumHashtagOrderable.skillCountAllTime: 'skillCountAllTime',
  EnumHashtagOrderable.requestCountAllTime: 'requestCountAllTime',
  EnumHashtagOrderable.skillCountLast24h: 'skillCountLast24h',
  EnumHashtagOrderable.requestCountLast24h: 'requestCountLast24h',
  EnumHashtagOrderable.skillCountLast1w: 'skillCountLast1w',
  EnumHashtagOrderable.requestCountLast1w: 'requestCountLast1w',
  EnumHashtagOrderable.$unknown: r'$unknown',
};

InputHashtagPatch _$InputHashtagPatchFromJson(Map<String, dynamic> json) =>
    InputHashtagPatch(
      iconName: json['iconName'] as String?,
      blessed: json['blessed'] as bool?,
      blessedInt: json['blessedInt'] as int?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      skillCountAllTime: json['skillCountAllTime'] as int?,
      requestCountAllTime: json['requestCountAllTime'] as int?,
      skillCountLast24h: json['skillCountLast24h'] as int?,
      requestCountLast24h: json['requestCountLast24h'] as int?,
      skillCountLast1w: json['skillCountLast1w'] as int?,
      requestCountLast1w: json['requestCountLast1w'] as int?,
    );

Map<String, dynamic> _$InputHashtagPatchToJson(InputHashtagPatch instance) =>
    <String, dynamic>{
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'blessedInt': instance.blessedInt,
      'hashtagVariants': instance.hashtagVariants,
      'skillCountAllTime': instance.skillCountAllTime,
      'requestCountAllTime': instance.requestCountAllTime,
      'skillCountLast24h': instance.skillCountLast24h,
      'requestCountLast24h': instance.requestCountLast24h,
      'skillCountLast1w': instance.skillCountLast1w,
      'requestCountLast1w': instance.requestCountLast1w,
    };

InputHashtagRef _$InputHashtagRefFromJson(Map<String, dynamic> json) =>
    InputHashtagRef(
      id: json['id'] as String?,
      name: json['name'] as String?,
      iconName: json['iconName'] as String?,
      blessed: json['blessed'] as bool?,
      blessedInt: json['blessedInt'] as int?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      skillCountAllTime: json['skillCountAllTime'] as int?,
      requestCountAllTime: json['requestCountAllTime'] as int?,
      skillCountLast24h: json['skillCountLast24h'] as int?,
      requestCountLast24h: json['requestCountLast24h'] as int?,
      skillCountLast1w: json['skillCountLast1w'] as int?,
      requestCountLast1w: json['requestCountLast1w'] as int?,
    );

Map<String, dynamic> _$InputHashtagRefToJson(InputHashtagRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'blessedInt': instance.blessedInt,
      'hashtagVariants': instance.hashtagVariants,
      'skillCountAllTime': instance.skillCountAllTime,
      'requestCountAllTime': instance.requestCountAllTime,
      'skillCountLast24h': instance.skillCountLast24h,
      'requestCountLast24h': instance.requestCountLast24h,
      'skillCountLast1w': instance.skillCountLast1w,
      'requestCountLast1w': instance.requestCountLast1w,
    };

InputHashtagVariantFilter _$InputHashtagVariantFilterFromJson(
        Map<String, dynamic> json) =>
    InputHashtagVariantFilter(
      id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      variant: json['variant'] == null
          ? null
          : InputStringExactFilterStringRegExpFilter.fromJson(
              json['variant'] as Map<String, dynamic>),
      has: (json['has'] as List<dynamic>?)
          ?.map((e) => $enumDecodeNullable(
              _$EnumHashtagVariantHasFilterEnumMap, e,
              unknownValue: EnumHashtagVariantHasFilter.$unknown))
          .toList(),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : InputHashtagVariantFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputHashtagVariantFilterToJson(
        InputHashtagVariantFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant': instance.variant,
      'has': instance.has
          ?.map((e) => _$EnumHashtagVariantHasFilterEnumMap[e])
          .toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumHashtagVariantHasFilterEnumMap = {
  EnumHashtagVariantHasFilter.variant: 'variant',
  EnumHashtagVariantHasFilter.hashtag: 'hashtag',
  EnumHashtagVariantHasFilter.skills: 'skills',
  EnumHashtagVariantHasFilter.requests: 'requests',
  EnumHashtagVariantHasFilter.gratitudes: 'gratitudes',
  EnumHashtagVariantHasFilter.$unknown: r'$unknown',
};

InputHashtagVariantOrder _$InputHashtagVariantOrderFromJson(
        Map<String, dynamic> json) =>
    InputHashtagVariantOrder(
      asc: $enumDecodeNullable(
          _$EnumHashtagVariantOrderableEnumMap, json['asc'],
          unknownValue: EnumHashtagVariantOrderable.$unknown),
      desc: $enumDecodeNullable(
          _$EnumHashtagVariantOrderableEnumMap, json['desc'],
          unknownValue: EnumHashtagVariantOrderable.$unknown),
      then: json['then'] == null
          ? null
          : InputHashtagVariantOrder.fromJson(
              json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputHashtagVariantOrderToJson(
        InputHashtagVariantOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumHashtagVariantOrderableEnumMap[instance.asc],
      'desc': _$EnumHashtagVariantOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumHashtagVariantOrderableEnumMap = {
  EnumHashtagVariantOrderable.variant: 'variant',
  EnumHashtagVariantOrderable.$unknown: r'$unknown',
};

InputHashtagVariantPatch _$InputHashtagVariantPatchFromJson(
        Map<String, dynamic> json) =>
    InputHashtagVariantPatch(
      hashtag: json['hashtag'] == null
          ? null
          : InputHashtagRef.fromJson(json['hashtag'] as Map<String, dynamic>),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudes: (json['gratitudes'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputHashtagVariantPatchToJson(
        InputHashtagVariantPatch instance) =>
    <String, dynamic>{
      'hashtag': instance.hashtag,
      'skills': instance.skills,
      'requests': instance.requests,
      'gratitudes': instance.gratitudes,
    };

InputHashtagVariantRef _$InputHashtagVariantRefFromJson(
        Map<String, dynamic> json) =>
    InputHashtagVariantRef(
      id: json['id'] as String?,
      variant: json['variant'] as String?,
      hashtag: json['hashtag'] == null
          ? null
          : InputHashtagRef.fromJson(json['hashtag'] as Map<String, dynamic>),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudes: (json['gratitudes'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputHashtagVariantRefToJson(
        InputHashtagVariantRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant': instance.variant,
      'hashtag': instance.hashtag,
      'skills': instance.skills,
      'requests': instance.requests,
      'gratitudes': instance.gratitudes,
    };

InputRequestFilter _$InputRequestFilterFromJson(Map<String, dynamic> json) =>
    InputRequestFilter(
      id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      title: json['title'] == null
          ? null
          : InputStringTermFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : InputStringTermFilter.fromJson(
              json['message'] as Map<String, dynamic>),
      has: (json['has'] as List<dynamic>?)
          ?.map((e) => $enumDecodeNullable(_$EnumRequestHasFilterEnumMap, e,
              unknownValue: EnumRequestHasFilter.$unknown))
          .toList(),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : InputRequestFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputRequestFilterToJson(InputRequestFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'has':
          instance.has?.map((e) => _$EnumRequestHasFilterEnumMap[e]).toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumRequestHasFilterEnumMap = {
  EnumRequestHasFilter.owner: 'owner',
  EnumRequestHasFilter.title: 'title',
  EnumRequestHasFilter.message: 'message',
  EnumRequestHasFilter.status: 'status',
  EnumRequestHasFilter.hashtagVariants: 'hashtagVariants',
  EnumRequestHasFilter.createdTimestamp: 'createdTimestamp',
  EnumRequestHasFilter.$unknown: r'$unknown',
};

InputRequestOrder _$InputRequestOrderFromJson(Map<String, dynamic> json) =>
    InputRequestOrder(
      asc: $enumDecodeNullable(_$EnumRequestOrderableEnumMap, json['asc'],
          unknownValue: EnumRequestOrderable.$unknown),
      desc: $enumDecodeNullable(_$EnumRequestOrderableEnumMap, json['desc'],
          unknownValue: EnumRequestOrderable.$unknown),
      then: json['then'] == null
          ? null
          : InputRequestOrder.fromJson(json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputRequestOrderToJson(InputRequestOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumRequestOrderableEnumMap[instance.asc],
      'desc': _$EnumRequestOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumRequestOrderableEnumMap = {
  EnumRequestOrderable.title: 'title',
  EnumRequestOrderable.message: 'message',
  EnumRequestOrderable.createdTimestamp: 'createdTimestamp',
  EnumRequestOrderable.$unknown: r'$unknown',
};

InputRequestPatch _$InputRequestPatchFromJson(Map<String, dynamic> json) =>
    InputRequestPatch(
      owner: json['owner'] == null
          ? null
          : InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
      title: json['title'] as String?,
      message: json['message'] as String?,
      status: $enumDecodeNullable(_$EnumRequestStatusEnumMap, json['status'],
          unknownValue: EnumRequestStatus.$unknown),
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputRequestPatchToJson(InputRequestPatch instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'status': _$EnumRequestStatusEnumMap[instance.status],
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputRequestRef _$InputRequestRefFromJson(Map<String, dynamic> json) =>
    InputRequestRef(
      id: json['id'] as String?,
      owner: json['owner'] == null
          ? null
          : InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
      title: json['title'] as String?,
      message: json['message'] as String?,
      status: $enumDecodeNullable(_$EnumRequestStatusEnumMap, json['status'],
          unknownValue: EnumRequestStatus.$unknown),
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputRequestRefToJson(InputRequestRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'status': _$EnumRequestStatusEnumMap[instance.status],
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputSkillFilter _$InputSkillFilterFromJson(Map<String, dynamic> json) =>
    InputSkillFilter(
      id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      has: (json['has'] as List<dynamic>?)
          ?.map((e) => $enumDecodeNullable(_$EnumSkillHasFilterEnumMap, e,
              unknownValue: EnumSkillHasFilter.$unknown))
          .toList(),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : InputSkillFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputSkillFilterToJson(InputSkillFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'has': instance.has?.map((e) => _$EnumSkillHasFilterEnumMap[e]).toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumSkillHasFilterEnumMap = {
  EnumSkillHasFilter.owner: 'owner',
  EnumSkillHasFilter.title: 'title',
  EnumSkillHasFilter.message: 'message',
  EnumSkillHasFilter.hashtagVariants: 'hashtagVariants',
  EnumSkillHasFilter.isAvailable: 'isAvailable',
  EnumSkillHasFilter.createdTimestamp: 'createdTimestamp',
  EnumSkillHasFilter.$unknown: r'$unknown',
};

InputSkillOrder _$InputSkillOrderFromJson(Map<String, dynamic> json) =>
    InputSkillOrder(
      asc: $enumDecodeNullable(_$EnumSkillOrderableEnumMap, json['asc'],
          unknownValue: EnumSkillOrderable.$unknown),
      desc: $enumDecodeNullable(_$EnumSkillOrderableEnumMap, json['desc'],
          unknownValue: EnumSkillOrderable.$unknown),
      then: json['then'] == null
          ? null
          : InputSkillOrder.fromJson(json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputSkillOrderToJson(InputSkillOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumSkillOrderableEnumMap[instance.asc],
      'desc': _$EnumSkillOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumSkillOrderableEnumMap = {
  EnumSkillOrderable.title: 'title',
  EnumSkillOrderable.message: 'message',
  EnumSkillOrderable.createdTimestamp: 'createdTimestamp',
  EnumSkillOrderable.$unknown: r'$unknown',
};

InputSkillPatch _$InputSkillPatchFromJson(Map<String, dynamic> json) =>
    InputSkillPatch(
      owner: json['owner'] == null
          ? null
          : InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
      title: json['title'] as String?,
      message: json['message'] as String?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAvailable: json['isAvailable'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputSkillPatchToJson(InputSkillPatch instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'isAvailable': instance.isAvailable,
      'createdTimestamp': instance.createdTimestamp,
    };

InputSkillRef _$InputSkillRefFromJson(Map<String, dynamic> json) =>
    InputSkillRef(
      id: json['id'] as String?,
      owner: json['owner'] == null
          ? null
          : InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
      title: json['title'] as String?,
      message: json['message'] as String?,
      hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAvailable: json['isAvailable'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
    );

Map<String, dynamic> _$InputSkillRefToJson(InputSkillRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'isAvailable': instance.isAvailable,
      'createdTimestamp': instance.createdTimestamp,
    };

InputStringExactFilterStringRegExpFilter
    _$InputStringExactFilterStringRegExpFilterFromJson(
            Map<String, dynamic> json) =>
        InputStringExactFilterStringRegExpFilter(
          eq: json['eq'] as String?,
          $in:
              (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
          le: json['le'] as String?,
          lt: json['lt'] as String?,
          ge: json['ge'] as String?,
          gt: json['gt'] as String?,
          between: json['between'] == null
              ? null
              : InputStringRange.fromJson(
                  json['between'] as Map<String, dynamic>),
          regexp: json['regexp'] as String?,
        );

Map<String, dynamic> _$InputStringExactFilterStringRegExpFilterToJson(
        InputStringExactFilterStringRegExpFilter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
      'le': instance.le,
      'lt': instance.lt,
      'ge': instance.ge,
      'gt': instance.gt,
      'between': instance.between,
      'regexp': instance.regexp,
    };

InputUpdateGratitudeInput _$InputUpdateGratitudeInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateGratitudeInput(
      filter:
          InputGratitudeFilter.fromJson(json['filter'] as Map<String, dynamic>),
      $set: json['set'] == null
          ? null
          : InputGratitudePatch.fromJson(json['set'] as Map<String, dynamic>),
      remove: json['remove'] == null
          ? null
          : InputGratitudePatch.fromJson(
              json['remove'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUpdateGratitudeInputToJson(
        InputUpdateGratitudeInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateHashtagInput _$InputUpdateHashtagInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateHashtagInput(
      filter:
          InputHashtagFilter.fromJson(json['filter'] as Map<String, dynamic>),
      $set: json['set'] == null
          ? null
          : InputHashtagPatch.fromJson(json['set'] as Map<String, dynamic>),
      remove: json['remove'] == null
          ? null
          : InputHashtagPatch.fromJson(json['remove'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUpdateHashtagInputToJson(
        InputUpdateHashtagInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateHashtagVariantInput _$InputUpdateHashtagVariantInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateHashtagVariantInput(
      filter: InputHashtagVariantFilter.fromJson(
          json['filter'] as Map<String, dynamic>),
      $set: json['set'] == null
          ? null
          : InputHashtagVariantPatch.fromJson(
              json['set'] as Map<String, dynamic>),
      remove: json['remove'] == null
          ? null
          : InputHashtagVariantPatch.fromJson(
              json['remove'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUpdateHashtagVariantInputToJson(
        InputUpdateHashtagVariantInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateRequestInput _$InputUpdateRequestInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateRequestInput(
      filter:
          InputRequestFilter.fromJson(json['filter'] as Map<String, dynamic>),
      $set: json['set'] == null
          ? null
          : InputRequestPatch.fromJson(json['set'] as Map<String, dynamic>),
      remove: json['remove'] == null
          ? null
          : InputRequestPatch.fromJson(json['remove'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUpdateRequestInputToJson(
        InputUpdateRequestInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateSkillInput _$InputUpdateSkillInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateSkillInput(
      filter: InputSkillFilter.fromJson(json['filter'] as Map<String, dynamic>),
      $set: json['set'] == null
          ? null
          : InputSkillPatch.fromJson(json['set'] as Map<String, dynamic>),
      remove: json['remove'] == null
          ? null
          : InputSkillPatch.fromJson(json['remove'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUpdateSkillInputToJson(
        InputUpdateSkillInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateUserInput _$InputUpdateUserInputFromJson(
        Map<String, dynamic> json) =>
    InputUpdateUserInput(
      filter: InputUserFilter.fromJson(json['filter'] as Map<String, dynamic>),
      $set: json['set'] == null
          ? null
          : InputUserPatch.fromJson(json['set'] as Map<String, dynamic>),
      remove: json['remove'] == null
          ? null
          : InputUserPatch.fromJson(json['remove'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUpdateUserInputToJson(
        InputUpdateUserInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUserFilter _$InputUserFilterFromJson(Map<String, dynamic> json) =>
    InputUserFilter(
      id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      email: json['email'] == null
          ? null
          : InputStringHashFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      isTest: json['isTest'] as bool?,
      has: (json['has'] as List<dynamic>?)
          ?.map((e) => $enumDecodeNullable(_$EnumUserHasFilterEnumMap, e,
              unknownValue: EnumUserHasFilter.$unknown))
          .toList(),
      and: (json['and'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputUserFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['or'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputUserFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: json['not'] == null
          ? null
          : InputUserFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUserFilterToJson(InputUserFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'isTest': instance.isTest,
      'has': instance.has?.map((e) => _$EnumUserHasFilterEnumMap[e]).toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumUserHasFilterEnumMap = {
  EnumUserHasFilter.email: 'email',
  EnumUserHasFilter.name: 'name',
  EnumUserHasFilter.age: 'age',
  EnumUserHasFilter.bio: 'bio',
  EnumUserHasFilter.avatar: 'avatar',
  EnumUserHasFilter.isAdmin: 'isAdmin',
  EnumUserHasFilter.isTest: 'isTest',
  EnumUserHasFilter.createdTimestamp: 'createdTimestamp',
  EnumUserHasFilter.requests: 'requests',
  EnumUserHasFilter.skills: 'skills',
  EnumUserHasFilter.gratitudeSent: 'gratitudeSent',
  EnumUserHasFilter.gratitudeReceived: 'gratitudeReceived',
  EnumUserHasFilter.$unknown: r'$unknown',
};

InputUserOrder _$InputUserOrderFromJson(Map<String, dynamic> json) =>
    InputUserOrder(
      asc: $enumDecodeNullable(_$EnumUserOrderableEnumMap, json['asc'],
          unknownValue: EnumUserOrderable.$unknown),
      desc: $enumDecodeNullable(_$EnumUserOrderableEnumMap, json['desc'],
          unknownValue: EnumUserOrderable.$unknown),
      then: json['then'] == null
          ? null
          : InputUserOrder.fromJson(json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUserOrderToJson(InputUserOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumUserOrderableEnumMap[instance.asc],
      'desc': _$EnumUserOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumUserOrderableEnumMap = {
  EnumUserOrderable.email: 'email',
  EnumUserOrderable.name: 'name',
  EnumUserOrderable.age: 'age',
  EnumUserOrderable.bio: 'bio',
  EnumUserOrderable.avatar: 'avatar',
  EnumUserOrderable.createdTimestamp: 'createdTimestamp',
  EnumUserOrderable.$unknown: r'$unknown',
};

InputUserPatch _$InputUserPatchFromJson(Map<String, dynamic> json) =>
    InputUserPatch(
      name: json['name'] as String?,
      age: json['age'] as int?,
      bio: json['bio'] as String?,
      avatar: json['avatar'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      isTest: json['isTest'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudeSent: (json['gratitudeSent'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudeReceived: (json['gratitudeReceived'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputUserPatchToJson(InputUserPatch instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'bio': instance.bio,
      'avatar': instance.avatar,
      'isAdmin': instance.isAdmin,
      'isTest': instance.isTest,
      'createdTimestamp': instance.createdTimestamp,
      'requests': instance.requests,
      'skills': instance.skills,
      'gratitudeSent': instance.gratitudeSent,
      'gratitudeReceived': instance.gratitudeReceived,
    };

InputUserRef _$InputUserRefFromJson(Map<String, dynamic> json) => InputUserRef(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      bio: json['bio'] as String?,
      avatar: json['avatar'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      isTest: json['isTest'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputRequestRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputSkillRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudeSent: (json['gratitudeSent'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gratitudeReceived: (json['gratitudeReceived'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InputGratitudeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputUserRefToJson(InputUserRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'bio': instance.bio,
      'avatar': instance.avatar,
      'isAdmin': instance.isAdmin,
      'isTest': instance.isTest,
      'createdTimestamp': instance.createdTimestamp,
      'requests': instance.requests,
      'skills': instance.skills,
      'gratitudeSent': instance.gratitudeSent,
      'gratitudeReceived': instance.gratitudeReceived,
    };
