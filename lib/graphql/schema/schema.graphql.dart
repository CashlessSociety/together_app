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
class InputAddRequestInput extends JsonSerializable {
  InputAddRequestInput(
      {required this.owner,
      required this.title,
      required this.message,
      this.createdTimestamp});

  @override
  factory InputAddRequestInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddRequestInputFromJson(json);

  final InputUserRef owner;

  final String title;

  final String message;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputAddRequestInputToJson(this);
}

@JsonSerializable()
class InputAddUserInput extends JsonSerializable {
  InputAddUserInput(
      {required this.email,
      required this.name,
      this.age,
      this.createdTimestamp,
      this.requests});

  @override
  factory InputAddUserInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddUserInputFromJson(json);

  final String email;

  final String name;

  final int? age;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

  @override
  Map<String, dynamic> toJson() => _$InputAddUserInputToJson(this);
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
      {this.owner, this.title, this.message, this.createdTimestamp});

  @override
  factory InputRequestPatch.fromJson(Map<String, dynamic> json) =>
      _$InputRequestPatchFromJson(json);

  final InputUserRef? owner;

  final String? title;

  final String? message;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputRequestPatchToJson(this);
}

@JsonSerializable()
class InputRequestRef extends JsonSerializable {
  InputRequestRef(
      {this.id, this.owner, this.title, this.message, this.createdTimestamp});

  @override
  factory InputRequestRef.fromJson(Map<String, dynamic> json) =>
      _$InputRequestRefFromJson(json);

  final String? id;

  final InputUserRef? owner;

  final String? title;

  final String? message;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputRequestRefToJson(this);
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
  InputUserPatch({this.name, this.age, this.createdTimestamp, this.requests});

  @override
  factory InputUserPatch.fromJson(Map<String, dynamic> json) =>
      _$InputUserPatchFromJson(json);

  final String? name;

  final int? age;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

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
      this.createdTimestamp,
      this.requests});

  @override
  factory InputUserRef.fromJson(Map<String, dynamic> json) =>
      _$InputUserRefFromJson(json);

  final String? id;

  final String? email;

  final String? name;

  final int? age;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

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
enum EnumRequestHasFilter {
  @JsonValue('owner')
  owner,
  @JsonValue('title')
  title,
  @JsonValue('message')
  message,
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
enum EnumUserHasFilter {
  @JsonValue('email')
  email,
  @JsonValue('name')
  name,
  @JsonValue('age')
  age,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  @JsonValue('requests')
  requests,
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
