import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable()
class InputIntRange extends JsonSerializable {
  InputIntRange({required this.min, required this.max});

  @override
  factory InputIntRange.fromJson(Map<String, dynamic> json) =>
      _$InputIntRangeFromJson(json);

  final int min;

  final int max;

  @override
  Map<String, dynamic> toJson() => _$InputIntRangeToJson(this);
}

@JsonSerializable()
class InputFloatRange extends JsonSerializable {
  InputFloatRange({required this.min, required this.max});

  @override
  factory InputFloatRange.fromJson(Map<String, dynamic> json) =>
      _$InputFloatRangeFromJson(json);

  final double min;

  final double max;

  @override
  Map<String, dynamic> toJson() => _$InputFloatRangeToJson(this);
}

@JsonSerializable()
class InputInt64Range extends JsonSerializable {
  InputInt64Range({required this.min, required this.max});

  @override
  factory InputInt64Range.fromJson(Map<String, dynamic> json) =>
      _$InputInt64RangeFromJson(json);

  final String min;

  final String max;

  @override
  Map<String, dynamic> toJson() => _$InputInt64RangeToJson(this);
}

@JsonSerializable()
class InputDateTimeRange extends JsonSerializable {
  InputDateTimeRange({required this.min, required this.max});

  @override
  factory InputDateTimeRange.fromJson(Map<String, dynamic> json) =>
      _$InputDateTimeRangeFromJson(json);

  final String min;

  final String max;

  @override
  Map<String, dynamic> toJson() => _$InputDateTimeRangeToJson(this);
}

@JsonSerializable()
class InputStringRange extends JsonSerializable {
  InputStringRange({required this.min, required this.max});

  @override
  factory InputStringRange.fromJson(Map<String, dynamic> json) =>
      _$InputStringRangeFromJson(json);

  final String min;

  final String max;

  @override
  Map<String, dynamic> toJson() => _$InputStringRangeToJson(this);
}

@JsonSerializable()
class InputAuthRule extends JsonSerializable {
  InputAuthRule({this.and, this.or, this.not, this.rule});

  @override
  factory InputAuthRule.fromJson(Map<String, dynamic> json) =>
      _$InputAuthRuleFromJson(json);

  final List<InputAuthRule?>? and;

  final List<InputAuthRule?>? or;

  final InputAuthRule? not;

  final String? rule;

  @override
  Map<String, dynamic> toJson() => _$InputAuthRuleToJson(this);
}

@JsonSerializable()
class InputCustomHTTP extends JsonSerializable {
  InputCustomHTTP(
      {required this.url,
      required this.method,
      this.body,
      this.graphql,
      this.mode,
      this.forwardHeaders,
      this.secretHeaders,
      this.introspectionHeaders,
      this.skipIntrospection});

  @override
  factory InputCustomHTTP.fromJson(Map<String, dynamic> json) =>
      _$InputCustomHTTPFromJson(json);

  final String url;

  @JsonKey(unknownEnumValue: EnumHTTPMethod.$unknown)
  final EnumHTTPMethod method;

  final String? body;

  final String? graphql;

  @JsonKey(unknownEnumValue: EnumMode.$unknown)
  final EnumMode? mode;

  final List<String>? forwardHeaders;

  final List<String>? secretHeaders;

  final List<String>? introspectionHeaders;

  final bool? skipIntrospection;

  @override
  Map<String, dynamic> toJson() => _$InputCustomHTTPToJson(this);
}

@JsonSerializable()
class InputPointRef extends JsonSerializable {
  InputPointRef({required this.longitude, required this.latitude});

  @override
  factory InputPointRef.fromJson(Map<String, dynamic> json) =>
      _$InputPointRefFromJson(json);

  final double longitude;

  final double latitude;

  @override
  Map<String, dynamic> toJson() => _$InputPointRefToJson(this);
}

@JsonSerializable()
class InputNearFilter extends JsonSerializable {
  InputNearFilter({required this.distance, required this.coordinate});

  @override
  factory InputNearFilter.fromJson(Map<String, dynamic> json) =>
      _$InputNearFilterFromJson(json);

  final double distance;

  final InputPointRef coordinate;

  @override
  Map<String, dynamic> toJson() => _$InputNearFilterToJson(this);
}

@JsonSerializable()
class InputPointGeoFilter extends JsonSerializable {
  InputPointGeoFilter({this.near, this.within});

  @override
  factory InputPointGeoFilter.fromJson(Map<String, dynamic> json) =>
      _$InputPointGeoFilterFromJson(json);

  final InputNearFilter? near;

  final InputWithinFilter? within;

  @override
  Map<String, dynamic> toJson() => _$InputPointGeoFilterToJson(this);
}

@JsonSerializable()
class InputPointListRef extends JsonSerializable {
  InputPointListRef({required this.points});

  @override
  factory InputPointListRef.fromJson(Map<String, dynamic> json) =>
      _$InputPointListRefFromJson(json);

  final List<InputPointRef> points;

  @override
  Map<String, dynamic> toJson() => _$InputPointListRefToJson(this);
}

@JsonSerializable()
class InputPolygonRef extends JsonSerializable {
  InputPolygonRef({required this.coordinates});

  @override
  factory InputPolygonRef.fromJson(Map<String, dynamic> json) =>
      _$InputPolygonRefFromJson(json);

  final List<InputPointListRef> coordinates;

  @override
  Map<String, dynamic> toJson() => _$InputPolygonRefToJson(this);
}

@JsonSerializable()
class InputMultiPolygonRef extends JsonSerializable {
  InputMultiPolygonRef({required this.polygons});

  @override
  factory InputMultiPolygonRef.fromJson(Map<String, dynamic> json) =>
      _$InputMultiPolygonRefFromJson(json);

  final List<InputPolygonRef> polygons;

  @override
  Map<String, dynamic> toJson() => _$InputMultiPolygonRefToJson(this);
}

@JsonSerializable()
class InputWithinFilter extends JsonSerializable {
  InputWithinFilter({required this.polygon});

  @override
  factory InputWithinFilter.fromJson(Map<String, dynamic> json) =>
      _$InputWithinFilterFromJson(json);

  final InputPolygonRef polygon;

  @override
  Map<String, dynamic> toJson() => _$InputWithinFilterToJson(this);
}

@JsonSerializable()
class InputContainsFilter extends JsonSerializable {
  InputContainsFilter({this.point, this.polygon});

  @override
  factory InputContainsFilter.fromJson(Map<String, dynamic> json) =>
      _$InputContainsFilterFromJson(json);

  final InputPointRef? point;

  final InputPolygonRef? polygon;

  @override
  Map<String, dynamic> toJson() => _$InputContainsFilterToJson(this);
}

@JsonSerializable()
class InputIntersectsFilter extends JsonSerializable {
  InputIntersectsFilter({this.polygon, this.multiPolygon});

  @override
  factory InputIntersectsFilter.fromJson(Map<String, dynamic> json) =>
      _$InputIntersectsFilterFromJson(json);

  final InputPolygonRef? polygon;

  final InputMultiPolygonRef? multiPolygon;

  @override
  Map<String, dynamic> toJson() => _$InputIntersectsFilterToJson(this);
}

@JsonSerializable()
class InputPolygonGeoFilter extends JsonSerializable {
  InputPolygonGeoFilter(
      {this.near, this.within, this.contains, this.intersects});

  @override
  factory InputPolygonGeoFilter.fromJson(Map<String, dynamic> json) =>
      _$InputPolygonGeoFilterFromJson(json);

  final InputNearFilter? near;

  final InputWithinFilter? within;

  final InputContainsFilter? contains;

  final InputIntersectsFilter? intersects;

  @override
  Map<String, dynamic> toJson() => _$InputPolygonGeoFilterToJson(this);
}

@JsonSerializable()
class InputGenerateQueryParams extends JsonSerializable {
  InputGenerateQueryParams(
      {this.$get, this.query, this.password, this.aggregate});

  @override
  factory InputGenerateQueryParams.fromJson(Map<String, dynamic> json) =>
      _$InputGenerateQueryParamsFromJson(json);

  @JsonKey(name: 'get')
  final bool? $get;

  final bool? query;

  final bool? password;

  final bool? aggregate;

  @override
  Map<String, dynamic> toJson() => _$InputGenerateQueryParamsToJson(this);
}

@JsonSerializable()
class InputGenerateMutationParams extends JsonSerializable {
  InputGenerateMutationParams({this.add, this.update, this.delete});

  @override
  factory InputGenerateMutationParams.fromJson(Map<String, dynamic> json) =>
      _$InputGenerateMutationParamsFromJson(json);

  final bool? add;

  final bool? update;

  final bool? delete;

  @override
  Map<String, dynamic> toJson() => _$InputGenerateMutationParamsToJson(this);
}

@JsonSerializable()
class InputIntFilter extends JsonSerializable {
  InputIntFilter(
      {this.eq, this.$in, this.le, this.lt, this.ge, this.gt, this.between});

  @override
  factory InputIntFilter.fromJson(Map<String, dynamic> json) =>
      _$InputIntFilterFromJson(json);

  final int? eq;

  @JsonKey(name: 'in')
  final List<int?>? $in;

  final int? le;

  final int? lt;

  final int? ge;

  final int? gt;

  final InputIntRange? between;

  @override
  Map<String, dynamic> toJson() => _$InputIntFilterToJson(this);
}

@JsonSerializable()
class InputInt64Filter extends JsonSerializable {
  InputInt64Filter(
      {this.eq, this.$in, this.le, this.lt, this.ge, this.gt, this.between});

  @override
  factory InputInt64Filter.fromJson(Map<String, dynamic> json) =>
      _$InputInt64FilterFromJson(json);

  final String? eq;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final String? le;

  final String? lt;

  final String? ge;

  final String? gt;

  final InputInt64Range? between;

  @override
  Map<String, dynamic> toJson() => _$InputInt64FilterToJson(this);
}

@JsonSerializable()
class InputFloatFilter extends JsonSerializable {
  InputFloatFilter(
      {this.eq, this.$in, this.le, this.lt, this.ge, this.gt, this.between});

  @override
  factory InputFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$InputFloatFilterFromJson(json);

  final double? eq;

  @JsonKey(name: 'in')
  final List<double?>? $in;

  final double? le;

  final double? lt;

  final double? ge;

  final double? gt;

  final InputFloatRange? between;

  @override
  Map<String, dynamic> toJson() => _$InputFloatFilterToJson(this);
}

@JsonSerializable()
class InputDateTimeFilter extends JsonSerializable {
  InputDateTimeFilter(
      {this.eq, this.$in, this.le, this.lt, this.ge, this.gt, this.between});

  @override
  factory InputDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$InputDateTimeFilterFromJson(json);

  final String? eq;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final String? le;

  final String? lt;

  final String? ge;

  final String? gt;

  final InputDateTimeRange? between;

  @override
  Map<String, dynamic> toJson() => _$InputDateTimeFilterToJson(this);
}

@JsonSerializable()
class InputStringTermFilter extends JsonSerializable {
  InputStringTermFilter({this.allofterms, this.anyofterms});

  @override
  factory InputStringTermFilter.fromJson(Map<String, dynamic> json) =>
      _$InputStringTermFilterFromJson(json);

  final String? allofterms;

  final String? anyofterms;

  @override
  Map<String, dynamic> toJson() => _$InputStringTermFilterToJson(this);
}

@JsonSerializable()
class InputStringRegExpFilter extends JsonSerializable {
  InputStringRegExpFilter({this.regexp});

  @override
  factory InputStringRegExpFilter.fromJson(Map<String, dynamic> json) =>
      _$InputStringRegExpFilterFromJson(json);

  final String? regexp;

  @override
  Map<String, dynamic> toJson() => _$InputStringRegExpFilterToJson(this);
}

@JsonSerializable()
class InputStringFullTextFilter extends JsonSerializable {
  InputStringFullTextFilter({this.alloftext, this.anyoftext});

  @override
  factory InputStringFullTextFilter.fromJson(Map<String, dynamic> json) =>
      _$InputStringFullTextFilterFromJson(json);

  final String? alloftext;

  final String? anyoftext;

  @override
  Map<String, dynamic> toJson() => _$InputStringFullTextFilterToJson(this);
}

@JsonSerializable()
class InputStringExactFilter extends JsonSerializable {
  InputStringExactFilter(
      {this.eq, this.$in, this.le, this.lt, this.ge, this.gt, this.between});

  @override
  factory InputStringExactFilter.fromJson(Map<String, dynamic> json) =>
      _$InputStringExactFilterFromJson(json);

  final String? eq;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final String? le;

  final String? lt;

  final String? ge;

  final String? gt;

  final InputStringRange? between;

  @override
  Map<String, dynamic> toJson() => _$InputStringExactFilterToJson(this);
}

@JsonSerializable()
class InputStringHashFilter extends JsonSerializable {
  InputStringHashFilter({this.eq, this.$in});

  @override
  factory InputStringHashFilter.fromJson(Map<String, dynamic> json) =>
      _$InputStringHashFilterFromJson(json);

  final String? eq;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  @override
  Map<String, dynamic> toJson() => _$InputStringHashFilterToJson(this);
}

@JsonSerializable()
class InputAddHashtagMetaInput extends JsonSerializable {
  InputAddHashtagMetaInput(
      {required this.metaName,
      this.iconName,
      this.blessed,
      this.blessedInt,
      this.hashtagVariants,
      this.skillCountAllTime,
      this.requestCountAllTime,
      this.skillCountLast24h,
      this.requestCountLast24h,
      this.skillCountLast1w,
      this.requestCountLast1w});

  @override
  factory InputAddHashtagMetaInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddHashtagMetaInputFromJson(json);

  final String metaName;

  final String? iconName;

  final bool? blessed;

  final int? blessedInt;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final int? skillCountAllTime;

  final int? requestCountAllTime;

  final int? skillCountLast24h;

  final int? requestCountLast24h;

  final int? skillCountLast1w;

  final int? requestCountLast1w;

  @override
  Map<String, dynamic> toJson() => _$InputAddHashtagMetaInputToJson(this);
}

@JsonSerializable()
class InputAddHashtagVariantInput extends JsonSerializable {
  InputAddHashtagVariantInput(
      {required this.variantName,
      required this.hashtagMeta,
      this.skills,
      this.requests});

  @override
  factory InputAddHashtagVariantInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddHashtagVariantInputFromJson(json);

  final String variantName;

  final InputHashtagMetaRef hashtagMeta;

  final List<InputSkillRef?>? skills;

  final List<InputRequestRef?>? requests;

  @override
  Map<String, dynamic> toJson() => _$InputAddHashtagVariantInputToJson(this);
}

@JsonSerializable()
class InputAddRequestInput extends JsonSerializable {
  InputAddRequestInput(
      {required this.owner,
      required this.title,
      required this.message,
      required this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputAddRequestInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddRequestInputFromJson(json);

  final InputUserRef owner;

  final String title;

  final String message;

  final List<InputHashtagVariantRef?> hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputAddRequestInputToJson(this);
}

@JsonSerializable()
class InputAddSkillInput extends JsonSerializable {
  InputAddSkillInput(
      {required this.owner,
      this.title,
      this.message,
      required this.hashtagVariants,
      this.isAvailable,
      this.createdTimestamp});

  @override
  factory InputAddSkillInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddSkillInputFromJson(json);

  final InputUserRef owner;

  final String? title;

  final String? message;

  final List<InputHashtagVariantRef?> hashtagVariants;

  final bool? isAvailable;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputAddSkillInputToJson(this);
}

@JsonSerializable()
class InputAddUserInput extends JsonSerializable {
  InputAddUserInput(
      {required this.email,
      required this.name,
      this.age,
      this.isAdmin,
      this.createdTimestamp,
      this.requests,
      this.skills});

  @override
  factory InputAddUserInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddUserInputFromJson(json);

  final String email;

  final String name;

  final int? age;

  final bool? isAdmin;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

  final List<InputSkillRef?>? skills;

  @override
  Map<String, dynamic> toJson() => _$InputAddUserInputToJson(this);
}

@JsonSerializable()
class InputHashtagMetaFilter extends JsonSerializable {
  InputHashtagMetaFilter(
      {this.id,
      this.metaName,
      this.blessed,
      this.has,
      this.and,
      this.or,
      this.not});

  @override
  factory InputHashtagMetaFilter.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagMetaFilterFromJson(json);

  final List<String>? id;

  final InputStringExactFilterStringRegExpFilter? metaName;

  final bool? blessed;

  @JsonKey(unknownEnumValue: EnumHashtagMetaHasFilter.$unknown)
  final List<EnumHashtagMetaHasFilter?>? has;

  final List<InputHashtagMetaFilter?>? and;

  final List<InputHashtagMetaFilter?>? or;

  final InputHashtagMetaFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagMetaFilterToJson(this);
}

@JsonSerializable()
class InputHashtagMetaOrder extends JsonSerializable {
  InputHashtagMetaOrder({this.asc, this.desc, this.then});

  @override
  factory InputHashtagMetaOrder.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagMetaOrderFromJson(json);

  @JsonKey(unknownEnumValue: EnumHashtagMetaOrderable.$unknown)
  final EnumHashtagMetaOrderable? asc;

  @JsonKey(unknownEnumValue: EnumHashtagMetaOrderable.$unknown)
  final EnumHashtagMetaOrderable? desc;

  final InputHashtagMetaOrder? then;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagMetaOrderToJson(this);
}

@JsonSerializable()
class InputHashtagMetaPatch extends JsonSerializable {
  InputHashtagMetaPatch(
      {this.iconName,
      this.blessed,
      this.blessedInt,
      this.hashtagVariants,
      this.skillCountAllTime,
      this.requestCountAllTime,
      this.skillCountLast24h,
      this.requestCountLast24h,
      this.skillCountLast1w,
      this.requestCountLast1w});

  @override
  factory InputHashtagMetaPatch.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagMetaPatchFromJson(json);

  final String? iconName;

  final bool? blessed;

  final int? blessedInt;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final int? skillCountAllTime;

  final int? requestCountAllTime;

  final int? skillCountLast24h;

  final int? requestCountLast24h;

  final int? skillCountLast1w;

  final int? requestCountLast1w;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagMetaPatchToJson(this);
}

@JsonSerializable()
class InputHashtagMetaRef extends JsonSerializable {
  InputHashtagMetaRef(
      {this.id,
      this.metaName,
      this.iconName,
      this.blessed,
      this.blessedInt,
      this.hashtagVariants,
      this.skillCountAllTime,
      this.requestCountAllTime,
      this.skillCountLast24h,
      this.requestCountLast24h,
      this.skillCountLast1w,
      this.requestCountLast1w});

  @override
  factory InputHashtagMetaRef.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagMetaRefFromJson(json);

  final String? id;

  final String? metaName;

  final String? iconName;

  final bool? blessed;

  final int? blessedInt;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final int? skillCountAllTime;

  final int? requestCountAllTime;

  final int? skillCountLast24h;

  final int? requestCountLast24h;

  final int? skillCountLast1w;

  final int? requestCountLast1w;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagMetaRefToJson(this);
}

@JsonSerializable()
class InputHashtagVariantFilter extends JsonSerializable {
  InputHashtagVariantFilter(
      {this.id, this.variantName, this.has, this.and, this.or, this.not});

  @override
  factory InputHashtagVariantFilter.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagVariantFilterFromJson(json);

  final List<String>? id;

  final InputStringExactFilterStringRegExpFilter? variantName;

  @JsonKey(unknownEnumValue: EnumHashtagVariantHasFilter.$unknown)
  final List<EnumHashtagVariantHasFilter?>? has;

  final List<InputHashtagVariantFilter?>? and;

  final List<InputHashtagVariantFilter?>? or;

  final InputHashtagVariantFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagVariantFilterToJson(this);
}

@JsonSerializable()
class InputHashtagVariantOrder extends JsonSerializable {
  InputHashtagVariantOrder({this.asc, this.desc, this.then});

  @override
  factory InputHashtagVariantOrder.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagVariantOrderFromJson(json);

  @JsonKey(unknownEnumValue: EnumHashtagVariantOrderable.$unknown)
  final EnumHashtagVariantOrderable? asc;

  @JsonKey(unknownEnumValue: EnumHashtagVariantOrderable.$unknown)
  final EnumHashtagVariantOrderable? desc;

  final InputHashtagVariantOrder? then;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagVariantOrderToJson(this);
}

@JsonSerializable()
class InputHashtagVariantPatch extends JsonSerializable {
  InputHashtagVariantPatch({this.hashtagMeta, this.skills, this.requests});

  @override
  factory InputHashtagVariantPatch.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagVariantPatchFromJson(json);

  final InputHashtagMetaRef? hashtagMeta;

  final List<InputSkillRef?>? skills;

  final List<InputRequestRef?>? requests;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagVariantPatchToJson(this);
}

@JsonSerializable()
class InputHashtagVariantRef extends JsonSerializable {
  InputHashtagVariantRef(
      {this.id,
      this.variantName,
      this.hashtagMeta,
      this.skills,
      this.requests});

  @override
  factory InputHashtagVariantRef.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagVariantRefFromJson(json);

  final String? id;

  final String? variantName;

  final InputHashtagMetaRef? hashtagMeta;

  final List<InputSkillRef?>? skills;

  final List<InputRequestRef?>? requests;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagVariantRefToJson(this);
}

@JsonSerializable()
class InputRequestFilter extends JsonSerializable {
  InputRequestFilter(
      {this.id,
      this.title,
      this.message,
      this.has,
      this.and,
      this.or,
      this.not});

  @override
  factory InputRequestFilter.fromJson(Map<String, dynamic> json) =>
      _$InputRequestFilterFromJson(json);

  final List<String>? id;

  final InputStringTermFilter? title;

  final InputStringTermFilter? message;

  @JsonKey(unknownEnumValue: EnumRequestHasFilter.$unknown)
  final List<EnumRequestHasFilter?>? has;

  final List<InputRequestFilter?>? and;

  final List<InputRequestFilter?>? or;

  final InputRequestFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputRequestFilterToJson(this);
}

@JsonSerializable()
class InputRequestOrder extends JsonSerializable {
  InputRequestOrder({this.asc, this.desc, this.then});

  @override
  factory InputRequestOrder.fromJson(Map<String, dynamic> json) =>
      _$InputRequestOrderFromJson(json);

  @JsonKey(unknownEnumValue: EnumRequestOrderable.$unknown)
  final EnumRequestOrderable? asc;

  @JsonKey(unknownEnumValue: EnumRequestOrderable.$unknown)
  final EnumRequestOrderable? desc;

  final InputRequestOrder? then;

  @override
  Map<String, dynamic> toJson() => _$InputRequestOrderToJson(this);
}

@JsonSerializable()
class InputRequestPatch extends JsonSerializable {
  InputRequestPatch(
      {this.owner,
      this.title,
      this.message,
      this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputRequestPatch.fromJson(Map<String, dynamic> json) =>
      _$InputRequestPatchFromJson(json);

  final InputUserRef? owner;

  final String? title;

  final String? message;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputRequestPatchToJson(this);
}

@JsonSerializable()
class InputRequestRef extends JsonSerializable {
  InputRequestRef(
      {this.id,
      this.owner,
      this.title,
      this.message,
      this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputRequestRef.fromJson(Map<String, dynamic> json) =>
      _$InputRequestRefFromJson(json);

  final String? id;

  final InputUserRef? owner;

  final String? title;

  final String? message;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputRequestRefToJson(this);
}

@JsonSerializable()
class InputSkillFilter extends JsonSerializable {
  InputSkillFilter({this.id, this.has, this.and, this.or, this.not});

  @override
  factory InputSkillFilter.fromJson(Map<String, dynamic> json) =>
      _$InputSkillFilterFromJson(json);

  final List<String>? id;

  @JsonKey(unknownEnumValue: EnumSkillHasFilter.$unknown)
  final List<EnumSkillHasFilter?>? has;

  final List<InputSkillFilter?>? and;

  final List<InputSkillFilter?>? or;

  final InputSkillFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputSkillFilterToJson(this);
}

@JsonSerializable()
class InputSkillOrder extends JsonSerializable {
  InputSkillOrder({this.asc, this.desc, this.then});

  @override
  factory InputSkillOrder.fromJson(Map<String, dynamic> json) =>
      _$InputSkillOrderFromJson(json);

  @JsonKey(unknownEnumValue: EnumSkillOrderable.$unknown)
  final EnumSkillOrderable? asc;

  @JsonKey(unknownEnumValue: EnumSkillOrderable.$unknown)
  final EnumSkillOrderable? desc;

  final InputSkillOrder? then;

  @override
  Map<String, dynamic> toJson() => _$InputSkillOrderToJson(this);
}

@JsonSerializable()
class InputSkillPatch extends JsonSerializable {
  InputSkillPatch(
      {this.owner,
      this.title,
      this.message,
      this.hashtagVariants,
      this.isAvailable,
      this.createdTimestamp});

  @override
  factory InputSkillPatch.fromJson(Map<String, dynamic> json) =>
      _$InputSkillPatchFromJson(json);

  final InputUserRef? owner;

  final String? title;

  final String? message;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final bool? isAvailable;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputSkillPatchToJson(this);
}

@JsonSerializable()
class InputSkillRef extends JsonSerializable {
  InputSkillRef(
      {this.id,
      this.owner,
      this.title,
      this.message,
      this.hashtagVariants,
      this.isAvailable,
      this.createdTimestamp});

  @override
  factory InputSkillRef.fromJson(Map<String, dynamic> json) =>
      _$InputSkillRefFromJson(json);

  final String? id;

  final InputUserRef? owner;

  final String? title;

  final String? message;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final bool? isAvailable;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputSkillRefToJson(this);
}

@JsonSerializable()
class InputStringExactFilterStringRegExpFilter extends JsonSerializable {
  InputStringExactFilterStringRegExpFilter(
      {this.eq,
      this.$in,
      this.le,
      this.lt,
      this.ge,
      this.gt,
      this.between,
      this.regexp});

  @override
  factory InputStringExactFilterStringRegExpFilter.fromJson(
          Map<String, dynamic> json) =>
      _$InputStringExactFilterStringRegExpFilterFromJson(json);

  final String? eq;

  @JsonKey(name: 'in')
  final List<String?>? $in;

  final String? le;

  final String? lt;

  final String? ge;

  final String? gt;

  final InputStringRange? between;

  final String? regexp;

  @override
  Map<String, dynamic> toJson() =>
      _$InputStringExactFilterStringRegExpFilterToJson(this);
}

@JsonSerializable()
class InputUpdateHashtagMetaInput extends JsonSerializable {
  InputUpdateHashtagMetaInput({required this.filter, this.$set, this.remove});

  @override
  factory InputUpdateHashtagMetaInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateHashtagMetaInputFromJson(json);

  final InputHashtagMetaFilter filter;

  @JsonKey(name: 'set')
  final InputHashtagMetaPatch? $set;

  final InputHashtagMetaPatch? remove;

  @override
  Map<String, dynamic> toJson() => _$InputUpdateHashtagMetaInputToJson(this);
}

@JsonSerializable()
class InputUpdateHashtagVariantInput extends JsonSerializable {
  InputUpdateHashtagVariantInput(
      {required this.filter, this.$set, this.remove});

  @override
  factory InputUpdateHashtagVariantInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateHashtagVariantInputFromJson(json);

  final InputHashtagVariantFilter filter;

  @JsonKey(name: 'set')
  final InputHashtagVariantPatch? $set;

  final InputHashtagVariantPatch? remove;

  @override
  Map<String, dynamic> toJson() => _$InputUpdateHashtagVariantInputToJson(this);
}

@JsonSerializable()
class InputUpdateRequestInput extends JsonSerializable {
  InputUpdateRequestInput({required this.filter, this.$set, this.remove});

  @override
  factory InputUpdateRequestInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateRequestInputFromJson(json);

  final InputRequestFilter filter;

  @JsonKey(name: 'set')
  final InputRequestPatch? $set;

  final InputRequestPatch? remove;

  @override
  Map<String, dynamic> toJson() => _$InputUpdateRequestInputToJson(this);
}

@JsonSerializable()
class InputUpdateSkillInput extends JsonSerializable {
  InputUpdateSkillInput({required this.filter, this.$set, this.remove});

  @override
  factory InputUpdateSkillInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateSkillInputFromJson(json);

  final InputSkillFilter filter;

  @JsonKey(name: 'set')
  final InputSkillPatch? $set;

  final InputSkillPatch? remove;

  @override
  Map<String, dynamic> toJson() => _$InputUpdateSkillInputToJson(this);
}

@JsonSerializable()
class InputUpdateUserInput extends JsonSerializable {
  InputUpdateUserInput({required this.filter, this.$set, this.remove});

  @override
  factory InputUpdateUserInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateUserInputFromJson(json);

  final InputUserFilter filter;

  @JsonKey(name: 'set')
  final InputUserPatch? $set;

  final InputUserPatch? remove;

  @override
  Map<String, dynamic> toJson() => _$InputUpdateUserInputToJson(this);
}

@JsonSerializable()
class InputUserFilter extends JsonSerializable {
  InputUserFilter({this.id, this.email, this.has, this.and, this.or, this.not});

  @override
  factory InputUserFilter.fromJson(Map<String, dynamic> json) =>
      _$InputUserFilterFromJson(json);

  final List<String>? id;

  final InputStringHashFilter? email;

  @JsonKey(unknownEnumValue: EnumUserHasFilter.$unknown)
  final List<EnumUserHasFilter?>? has;

  final List<InputUserFilter?>? and;

  final List<InputUserFilter?>? or;

  final InputUserFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputUserFilterToJson(this);
}

@JsonSerializable()
class InputUserOrder extends JsonSerializable {
  InputUserOrder({this.asc, this.desc, this.then});

  @override
  factory InputUserOrder.fromJson(Map<String, dynamic> json) =>
      _$InputUserOrderFromJson(json);

  @JsonKey(unknownEnumValue: EnumUserOrderable.$unknown)
  final EnumUserOrderable? asc;

  @JsonKey(unknownEnumValue: EnumUserOrderable.$unknown)
  final EnumUserOrderable? desc;

  final InputUserOrder? then;

  @override
  Map<String, dynamic> toJson() => _$InputUserOrderToJson(this);
}

@JsonSerializable()
class InputUserPatch extends JsonSerializable {
  InputUserPatch(
      {this.name,
      this.age,
      this.isAdmin,
      this.createdTimestamp,
      this.requests,
      this.skills});

  @override
  factory InputUserPatch.fromJson(Map<String, dynamic> json) =>
      _$InputUserPatchFromJson(json);

  final String? name;

  final int? age;

  final bool? isAdmin;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

  final List<InputSkillRef?>? skills;

  @override
  Map<String, dynamic> toJson() => _$InputUserPatchToJson(this);
}

@JsonSerializable()
class InputUserRef extends JsonSerializable {
  InputUserRef(
      {this.id,
      this.email,
      this.name,
      this.age,
      this.isAdmin,
      this.createdTimestamp,
      this.requests,
      this.skills});

  @override
  factory InputUserRef.fromJson(Map<String, dynamic> json) =>
      _$InputUserRefFromJson(json);

  final String? id;

  final String? email;

  final String? name;

  final int? age;

  final bool? isAdmin;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

  final List<InputSkillRef?>? skills;

  @override
  Map<String, dynamic> toJson() => _$InputUserRefToJson(this);
}

enum EnumDgraphIndex {
  @JsonValue('int')
  int,
  @JsonValue('int64')
  int64,
  @JsonValue('float')
  float,
  @JsonValue('bool')
  bool,
  @JsonValue('hash')
  hash,
  @JsonValue('exact')
  exact,
  @JsonValue('term')
  term,
  @JsonValue('fulltext')
  fulltext,
  @JsonValue('trigram')
  trigram,
  @JsonValue('regexp')
  regexp,
  @JsonValue('year')
  year,
  @JsonValue('month')
  month,
  @JsonValue('day')
  day,
  @JsonValue('hour')
  hour,
  @JsonValue('geo')
  geo,
  $unknown
}
enum EnumHTTPMethod {
  @JsonValue('GET')
  $get,
  @JsonValue('POST')
  post,
  @JsonValue('PUT')
  put,
  @JsonValue('PATCH')
  patch,
  @JsonValue('DELETE')
  delete,
  $unknown
}
enum EnumMode {
  @JsonValue('BATCH')
  batch,
  @JsonValue('SINGLE')
  single,
  $unknown
}
enum EnumHashtagMetaHasFilter {
  @JsonValue('metaName')
  metaName,
  @JsonValue('iconName')
  iconName,
  @JsonValue('blessed')
  blessed,
  @JsonValue('blessedInt')
  blessedInt,
  @JsonValue('hashtagVariants')
  hashtagVariants,
  @JsonValue('skillCountAllTime')
  skillCountAllTime,
  @JsonValue('requestCountAllTime')
  requestCountAllTime,
  @JsonValue('skillCountLast24h')
  skillCountLast24h,
  @JsonValue('requestCountLast24h')
  requestCountLast24h,
  @JsonValue('skillCountLast1w')
  skillCountLast1w,
  @JsonValue('requestCountLast1w')
  requestCountLast1w,
  $unknown
}
enum EnumHashtagMetaOrderable {
  @JsonValue('metaName')
  metaName,
  @JsonValue('iconName')
  iconName,
  @JsonValue('blessedInt')
  blessedInt,
  @JsonValue('skillCountAllTime')
  skillCountAllTime,
  @JsonValue('requestCountAllTime')
  requestCountAllTime,
  @JsonValue('skillCountLast24h')
  skillCountLast24h,
  @JsonValue('requestCountLast24h')
  requestCountLast24h,
  @JsonValue('skillCountLast1w')
  skillCountLast1w,
  @JsonValue('requestCountLast1w')
  requestCountLast1w,
  $unknown
}
enum EnumHashtagVariantHasFilter {
  @JsonValue('variantName')
  variantName,
  @JsonValue('hashtagMeta')
  hashtagMeta,
  @JsonValue('skills')
  skills,
  @JsonValue('requests')
  requests,
  $unknown
}
enum EnumHashtagVariantOrderable {
  @JsonValue('variantName')
  variantName,
  $unknown
}
enum EnumRequestHasFilter {
  @JsonValue('owner')
  owner,
  @JsonValue('title')
  title,
  @JsonValue('message')
  message,
  @JsonValue('hashtagVariants')
  hashtagVariants,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
enum EnumRequestOrderable {
  @JsonValue('title')
  title,
  @JsonValue('message')
  message,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
enum EnumSkillHasFilter {
  @JsonValue('owner')
  owner,
  @JsonValue('title')
  title,
  @JsonValue('message')
  message,
  @JsonValue('hashtagVariants')
  hashtagVariants,
  @JsonValue('isAvailable')
  isAvailable,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
enum EnumSkillOrderable {
  @JsonValue('title')
  title,
  @JsonValue('message')
  message,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
enum EnumUserHasFilter {
  @JsonValue('email')
  email,
  @JsonValue('name')
  name,
  @JsonValue('age')
  age,
  @JsonValue('isAdmin')
  isAdmin,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  @JsonValue('requests')
  requests,
  @JsonValue('skills')
  skills,
  $unknown
}
enum EnumUserOrderable {
  @JsonValue('email')
  email,
  @JsonValue('name')
  name,
  @JsonValue('age')
  age,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
const POSSIBLE_TYPES_MAP = const {};
