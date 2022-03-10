// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputIntRange _$InputIntRangeFromJson(Map<String, dynamic> json) {
  return InputIntRange(
    min: json['min'] as int,
    max: json['max'] as int,
  );
}

Map<String, dynamic> _$InputIntRangeToJson(InputIntRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputFloatRange _$InputFloatRangeFromJson(Map<String, dynamic> json) {
  return InputFloatRange(
    min: (json['min'] as num).toDouble(),
    max: (json['max'] as num).toDouble(),
  );
}

Map<String, dynamic> _$InputFloatRangeToJson(InputFloatRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputInt64Range _$InputInt64RangeFromJson(Map<String, dynamic> json) {
  return InputInt64Range(
    min: json['min'] as String,
    max: json['max'] as String,
  );
}

Map<String, dynamic> _$InputInt64RangeToJson(InputInt64Range instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputDateTimeRange _$InputDateTimeRangeFromJson(Map<String, dynamic> json) {
  return InputDateTimeRange(
    min: json['min'] as String,
    max: json['max'] as String,
  );
}

Map<String, dynamic> _$InputDateTimeRangeToJson(InputDateTimeRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputStringRange _$InputStringRangeFromJson(Map<String, dynamic> json) {
  return InputStringRange(
    min: json['min'] as String,
    max: json['max'] as String,
  );
}

Map<String, dynamic> _$InputStringRangeToJson(InputStringRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

InputAuthRule _$InputAuthRuleFromJson(Map<String, dynamic> json) {
  return InputAuthRule(
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
}

Map<String, dynamic> _$InputAuthRuleToJson(InputAuthRule instance) =>
    <String, dynamic>{
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
      'rule': instance.rule,
    };

InputCustomHTTP _$InputCustomHTTPFromJson(Map<String, dynamic> json) {
  return InputCustomHTTP(
    url: json['url'] as String,
    method: _$enumDecode(_$EnumHTTPMethodEnumMap, json['method'],
        unknownValue: EnumHTTPMethod.$unknown),
    body: json['body'] as String?,
    graphql: json['graphql'] as String?,
    mode: _$enumDecodeNullable(_$EnumModeEnumMap, json['mode'],
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
}

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

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$EnumHTTPMethodEnumMap = {
  EnumHTTPMethod.$get: 'GET',
  EnumHTTPMethod.post: 'POST',
  EnumHTTPMethod.put: 'PUT',
  EnumHTTPMethod.patch: 'PATCH',
  EnumHTTPMethod.delete: 'DELETE',
  EnumHTTPMethod.$unknown: r'$unknown',
};

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$EnumModeEnumMap = {
  EnumMode.batch: 'BATCH',
  EnumMode.single: 'SINGLE',
  EnumMode.$unknown: r'$unknown',
};

InputPointRef _$InputPointRefFromJson(Map<String, dynamic> json) {
  return InputPointRef(
    longitude: (json['longitude'] as num).toDouble(),
    latitude: (json['latitude'] as num).toDouble(),
  );
}

Map<String, dynamic> _$InputPointRefToJson(InputPointRef instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

InputNearFilter _$InputNearFilterFromJson(Map<String, dynamic> json) {
  return InputNearFilter(
    distance: (json['distance'] as num).toDouble(),
    coordinate:
        InputPointRef.fromJson(json['coordinate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputNearFilterToJson(InputNearFilter instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'coordinate': instance.coordinate,
    };

InputPointGeoFilter _$InputPointGeoFilterFromJson(Map<String, dynamic> json) {
  return InputPointGeoFilter(
    near: json['near'] == null
        ? null
        : InputNearFilter.fromJson(json['near'] as Map<String, dynamic>),
    within: json['within'] == null
        ? null
        : InputWithinFilter.fromJson(json['within'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputPointGeoFilterToJson(
        InputPointGeoFilter instance) =>
    <String, dynamic>{
      'near': instance.near,
      'within': instance.within,
    };

InputPointListRef _$InputPointListRefFromJson(Map<String, dynamic> json) {
  return InputPointListRef(
    points: (json['points'] as List<dynamic>)
        .map((e) => InputPointRef.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InputPointListRefToJson(InputPointListRef instance) =>
    <String, dynamic>{
      'points': instance.points,
    };

InputPolygonRef _$InputPolygonRefFromJson(Map<String, dynamic> json) {
  return InputPolygonRef(
    coordinates: (json['coordinates'] as List<dynamic>)
        .map((e) => InputPointListRef.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InputPolygonRefToJson(InputPolygonRef instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
    };

InputMultiPolygonRef _$InputMultiPolygonRefFromJson(Map<String, dynamic> json) {
  return InputMultiPolygonRef(
    polygons: (json['polygons'] as List<dynamic>)
        .map((e) => InputPolygonRef.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InputMultiPolygonRefToJson(
        InputMultiPolygonRef instance) =>
    <String, dynamic>{
      'polygons': instance.polygons,
    };

InputWithinFilter _$InputWithinFilterFromJson(Map<String, dynamic> json) {
  return InputWithinFilter(
    polygon: InputPolygonRef.fromJson(json['polygon'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputWithinFilterToJson(InputWithinFilter instance) =>
    <String, dynamic>{
      'polygon': instance.polygon,
    };

InputContainsFilter _$InputContainsFilterFromJson(Map<String, dynamic> json) {
  return InputContainsFilter(
    point: json['point'] == null
        ? null
        : InputPointRef.fromJson(json['point'] as Map<String, dynamic>),
    polygon: json['polygon'] == null
        ? null
        : InputPolygonRef.fromJson(json['polygon'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputContainsFilterToJson(
        InputContainsFilter instance) =>
    <String, dynamic>{
      'point': instance.point,
      'polygon': instance.polygon,
    };

InputIntersectsFilter _$InputIntersectsFilterFromJson(
    Map<String, dynamic> json) {
  return InputIntersectsFilter(
    polygon: json['polygon'] == null
        ? null
        : InputPolygonRef.fromJson(json['polygon'] as Map<String, dynamic>),
    multiPolygon: json['multiPolygon'] == null
        ? null
        : InputMultiPolygonRef.fromJson(
            json['multiPolygon'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputIntersectsFilterToJson(
        InputIntersectsFilter instance) =>
    <String, dynamic>{
      'polygon': instance.polygon,
      'multiPolygon': instance.multiPolygon,
    };

InputPolygonGeoFilter _$InputPolygonGeoFilterFromJson(
    Map<String, dynamic> json) {
  return InputPolygonGeoFilter(
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
}

Map<String, dynamic> _$InputPolygonGeoFilterToJson(
        InputPolygonGeoFilter instance) =>
    <String, dynamic>{
      'near': instance.near,
      'within': instance.within,
      'contains': instance.contains,
      'intersects': instance.intersects,
    };

InputGenerateQueryParams _$InputGenerateQueryParamsFromJson(
    Map<String, dynamic> json) {
  return InputGenerateQueryParams(
    $get: json['get'] as bool?,
    query: json['query'] as bool?,
    password: json['password'] as bool?,
    aggregate: json['aggregate'] as bool?,
  );
}

Map<String, dynamic> _$InputGenerateQueryParamsToJson(
        InputGenerateQueryParams instance) =>
    <String, dynamic>{
      'get': instance.$get,
      'query': instance.query,
      'password': instance.password,
      'aggregate': instance.aggregate,
    };

InputGenerateMutationParams _$InputGenerateMutationParamsFromJson(
    Map<String, dynamic> json) {
  return InputGenerateMutationParams(
    add: json['add'] as bool?,
    update: json['update'] as bool?,
    delete: json['delete'] as bool?,
  );
}

Map<String, dynamic> _$InputGenerateMutationParamsToJson(
        InputGenerateMutationParams instance) =>
    <String, dynamic>{
      'add': instance.add,
      'update': instance.update,
      'delete': instance.delete,
    };

InputIntFilter _$InputIntFilterFromJson(Map<String, dynamic> json) {
  return InputIntFilter(
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
}

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

InputInt64Filter _$InputInt64FilterFromJson(Map<String, dynamic> json) {
  return InputInt64Filter(
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
}

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

InputFloatFilter _$InputFloatFilterFromJson(Map<String, dynamic> json) {
  return InputFloatFilter(
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
}

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

InputDateTimeFilter _$InputDateTimeFilterFromJson(Map<String, dynamic> json) {
  return InputDateTimeFilter(
    eq: json['eq'] as String?,
    $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    le: json['le'] as String?,
    lt: json['lt'] as String?,
    ge: json['ge'] as String?,
    gt: json['gt'] as String?,
    between: json['between'] == null
        ? null
        : InputDateTimeRange.fromJson(json['between'] as Map<String, dynamic>),
  );
}

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
    Map<String, dynamic> json) {
  return InputStringTermFilter(
    allofterms: json['allofterms'] as String?,
    anyofterms: json['anyofterms'] as String?,
  );
}

Map<String, dynamic> _$InputStringTermFilterToJson(
        InputStringTermFilter instance) =>
    <String, dynamic>{
      'allofterms': instance.allofterms,
      'anyofterms': instance.anyofterms,
    };

InputStringRegExpFilter _$InputStringRegExpFilterFromJson(
    Map<String, dynamic> json) {
  return InputStringRegExpFilter(
    regexp: json['regexp'] as String?,
  );
}

Map<String, dynamic> _$InputStringRegExpFilterToJson(
        InputStringRegExpFilter instance) =>
    <String, dynamic>{
      'regexp': instance.regexp,
    };

InputStringFullTextFilter _$InputStringFullTextFilterFromJson(
    Map<String, dynamic> json) {
  return InputStringFullTextFilter(
    alloftext: json['alloftext'] as String?,
    anyoftext: json['anyoftext'] as String?,
  );
}

Map<String, dynamic> _$InputStringFullTextFilterToJson(
        InputStringFullTextFilter instance) =>
    <String, dynamic>{
      'alloftext': instance.alloftext,
      'anyoftext': instance.anyoftext,
    };

InputStringExactFilter _$InputStringExactFilterFromJson(
    Map<String, dynamic> json) {
  return InputStringExactFilter(
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
}

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
    Map<String, dynamic> json) {
  return InputStringHashFilter(
    eq: json['eq'] as String?,
    $in: (json['in'] as List<dynamic>?)?.map((e) => e as String?).toList(),
  );
}

Map<String, dynamic> _$InputStringHashFilterToJson(
        InputStringHashFilter instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
    };

InputAddHashtagMetaInput _$InputAddHashtagMetaInputFromJson(
    Map<String, dynamic> json) {
  return InputAddHashtagMetaInput(
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InputAddHashtagMetaInputToJson(
        InputAddHashtagMetaInput instance) =>
    <String, dynamic>{
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

InputAddHashtagVariantInput _$InputAddHashtagVariantInputFromJson(
    Map<String, dynamic> json) {
  return InputAddHashtagVariantInput(
    variantName: json['variantName'] as String,
    hashtagMeta: InputHashtagMetaRef.fromJson(
        json['hashtagMeta'] as Map<String, dynamic>),
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
  );
}

Map<String, dynamic> _$InputAddHashtagVariantInputToJson(
        InputAddHashtagVariantInput instance) =>
    <String, dynamic>{
      'variantName': instance.variantName,
      'hashtagMeta': instance.hashtagMeta,
      'skills': instance.skills,
      'requests': instance.requests,
    };

InputAddRequestInput _$InputAddRequestInputFromJson(Map<String, dynamic> json) {
  return InputAddRequestInput(
    owner: InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
    title: json['title'] as String,
    message: json['message'] as String,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$InputAddRequestInputToJson(
        InputAddRequestInput instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputAddSkillInput _$InputAddSkillInputFromJson(Map<String, dynamic> json) {
  return InputAddSkillInput(
    owner: InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
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
}

Map<String, dynamic> _$InputAddSkillInputToJson(InputAddSkillInput instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'isAvailable': instance.isAvailable,
      'createdTimestamp': instance.createdTimestamp,
    };

InputAddUserInput _$InputAddUserInputFromJson(Map<String, dynamic> json) {
  return InputAddUserInput(
    email: json['email'] as String,
    name: json['name'] as String,
    age: json['age'] as int?,
    isAdmin: json['isAdmin'] as bool?,
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
  );
}

Map<String, dynamic> _$InputAddUserInputToJson(InputAddUserInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'isAdmin': instance.isAdmin,
      'createdTimestamp': instance.createdTimestamp,
      'requests': instance.requests,
      'skills': instance.skills,
    };

InputHashtagMetaFilter _$InputHashtagMetaFilterFromJson(
    Map<String, dynamic> json) {
  return InputHashtagMetaFilter(
    id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
    metaName: json['metaName'] == null
        ? null
        : InputStringTermFilter.fromJson(
            json['metaName'] as Map<String, dynamic>),
    blessed: json['blessed'] as bool?,
    has: (json['has'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(_$EnumHashtagMetaHasFilterEnumMap, e,
            unknownValue: EnumHashtagMetaHasFilter.$unknown))
        .toList(),
    and: (json['and'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : InputHashtagMetaFilter.fromJson(e as Map<String, dynamic>))
        .toList(),
    or: (json['or'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : InputHashtagMetaFilter.fromJson(e as Map<String, dynamic>))
        .toList(),
    not: json['not'] == null
        ? null
        : InputHashtagMetaFilter.fromJson(json['not'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputHashtagMetaFilterToJson(
        InputHashtagMetaFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'blessed': instance.blessed,
      'has': instance.has
          ?.map((e) => _$EnumHashtagMetaHasFilterEnumMap[e])
          .toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumHashtagMetaHasFilterEnumMap = {
  EnumHashtagMetaHasFilter.metaName: 'metaName',
  EnumHashtagMetaHasFilter.iconName: 'iconName',
  EnumHashtagMetaHasFilter.blessed: 'blessed',
  EnumHashtagMetaHasFilter.hashtagVariants: 'hashtagVariants',
  EnumHashtagMetaHasFilter.$unknown: r'$unknown',
};

InputHashtagMetaOrder _$InputHashtagMetaOrderFromJson(
    Map<String, dynamic> json) {
  return InputHashtagMetaOrder(
    asc: _$enumDecodeNullable(_$EnumHashtagMetaOrderableEnumMap, json['asc'],
        unknownValue: EnumHashtagMetaOrderable.$unknown),
    desc: _$enumDecodeNullable(_$EnumHashtagMetaOrderableEnumMap, json['desc'],
        unknownValue: EnumHashtagMetaOrderable.$unknown),
    then: json['then'] == null
        ? null
        : InputHashtagMetaOrder.fromJson(json['then'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputHashtagMetaOrderToJson(
        InputHashtagMetaOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumHashtagMetaOrderableEnumMap[instance.asc],
      'desc': _$EnumHashtagMetaOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumHashtagMetaOrderableEnumMap = {
  EnumHashtagMetaOrderable.metaName: 'metaName',
  EnumHashtagMetaOrderable.iconName: 'iconName',
  EnumHashtagMetaOrderable.$unknown: r'$unknown',
};

InputHashtagMetaPatch _$InputHashtagMetaPatchFromJson(
    Map<String, dynamic> json) {
  return InputHashtagMetaPatch(
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InputHashtagMetaPatchToJson(
        InputHashtagMetaPatch instance) =>
    <String, dynamic>{
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

InputHashtagMetaRef _$InputHashtagMetaRefFromJson(Map<String, dynamic> json) {
  return InputHashtagMetaRef(
    id: json['id'] as String?,
    metaName: json['metaName'] as String?,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InputHashtagMetaRefToJson(
        InputHashtagMetaRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

InputHashtagVariantFilter _$InputHashtagVariantFilterFromJson(
    Map<String, dynamic> json) {
  return InputHashtagVariantFilter(
    id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
    variantName: json['variantName'] == null
        ? null
        : InputStringTermFilter.fromJson(
            json['variantName'] as Map<String, dynamic>),
    has: (json['has'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(
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
}

Map<String, dynamic> _$InputHashtagVariantFilterToJson(
        InputHashtagVariantFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variantName': instance.variantName,
      'has': instance.has
          ?.map((e) => _$EnumHashtagVariantHasFilterEnumMap[e])
          .toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumHashtagVariantHasFilterEnumMap = {
  EnumHashtagVariantHasFilter.variantName: 'variantName',
  EnumHashtagVariantHasFilter.hashtagMeta: 'hashtagMeta',
  EnumHashtagVariantHasFilter.skills: 'skills',
  EnumHashtagVariantHasFilter.requests: 'requests',
  EnumHashtagVariantHasFilter.$unknown: r'$unknown',
};

InputHashtagVariantOrder _$InputHashtagVariantOrderFromJson(
    Map<String, dynamic> json) {
  return InputHashtagVariantOrder(
    asc: _$enumDecodeNullable(_$EnumHashtagVariantOrderableEnumMap, json['asc'],
        unknownValue: EnumHashtagVariantOrderable.$unknown),
    desc: _$enumDecodeNullable(
        _$EnumHashtagVariantOrderableEnumMap, json['desc'],
        unknownValue: EnumHashtagVariantOrderable.$unknown),
    then: json['then'] == null
        ? null
        : InputHashtagVariantOrder.fromJson(
            json['then'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputHashtagVariantOrderToJson(
        InputHashtagVariantOrder instance) =>
    <String, dynamic>{
      'asc': _$EnumHashtagVariantOrderableEnumMap[instance.asc],
      'desc': _$EnumHashtagVariantOrderableEnumMap[instance.desc],
      'then': instance.then,
    };

const _$EnumHashtagVariantOrderableEnumMap = {
  EnumHashtagVariantOrderable.variantName: 'variantName',
  EnumHashtagVariantOrderable.$unknown: r'$unknown',
};

InputHashtagVariantPatch _$InputHashtagVariantPatchFromJson(
    Map<String, dynamic> json) {
  return InputHashtagVariantPatch(
    hashtagMeta: json['hashtagMeta'] == null
        ? null
        : InputHashtagMetaRef.fromJson(
            json['hashtagMeta'] as Map<String, dynamic>),
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
  );
}

Map<String, dynamic> _$InputHashtagVariantPatchToJson(
        InputHashtagVariantPatch instance) =>
    <String, dynamic>{
      'hashtagMeta': instance.hashtagMeta,
      'skills': instance.skills,
      'requests': instance.requests,
    };

InputHashtagVariantRef _$InputHashtagVariantRefFromJson(
    Map<String, dynamic> json) {
  return InputHashtagVariantRef(
    id: json['id'] as String?,
    variantName: json['variantName'] as String?,
    hashtagMeta: json['hashtagMeta'] == null
        ? null
        : InputHashtagMetaRef.fromJson(
            json['hashtagMeta'] as Map<String, dynamic>),
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
  );
}

Map<String, dynamic> _$InputHashtagVariantRefToJson(
        InputHashtagVariantRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variantName': instance.variantName,
      'hashtagMeta': instance.hashtagMeta,
      'skills': instance.skills,
      'requests': instance.requests,
    };

InputRequestFilter _$InputRequestFilterFromJson(Map<String, dynamic> json) {
  return InputRequestFilter(
    id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
    title: json['title'] == null
        ? null
        : InputStringTermFilter.fromJson(json['title'] as Map<String, dynamic>),
    message: json['message'] == null
        ? null
        : InputStringTermFilter.fromJson(
            json['message'] as Map<String, dynamic>),
    has: (json['has'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(_$EnumRequestHasFilterEnumMap, e,
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
}

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
  EnumRequestHasFilter.hashtagVariants: 'hashtagVariants',
  EnumRequestHasFilter.createdTimestamp: 'createdTimestamp',
  EnumRequestHasFilter.$unknown: r'$unknown',
};

InputRequestOrder _$InputRequestOrderFromJson(Map<String, dynamic> json) {
  return InputRequestOrder(
    asc: _$enumDecodeNullable(_$EnumRequestOrderableEnumMap, json['asc'],
        unknownValue: EnumRequestOrderable.$unknown),
    desc: _$enumDecodeNullable(_$EnumRequestOrderableEnumMap, json['desc'],
        unknownValue: EnumRequestOrderable.$unknown),
    then: json['then'] == null
        ? null
        : InputRequestOrder.fromJson(json['then'] as Map<String, dynamic>),
  );
}

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

InputRequestPatch _$InputRequestPatchFromJson(Map<String, dynamic> json) {
  return InputRequestPatch(
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
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$InputRequestPatchToJson(InputRequestPatch instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputRequestRef _$InputRequestRefFromJson(Map<String, dynamic> json) {
  return InputRequestRef(
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
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$InputRequestRefToJson(InputRequestRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'createdTimestamp': instance.createdTimestamp,
    };

InputSkillFilter _$InputSkillFilterFromJson(Map<String, dynamic> json) {
  return InputSkillFilter(
    id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
    has: (json['has'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(_$EnumSkillHasFilterEnumMap, e,
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
}

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

InputSkillOrder _$InputSkillOrderFromJson(Map<String, dynamic> json) {
  return InputSkillOrder(
    asc: _$enumDecodeNullable(_$EnumSkillOrderableEnumMap, json['asc'],
        unknownValue: EnumSkillOrderable.$unknown),
    desc: _$enumDecodeNullable(_$EnumSkillOrderableEnumMap, json['desc'],
        unknownValue: EnumSkillOrderable.$unknown),
    then: json['then'] == null
        ? null
        : InputSkillOrder.fromJson(json['then'] as Map<String, dynamic>),
  );
}

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

InputSkillPatch _$InputSkillPatchFromJson(Map<String, dynamic> json) {
  return InputSkillPatch(
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
}

Map<String, dynamic> _$InputSkillPatchToJson(InputSkillPatch instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'isAvailable': instance.isAvailable,
      'createdTimestamp': instance.createdTimestamp,
    };

InputSkillRef _$InputSkillRefFromJson(Map<String, dynamic> json) {
  return InputSkillRef(
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
}

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

InputUpdateHashtagMetaInput _$InputUpdateHashtagMetaInputFromJson(
    Map<String, dynamic> json) {
  return InputUpdateHashtagMetaInput(
    filter:
        InputHashtagMetaFilter.fromJson(json['filter'] as Map<String, dynamic>),
    $set: json['set'] == null
        ? null
        : InputHashtagMetaPatch.fromJson(json['set'] as Map<String, dynamic>),
    remove: json['remove'] == null
        ? null
        : InputHashtagMetaPatch.fromJson(
            json['remove'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputUpdateHashtagMetaInputToJson(
        InputUpdateHashtagMetaInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateHashtagVariantInput _$InputUpdateHashtagVariantInputFromJson(
    Map<String, dynamic> json) {
  return InputUpdateHashtagVariantInput(
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
}

Map<String, dynamic> _$InputUpdateHashtagVariantInputToJson(
        InputUpdateHashtagVariantInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateRequestInput _$InputUpdateRequestInputFromJson(
    Map<String, dynamic> json) {
  return InputUpdateRequestInput(
    filter: InputRequestFilter.fromJson(json['filter'] as Map<String, dynamic>),
    $set: json['set'] == null
        ? null
        : InputRequestPatch.fromJson(json['set'] as Map<String, dynamic>),
    remove: json['remove'] == null
        ? null
        : InputRequestPatch.fromJson(json['remove'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputUpdateRequestInputToJson(
        InputUpdateRequestInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateSkillInput _$InputUpdateSkillInputFromJson(
    Map<String, dynamic> json) {
  return InputUpdateSkillInput(
    filter: InputSkillFilter.fromJson(json['filter'] as Map<String, dynamic>),
    $set: json['set'] == null
        ? null
        : InputSkillPatch.fromJson(json['set'] as Map<String, dynamic>),
    remove: json['remove'] == null
        ? null
        : InputSkillPatch.fromJson(json['remove'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputUpdateSkillInputToJson(
        InputUpdateSkillInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUpdateUserInput _$InputUpdateUserInputFromJson(Map<String, dynamic> json) {
  return InputUpdateUserInput(
    filter: InputUserFilter.fromJson(json['filter'] as Map<String, dynamic>),
    $set: json['set'] == null
        ? null
        : InputUserPatch.fromJson(json['set'] as Map<String, dynamic>),
    remove: json['remove'] == null
        ? null
        : InputUserPatch.fromJson(json['remove'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InputUpdateUserInputToJson(
        InputUpdateUserInput instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'set': instance.$set,
      'remove': instance.remove,
    };

InputUserFilter _$InputUserFilterFromJson(Map<String, dynamic> json) {
  return InputUserFilter(
    id: (json['id'] as List<dynamic>?)?.map((e) => e as String).toList(),
    email: json['email'] == null
        ? null
        : InputStringHashFilter.fromJson(json['email'] as Map<String, dynamic>),
    has: (json['has'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(_$EnumUserHasFilterEnumMap, e,
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
}

Map<String, dynamic> _$InputUserFilterToJson(InputUserFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'has': instance.has?.map((e) => _$EnumUserHasFilterEnumMap[e]).toList(),
      'and': instance.and,
      'or': instance.or,
      'not': instance.not,
    };

const _$EnumUserHasFilterEnumMap = {
  EnumUserHasFilter.email: 'email',
  EnumUserHasFilter.name: 'name',
  EnumUserHasFilter.age: 'age',
  EnumUserHasFilter.isAdmin: 'isAdmin',
  EnumUserHasFilter.createdTimestamp: 'createdTimestamp',
  EnumUserHasFilter.requests: 'requests',
  EnumUserHasFilter.skills: 'skills',
  EnumUserHasFilter.$unknown: r'$unknown',
};

InputUserOrder _$InputUserOrderFromJson(Map<String, dynamic> json) {
  return InputUserOrder(
    asc: _$enumDecodeNullable(_$EnumUserOrderableEnumMap, json['asc'],
        unknownValue: EnumUserOrderable.$unknown),
    desc: _$enumDecodeNullable(_$EnumUserOrderableEnumMap, json['desc'],
        unknownValue: EnumUserOrderable.$unknown),
    then: json['then'] == null
        ? null
        : InputUserOrder.fromJson(json['then'] as Map<String, dynamic>),
  );
}

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
  EnumUserOrderable.createdTimestamp: 'createdTimestamp',
  EnumUserOrderable.$unknown: r'$unknown',
};

InputUserPatch _$InputUserPatchFromJson(Map<String, dynamic> json) {
  return InputUserPatch(
    name: json['name'] as String?,
    age: json['age'] as int?,
    isAdmin: json['isAdmin'] as bool?,
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
  );
}

Map<String, dynamic> _$InputUserPatchToJson(InputUserPatch instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'isAdmin': instance.isAdmin,
      'createdTimestamp': instance.createdTimestamp,
      'requests': instance.requests,
      'skills': instance.skills,
    };

InputUserRef _$InputUserRefFromJson(Map<String, dynamic> json) {
  return InputUserRef(
    id: json['id'] as String?,
    email: json['email'] as String?,
    name: json['name'] as String?,
    age: json['age'] as int?,
    isAdmin: json['isAdmin'] as bool?,
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
  );
}

Map<String, dynamic> _$InputUserRefToJson(InputUserRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'isAdmin': instance.isAdmin,
      'createdTimestamp': instance.createdTimestamp,
      'requests': instance.requests,
      'skills': instance.skills,
    };
