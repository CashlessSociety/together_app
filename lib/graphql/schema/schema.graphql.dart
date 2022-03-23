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
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([l$min, l$max]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputIntRange) || runtimeType != other.runtimeType)
      return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    return true;
  }
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
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([l$min, l$max]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputFloatRange) || runtimeType != other.runtimeType)
      return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    return true;
  }
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
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([l$min, l$max]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputInt64Range) || runtimeType != other.runtimeType)
      return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    return true;
  }
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
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([l$min, l$max]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDateTimeRange) || runtimeType != other.runtimeType)
      return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    return true;
  }
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
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([l$min, l$max]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringRange) || runtimeType != other.runtimeType)
      return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    return true;
  }
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
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$rule = rule;
    return Object.hashAll([
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not,
      l$rule
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputAuthRule) || runtimeType != other.runtimeType)
      return false;
    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    final l$rule = rule;
    final lOther$rule = other.rule;
    if (l$rule != lOther$rule) return false;
    return true;
  }
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
  int get hashCode {
    final l$url = url;
    final l$method = method;
    final l$body = body;
    final l$graphql = graphql;
    final l$mode = mode;
    final l$forwardHeaders = forwardHeaders;
    final l$secretHeaders = secretHeaders;
    final l$introspectionHeaders = introspectionHeaders;
    final l$skipIntrospection = skipIntrospection;
    return Object.hashAll([
      l$url,
      l$method,
      l$body,
      l$graphql,
      l$mode,
      l$forwardHeaders == null
          ? null
          : Object.hashAll(l$forwardHeaders.map((v) => v)),
      l$secretHeaders == null
          ? null
          : Object.hashAll(l$secretHeaders.map((v) => v)),
      l$introspectionHeaders == null
          ? null
          : Object.hashAll(l$introspectionHeaders.map((v) => v)),
      l$skipIntrospection
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputCustomHTTP) || runtimeType != other.runtimeType)
      return false;
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) return false;
    final l$method = method;
    final lOther$method = other.method;
    if (l$method != lOther$method) return false;
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) return false;
    final l$graphql = graphql;
    final lOther$graphql = other.graphql;
    if (l$graphql != lOther$graphql) return false;
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) return false;
    final l$forwardHeaders = forwardHeaders;
    final lOther$forwardHeaders = other.forwardHeaders;
    if (l$forwardHeaders != null && lOther$forwardHeaders != null) {
      if (l$forwardHeaders.length != lOther$forwardHeaders.length) return false;
      for (int i = 0; i < l$forwardHeaders.length; i++) {
        final l$forwardHeaders$entry = l$forwardHeaders[i];
        final lOther$forwardHeaders$entry = lOther$forwardHeaders[i];
        if (l$forwardHeaders$entry != lOther$forwardHeaders$entry) return false;
      }
    } else if (l$forwardHeaders != lOther$forwardHeaders) {
      return false;
    }

    final l$secretHeaders = secretHeaders;
    final lOther$secretHeaders = other.secretHeaders;
    if (l$secretHeaders != null && lOther$secretHeaders != null) {
      if (l$secretHeaders.length != lOther$secretHeaders.length) return false;
      for (int i = 0; i < l$secretHeaders.length; i++) {
        final l$secretHeaders$entry = l$secretHeaders[i];
        final lOther$secretHeaders$entry = lOther$secretHeaders[i];
        if (l$secretHeaders$entry != lOther$secretHeaders$entry) return false;
      }
    } else if (l$secretHeaders != lOther$secretHeaders) {
      return false;
    }

    final l$introspectionHeaders = introspectionHeaders;
    final lOther$introspectionHeaders = other.introspectionHeaders;
    if (l$introspectionHeaders != null && lOther$introspectionHeaders != null) {
      if (l$introspectionHeaders.length != lOther$introspectionHeaders.length)
        return false;
      for (int i = 0; i < l$introspectionHeaders.length; i++) {
        final l$introspectionHeaders$entry = l$introspectionHeaders[i];
        final lOther$introspectionHeaders$entry =
            lOther$introspectionHeaders[i];
        if (l$introspectionHeaders$entry != lOther$introspectionHeaders$entry)
          return false;
      }
    } else if (l$introspectionHeaders != lOther$introspectionHeaders) {
      return false;
    }

    final l$skipIntrospection = skipIntrospection;
    final lOther$skipIntrospection = other.skipIntrospection;
    if (l$skipIntrospection != lOther$skipIntrospection) return false;
    return true;
  }
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
  int get hashCode {
    final l$longitude = longitude;
    final l$latitude = latitude;
    return Object.hashAll([l$longitude, l$latitude]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPointRef) || runtimeType != other.runtimeType)
      return false;
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) return false;
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) return false;
    return true;
  }
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
  int get hashCode {
    final l$distance = distance;
    final l$coordinate = coordinate;
    return Object.hashAll([l$distance, l$coordinate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputNearFilter) || runtimeType != other.runtimeType)
      return false;
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) return false;
    final l$coordinate = coordinate;
    final lOther$coordinate = other.coordinate;
    if (l$coordinate != lOther$coordinate) return false;
    return true;
  }
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
  int get hashCode {
    final l$near = near;
    final l$within = within;
    return Object.hashAll([l$near, l$within]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPointGeoFilter) || runtimeType != other.runtimeType)
      return false;
    final l$near = near;
    final lOther$near = other.near;
    if (l$near != lOther$near) return false;
    final l$within = within;
    final lOther$within = other.within;
    if (l$within != lOther$within) return false;
    return true;
  }
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
  int get hashCode {
    final l$points = points;
    return Object.hashAll([Object.hashAll(l$points.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPointListRef) || runtimeType != other.runtimeType)
      return false;
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) return false;
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) return false;
    }

    return true;
  }
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
  int get hashCode {
    final l$coordinates = coordinates;
    return Object.hashAll([Object.hashAll(l$coordinates.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPolygonRef) || runtimeType != other.runtimeType)
      return false;
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (l$coordinates.length != lOther$coordinates.length) return false;
    for (int i = 0; i < l$coordinates.length; i++) {
      final l$coordinates$entry = l$coordinates[i];
      final lOther$coordinates$entry = lOther$coordinates[i];
      if (l$coordinates$entry != lOther$coordinates$entry) return false;
    }

    return true;
  }
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
  int get hashCode {
    final l$polygons = polygons;
    return Object.hashAll([Object.hashAll(l$polygons.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputMultiPolygonRef) || runtimeType != other.runtimeType)
      return false;
    final l$polygons = polygons;
    final lOther$polygons = other.polygons;
    if (l$polygons.length != lOther$polygons.length) return false;
    for (int i = 0; i < l$polygons.length; i++) {
      final l$polygons$entry = l$polygons[i];
      final lOther$polygons$entry = lOther$polygons[i];
      if (l$polygons$entry != lOther$polygons$entry) return false;
    }

    return true;
  }
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
  int get hashCode {
    final l$polygon = polygon;
    return Object.hashAll([l$polygon]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputWithinFilter) || runtimeType != other.runtimeType)
      return false;
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (l$polygon != lOther$polygon) return false;
    return true;
  }
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
  int get hashCode {
    final l$point = point;
    final l$polygon = polygon;
    return Object.hashAll([l$point, l$polygon]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputContainsFilter) || runtimeType != other.runtimeType)
      return false;
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) return false;
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (l$polygon != lOther$polygon) return false;
    return true;
  }
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
  int get hashCode {
    final l$polygon = polygon;
    final l$multiPolygon = multiPolygon;
    return Object.hashAll([l$polygon, l$multiPolygon]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputIntersectsFilter) || runtimeType != other.runtimeType)
      return false;
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (l$polygon != lOther$polygon) return false;
    final l$multiPolygon = multiPolygon;
    final lOther$multiPolygon = other.multiPolygon;
    if (l$multiPolygon != lOther$multiPolygon) return false;
    return true;
  }
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
  int get hashCode {
    final l$near = near;
    final l$within = within;
    final l$contains = contains;
    final l$intersects = intersects;
    return Object.hashAll([l$near, l$within, l$contains, l$intersects]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputPolygonGeoFilter) || runtimeType != other.runtimeType)
      return false;
    final l$near = near;
    final lOther$near = other.near;
    if (l$near != lOther$near) return false;
    final l$within = within;
    final lOther$within = other.within;
    if (l$within != lOther$within) return false;
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (l$contains != lOther$contains) return false;
    final l$intersects = intersects;
    final lOther$intersects = other.intersects;
    if (l$intersects != lOther$intersects) return false;
    return true;
  }
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
  int get hashCode {
    final l$$get = $get;
    final l$query = query;
    final l$password = password;
    final l$aggregate = aggregate;
    return Object.hashAll([l$$get, l$query, l$password, l$aggregate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGenerateQueryParams) ||
        runtimeType != other.runtimeType) return false;
    final l$$get = $get;
    final lOther$$get = other.$get;
    if (l$$get != lOther$$get) return false;
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) return false;
    return true;
  }
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
  int get hashCode {
    final l$add = add;
    final l$update = update;
    final l$delete = delete;
    return Object.hashAll([l$add, l$update, l$delete]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGenerateMutationParams) ||
        runtimeType != other.runtimeType) return false;
    final l$add = add;
    final lOther$add = other.add;
    if (l$add != lOther$add) return false;
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) return false;
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (l$delete != lOther$delete) return false;
    return true;
  }
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
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      l$eq,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$le,
      l$lt,
      l$ge,
      l$gt,
      l$between
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputIntFilter) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$le = le;
    final lOther$le = other.le;
    if (l$le != lOther$le) return false;
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (l$lt != lOther$lt) return false;
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (l$ge != lOther$ge) return false;
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (l$gt != lOther$gt) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    return true;
  }
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
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      l$eq,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$le,
      l$lt,
      l$ge,
      l$gt,
      l$between
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputInt64Filter) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$le = le;
    final lOther$le = other.le;
    if (l$le != lOther$le) return false;
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (l$lt != lOther$lt) return false;
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (l$ge != lOther$ge) return false;
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (l$gt != lOther$gt) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    return true;
  }
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
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      l$eq,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$le,
      l$lt,
      l$ge,
      l$gt,
      l$between
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputFloatFilter) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$le = le;
    final lOther$le = other.le;
    if (l$le != lOther$le) return false;
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (l$lt != lOther$lt) return false;
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (l$ge != lOther$ge) return false;
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (l$gt != lOther$gt) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    return true;
  }
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
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      l$eq,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$le,
      l$lt,
      l$ge,
      l$gt,
      l$between
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputDateTimeFilter) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$le = le;
    final lOther$le = other.le;
    if (l$le != lOther$le) return false;
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (l$lt != lOther$lt) return false;
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (l$ge != lOther$ge) return false;
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (l$gt != lOther$gt) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    return true;
  }
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
  int get hashCode {
    final l$allofterms = allofterms;
    final l$anyofterms = anyofterms;
    return Object.hashAll([l$allofterms, l$anyofterms]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringTermFilter) || runtimeType != other.runtimeType)
      return false;
    final l$allofterms = allofterms;
    final lOther$allofterms = other.allofterms;
    if (l$allofterms != lOther$allofterms) return false;
    final l$anyofterms = anyofterms;
    final lOther$anyofterms = other.anyofterms;
    if (l$anyofterms != lOther$anyofterms) return false;
    return true;
  }
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
  int get hashCode {
    final l$regexp = regexp;
    return Object.hashAll([l$regexp]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringRegExpFilter) || runtimeType != other.runtimeType)
      return false;
    final l$regexp = regexp;
    final lOther$regexp = other.regexp;
    if (l$regexp != lOther$regexp) return false;
    return true;
  }
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
  int get hashCode {
    final l$alloftext = alloftext;
    final l$anyoftext = anyoftext;
    return Object.hashAll([l$alloftext, l$anyoftext]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringFullTextFilter) ||
        runtimeType != other.runtimeType) return false;
    final l$alloftext = alloftext;
    final lOther$alloftext = other.alloftext;
    if (l$alloftext != lOther$alloftext) return false;
    final l$anyoftext = anyoftext;
    final lOther$anyoftext = other.anyoftext;
    if (l$anyoftext != lOther$anyoftext) return false;
    return true;
  }
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
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      l$eq,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$le,
      l$lt,
      l$ge,
      l$gt,
      l$between
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringExactFilter) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$le = le;
    final lOther$le = other.le;
    if (l$le != lOther$le) return false;
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (l$lt != lOther$lt) return false;
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (l$ge != lOther$ge) return false;
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (l$gt != lOther$gt) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    return true;
  }
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
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    return Object.hashAll(
        [l$eq, l$$in == null ? null : Object.hashAll(l$$in.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringHashFilter) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    return true;
  }
}

@JsonSerializable()
class InputAddGratitudeInput extends JsonSerializable {
  InputAddGratitudeInput(
      {required this.from,
      required this.to,
      this.message,
      required this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputAddGratitudeInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddGratitudeInputFromJson(json);

  final InputUserRef from;

  final InputUserRef to;

  final String? message;

  final List<InputHashtagVariantRef?> hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputAddGratitudeInputToJson(this);
  int get hashCode {
    final l$from = from;
    final l$to = to;
    final l$message = message;
    final l$hashtagVariants = hashtagVariants;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$from,
      l$to,
      l$message,
      Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputAddGratitudeInput) || runtimeType != other.runtimeType)
      return false;
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) return false;
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants.length != lOther$hashtagVariants.length) return false;
    for (int i = 0; i < l$hashtagVariants.length; i++) {
      final l$hashtagVariants$entry = l$hashtagVariants[i];
      final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
      if (l$hashtagVariants$entry != lOther$hashtagVariants$entry) return false;
    }

    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
}

@JsonSerializable()
class InputAddHashtagInput extends JsonSerializable {
  InputAddHashtagInput(
      {required this.name,
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
  factory InputAddHashtagInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddHashtagInputFromJson(json);

  final String name;

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
  Map<String, dynamic> toJson() => _$InputAddHashtagInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$blessedInt = blessedInt;
    final l$hashtagVariants = hashtagVariants;
    final l$skillCountAllTime = skillCountAllTime;
    final l$requestCountAllTime = requestCountAllTime;
    final l$skillCountLast24h = skillCountLast24h;
    final l$requestCountLast24h = requestCountLast24h;
    final l$skillCountLast1w = skillCountLast1w;
    final l$requestCountLast1w = requestCountLast1w;
    return Object.hashAll([
      l$name,
      l$iconName,
      l$blessed,
      l$blessedInt,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$skillCountAllTime,
      l$requestCountAllTime,
      l$skillCountLast24h,
      l$requestCountLast24h,
      l$skillCountLast1w,
      l$requestCountLast1w
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputAddHashtagInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$iconName = iconName;
    final lOther$iconName = other.iconName;
    if (l$iconName != lOther$iconName) return false;
    final l$blessed = blessed;
    final lOther$blessed = other.blessed;
    if (l$blessed != lOther$blessed) return false;
    final l$blessedInt = blessedInt;
    final lOther$blessedInt = other.blessedInt;
    if (l$blessedInt != lOther$blessedInt) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$skillCountAllTime = skillCountAllTime;
    final lOther$skillCountAllTime = other.skillCountAllTime;
    if (l$skillCountAllTime != lOther$skillCountAllTime) return false;
    final l$requestCountAllTime = requestCountAllTime;
    final lOther$requestCountAllTime = other.requestCountAllTime;
    if (l$requestCountAllTime != lOther$requestCountAllTime) return false;
    final l$skillCountLast24h = skillCountLast24h;
    final lOther$skillCountLast24h = other.skillCountLast24h;
    if (l$skillCountLast24h != lOther$skillCountLast24h) return false;
    final l$requestCountLast24h = requestCountLast24h;
    final lOther$requestCountLast24h = other.requestCountLast24h;
    if (l$requestCountLast24h != lOther$requestCountLast24h) return false;
    final l$skillCountLast1w = skillCountLast1w;
    final lOther$skillCountLast1w = other.skillCountLast1w;
    if (l$skillCountLast1w != lOther$skillCountLast1w) return false;
    final l$requestCountLast1w = requestCountLast1w;
    final lOther$requestCountLast1w = other.requestCountLast1w;
    if (l$requestCountLast1w != lOther$requestCountLast1w) return false;
    return true;
  }
}

@JsonSerializable()
class InputAddHashtagVariantInput extends JsonSerializable {
  InputAddHashtagVariantInput(
      {required this.variant,
      required this.hashtag,
      this.skills,
      this.requests,
      this.gratitudes});

  @override
  factory InputAddHashtagVariantInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddHashtagVariantInputFromJson(json);

  final String variant;

  final InputHashtagRef hashtag;

  final List<InputSkillRef?>? skills;

  final List<InputRequestRef?>? requests;

  final List<InputGratitudeRef?>? gratitudes;

  @override
  Map<String, dynamic> toJson() => _$InputAddHashtagVariantInputToJson(this);
  int get hashCode {
    final l$variant = variant;
    final l$hashtag = hashtag;
    final l$skills = skills;
    final l$requests = requests;
    final l$gratitudes = gratitudes;
    return Object.hashAll([
      l$variant,
      l$hashtag,
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$requests == null ? null : Object.hashAll(l$requests.map((v) => v)),
      l$gratitudes == null ? null : Object.hashAll(l$gratitudes.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputAddHashtagVariantInput) ||
        runtimeType != other.runtimeType) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != lOther$hashtag) return false;
    final l$skills = skills;
    final lOther$skills = other.skills;
    if (l$skills != null && lOther$skills != null) {
      if (l$skills.length != lOther$skills.length) return false;
      for (int i = 0; i < l$skills.length; i++) {
        final l$skills$entry = l$skills[i];
        final lOther$skills$entry = lOther$skills[i];
        if (l$skills$entry != lOther$skills$entry) return false;
      }
    } else if (l$skills != lOther$skills) {
      return false;
    }

    final l$requests = requests;
    final lOther$requests = other.requests;
    if (l$requests != null && lOther$requests != null) {
      if (l$requests.length != lOther$requests.length) return false;
      for (int i = 0; i < l$requests.length; i++) {
        final l$requests$entry = l$requests[i];
        final lOther$requests$entry = lOther$requests[i];
        if (l$requests$entry != lOther$requests$entry) return false;
      }
    } else if (l$requests != lOther$requests) {
      return false;
    }

    final l$gratitudes = gratitudes;
    final lOther$gratitudes = other.gratitudes;
    if (l$gratitudes != null && lOther$gratitudes != null) {
      if (l$gratitudes.length != lOther$gratitudes.length) return false;
      for (int i = 0; i < l$gratitudes.length; i++) {
        final l$gratitudes$entry = l$gratitudes[i];
        final lOther$gratitudes$entry = lOther$gratitudes[i];
        if (l$gratitudes$entry != lOther$gratitudes$entry) return false;
      }
    } else if (l$gratitudes != lOther$gratitudes) {
      return false;
    }

    return true;
  }
}

@JsonSerializable()
class InputAddRequestInput extends JsonSerializable {
  InputAddRequestInput(
      {required this.owner,
      required this.title,
      required this.message,
      required this.status,
      required this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputAddRequestInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddRequestInputFromJson(json);

  final InputUserRef owner;

  final String title;

  final String message;

  @JsonKey(unknownEnumValue: EnumRequestStatus.$unknown)
  final EnumRequestStatus status;

  final List<InputHashtagVariantRef?> hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputAddRequestInputToJson(this);
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$message = message;
    final l$status = status;
    final l$hashtagVariants = hashtagVariants;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$owner,
      l$title,
      l$message,
      l$status,
      Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputAddRequestInput) || runtimeType != other.runtimeType)
      return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants.length != lOther$hashtagVariants.length) return false;
    for (int i = 0; i < l$hashtagVariants.length; i++) {
      final l$hashtagVariants$entry = l$hashtagVariants[i];
      final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
      if (l$hashtagVariants$entry != lOther$hashtagVariants$entry) return false;
    }

    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
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
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$message = message;
    final l$hashtagVariants = hashtagVariants;
    final l$isAvailable = isAvailable;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$owner,
      l$title,
      l$message,
      Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$isAvailable,
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputAddSkillInput) || runtimeType != other.runtimeType)
      return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants.length != lOther$hashtagVariants.length) return false;
    for (int i = 0; i < l$hashtagVariants.length; i++) {
      final l$hashtagVariants$entry = l$hashtagVariants[i];
      final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
      if (l$hashtagVariants$entry != lOther$hashtagVariants$entry) return false;
    }

    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
}

@JsonSerializable()
class InputAddUserInput extends JsonSerializable {
  InputAddUserInput(
      {required this.email,
      required this.name,
      this.age,
      this.bio,
      this.avatar,
      this.isAdmin,
      this.createdTimestamp,
      this.requests,
      this.skills,
      this.gratitudeSent,
      this.gratitudeReceived});

  @override
  factory InputAddUserInput.fromJson(Map<String, dynamic> json) =>
      _$InputAddUserInputFromJson(json);

  final String email;

  final String name;

  final int? age;

  final String? bio;

  final String? avatar;

  final bool? isAdmin;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

  final List<InputSkillRef?>? skills;

  final List<InputGratitudeRef?>? gratitudeSent;

  final List<InputGratitudeRef?>? gratitudeReceived;

  @override
  Map<String, dynamic> toJson() => _$InputAddUserInputToJson(this);
  int get hashCode {
    final l$email = email;
    final l$name = name;
    final l$age = age;
    final l$bio = bio;
    final l$avatar = avatar;
    final l$isAdmin = isAdmin;
    final l$createdTimestamp = createdTimestamp;
    final l$requests = requests;
    final l$skills = skills;
    final l$gratitudeSent = gratitudeSent;
    final l$gratitudeReceived = gratitudeReceived;
    return Object.hashAll([
      l$email,
      l$name,
      l$age,
      l$bio,
      l$avatar,
      l$isAdmin,
      l$createdTimestamp,
      l$requests == null ? null : Object.hashAll(l$requests.map((v) => v)),
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$gratitudeSent == null
          ? null
          : Object.hashAll(l$gratitudeSent.map((v) => v)),
      l$gratitudeReceived == null
          ? null
          : Object.hashAll(l$gratitudeReceived.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputAddUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$requests = requests;
    final lOther$requests = other.requests;
    if (l$requests != null && lOther$requests != null) {
      if (l$requests.length != lOther$requests.length) return false;
      for (int i = 0; i < l$requests.length; i++) {
        final l$requests$entry = l$requests[i];
        final lOther$requests$entry = lOther$requests[i];
        if (l$requests$entry != lOther$requests$entry) return false;
      }
    } else if (l$requests != lOther$requests) {
      return false;
    }

    final l$skills = skills;
    final lOther$skills = other.skills;
    if (l$skills != null && lOther$skills != null) {
      if (l$skills.length != lOther$skills.length) return false;
      for (int i = 0; i < l$skills.length; i++) {
        final l$skills$entry = l$skills[i];
        final lOther$skills$entry = lOther$skills[i];
        if (l$skills$entry != lOther$skills$entry) return false;
      }
    } else if (l$skills != lOther$skills) {
      return false;
    }

    final l$gratitudeSent = gratitudeSent;
    final lOther$gratitudeSent = other.gratitudeSent;
    if (l$gratitudeSent != null && lOther$gratitudeSent != null) {
      if (l$gratitudeSent.length != lOther$gratitudeSent.length) return false;
      for (int i = 0; i < l$gratitudeSent.length; i++) {
        final l$gratitudeSent$entry = l$gratitudeSent[i];
        final lOther$gratitudeSent$entry = lOther$gratitudeSent[i];
        if (l$gratitudeSent$entry != lOther$gratitudeSent$entry) return false;
      }
    } else if (l$gratitudeSent != lOther$gratitudeSent) {
      return false;
    }

    final l$gratitudeReceived = gratitudeReceived;
    final lOther$gratitudeReceived = other.gratitudeReceived;
    if (l$gratitudeReceived != null && lOther$gratitudeReceived != null) {
      if (l$gratitudeReceived.length != lOther$gratitudeReceived.length)
        return false;
      for (int i = 0; i < l$gratitudeReceived.length; i++) {
        final l$gratitudeReceived$entry = l$gratitudeReceived[i];
        final lOther$gratitudeReceived$entry = lOther$gratitudeReceived[i];
        if (l$gratitudeReceived$entry != lOther$gratitudeReceived$entry)
          return false;
      }
    } else if (l$gratitudeReceived != lOther$gratitudeReceived) {
      return false;
    }

    return true;
  }
}

@JsonSerializable()
class InputGratitudeFilter extends JsonSerializable {
  InputGratitudeFilter({this.id, this.has, this.and, this.or, this.not});

  @override
  factory InputGratitudeFilter.fromJson(Map<String, dynamic> json) =>
      _$InputGratitudeFilterFromJson(json);

  final List<String>? id;

  @JsonKey(unknownEnumValue: EnumGratitudeHasFilter.$unknown)
  final List<EnumGratitudeHasFilter?>? has;

  final List<InputGratitudeFilter?>? and;

  final List<InputGratitudeFilter?>? or;

  final InputGratitudeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputGratitudeFilterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$has = has;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      l$id == null ? null : Object.hashAll(l$id.map((v) => v)),
      l$has == null ? null : Object.hashAll(l$has.map((v) => v)),
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGratitudeFilter) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != null && lOther$id != null) {
      if (l$id.length != lOther$id.length) return false;
      for (int i = 0; i < l$id.length; i++) {
        final l$id$entry = l$id[i];
        final lOther$id$entry = lOther$id[i];
        if (l$id$entry != lOther$id$entry) return false;
      }
    } else if (l$id != lOther$id) {
      return false;
    }

    final l$has = has;
    final lOther$has = other.has;
    if (l$has != null && lOther$has != null) {
      if (l$has.length != lOther$has.length) return false;
      for (int i = 0; i < l$has.length; i++) {
        final l$has$entry = l$has[i];
        final lOther$has$entry = lOther$has[i];
        if (l$has$entry != lOther$has$entry) return false;
      }
    } else if (l$has != lOther$has) {
      return false;
    }

    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    return true;
  }
}

@JsonSerializable()
class InputGratitudeOrder extends JsonSerializable {
  InputGratitudeOrder({this.asc, this.desc, this.then});

  @override
  factory InputGratitudeOrder.fromJson(Map<String, dynamic> json) =>
      _$InputGratitudeOrderFromJson(json);

  @JsonKey(unknownEnumValue: EnumGratitudeOrderable.$unknown)
  final EnumGratitudeOrderable? asc;

  @JsonKey(unknownEnumValue: EnumGratitudeOrderable.$unknown)
  final EnumGratitudeOrderable? desc;

  final InputGratitudeOrder? then;

  @override
  Map<String, dynamic> toJson() => _$InputGratitudeOrderToJson(this);
  int get hashCode {
    final l$asc = asc;
    final l$desc = desc;
    final l$then = then;
    return Object.hashAll([l$asc, l$desc, l$then]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGratitudeOrder) || runtimeType != other.runtimeType)
      return false;
    final l$asc = asc;
    final lOther$asc = other.asc;
    if (l$asc != lOther$asc) return false;
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) return false;
    final l$then = then;
    final lOther$then = other.then;
    if (l$then != lOther$then) return false;
    return true;
  }
}

@JsonSerializable()
class InputGratitudePatch extends JsonSerializable {
  InputGratitudePatch(
      {this.from,
      this.to,
      this.message,
      this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputGratitudePatch.fromJson(Map<String, dynamic> json) =>
      _$InputGratitudePatchFromJson(json);

  final InputUserRef? from;

  final InputUserRef? to;

  final String? message;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputGratitudePatchToJson(this);
  int get hashCode {
    final l$from = from;
    final l$to = to;
    final l$message = message;
    final l$hashtagVariants = hashtagVariants;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$from,
      l$to,
      l$message,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGratitudePatch) || runtimeType != other.runtimeType)
      return false;
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) return false;
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
}

@JsonSerializable()
class InputGratitudeRef extends JsonSerializable {
  InputGratitudeRef(
      {this.id,
      this.from,
      this.to,
      this.message,
      this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputGratitudeRef.fromJson(Map<String, dynamic> json) =>
      _$InputGratitudeRefFromJson(json);

  final String? id;

  final InputUserRef? from;

  final InputUserRef? to;

  final String? message;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputGratitudeRefToJson(this);
  int get hashCode {
    final l$id = id;
    final l$from = from;
    final l$to = to;
    final l$message = message;
    final l$hashtagVariants = hashtagVariants;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$id,
      l$from,
      l$to,
      l$message,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputGratitudeRef) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) return false;
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
}

@JsonSerializable()
class InputHashtagFilter extends JsonSerializable {
  InputHashtagFilter(
      {this.id,
      this.name,
      this.blessed,
      this.has,
      this.and,
      this.or,
      this.not});

  @override
  factory InputHashtagFilter.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagFilterFromJson(json);

  final List<String>? id;

  final InputStringExactFilterStringRegExpFilter? name;

  final bool? blessed;

  @JsonKey(unknownEnumValue: EnumHashtagHasFilter.$unknown)
  final List<EnumHashtagHasFilter?>? has;

  final List<InputHashtagFilter?>? and;

  final List<InputHashtagFilter?>? or;

  final InputHashtagFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagFilterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$blessed = blessed;
    final l$has = has;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      l$id == null ? null : Object.hashAll(l$id.map((v) => v)),
      l$name,
      l$blessed,
      l$has == null ? null : Object.hashAll(l$has.map((v) => v)),
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagFilter) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != null && lOther$id != null) {
      if (l$id.length != lOther$id.length) return false;
      for (int i = 0; i < l$id.length; i++) {
        final l$id$entry = l$id[i];
        final lOther$id$entry = lOther$id[i];
        if (l$id$entry != lOther$id$entry) return false;
      }
    } else if (l$id != lOther$id) {
      return false;
    }

    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$blessed = blessed;
    final lOther$blessed = other.blessed;
    if (l$blessed != lOther$blessed) return false;
    final l$has = has;
    final lOther$has = other.has;
    if (l$has != null && lOther$has != null) {
      if (l$has.length != lOther$has.length) return false;
      for (int i = 0; i < l$has.length; i++) {
        final l$has$entry = l$has[i];
        final lOther$has$entry = lOther$has[i];
        if (l$has$entry != lOther$has$entry) return false;
      }
    } else if (l$has != lOther$has) {
      return false;
    }

    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    return true;
  }
}

@JsonSerializable()
class InputHashtagOrder extends JsonSerializable {
  InputHashtagOrder({this.asc, this.desc, this.then});

  @override
  factory InputHashtagOrder.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagOrderFromJson(json);

  @JsonKey(unknownEnumValue: EnumHashtagOrderable.$unknown)
  final EnumHashtagOrderable? asc;

  @JsonKey(unknownEnumValue: EnumHashtagOrderable.$unknown)
  final EnumHashtagOrderable? desc;

  final InputHashtagOrder? then;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagOrderToJson(this);
  int get hashCode {
    final l$asc = asc;
    final l$desc = desc;
    final l$then = then;
    return Object.hashAll([l$asc, l$desc, l$then]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagOrder) || runtimeType != other.runtimeType)
      return false;
    final l$asc = asc;
    final lOther$asc = other.asc;
    if (l$asc != lOther$asc) return false;
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) return false;
    final l$then = then;
    final lOther$then = other.then;
    if (l$then != lOther$then) return false;
    return true;
  }
}

@JsonSerializable()
class InputHashtagPatch extends JsonSerializable {
  InputHashtagPatch(
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
  factory InputHashtagPatch.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagPatchFromJson(json);

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
  Map<String, dynamic> toJson() => _$InputHashtagPatchToJson(this);
  int get hashCode {
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$blessedInt = blessedInt;
    final l$hashtagVariants = hashtagVariants;
    final l$skillCountAllTime = skillCountAllTime;
    final l$requestCountAllTime = requestCountAllTime;
    final l$skillCountLast24h = skillCountLast24h;
    final l$requestCountLast24h = requestCountLast24h;
    final l$skillCountLast1w = skillCountLast1w;
    final l$requestCountLast1w = requestCountLast1w;
    return Object.hashAll([
      l$iconName,
      l$blessed,
      l$blessedInt,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$skillCountAllTime,
      l$requestCountAllTime,
      l$skillCountLast24h,
      l$requestCountLast24h,
      l$skillCountLast1w,
      l$requestCountLast1w
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagPatch) || runtimeType != other.runtimeType)
      return false;
    final l$iconName = iconName;
    final lOther$iconName = other.iconName;
    if (l$iconName != lOther$iconName) return false;
    final l$blessed = blessed;
    final lOther$blessed = other.blessed;
    if (l$blessed != lOther$blessed) return false;
    final l$blessedInt = blessedInt;
    final lOther$blessedInt = other.blessedInt;
    if (l$blessedInt != lOther$blessedInt) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$skillCountAllTime = skillCountAllTime;
    final lOther$skillCountAllTime = other.skillCountAllTime;
    if (l$skillCountAllTime != lOther$skillCountAllTime) return false;
    final l$requestCountAllTime = requestCountAllTime;
    final lOther$requestCountAllTime = other.requestCountAllTime;
    if (l$requestCountAllTime != lOther$requestCountAllTime) return false;
    final l$skillCountLast24h = skillCountLast24h;
    final lOther$skillCountLast24h = other.skillCountLast24h;
    if (l$skillCountLast24h != lOther$skillCountLast24h) return false;
    final l$requestCountLast24h = requestCountLast24h;
    final lOther$requestCountLast24h = other.requestCountLast24h;
    if (l$requestCountLast24h != lOther$requestCountLast24h) return false;
    final l$skillCountLast1w = skillCountLast1w;
    final lOther$skillCountLast1w = other.skillCountLast1w;
    if (l$skillCountLast1w != lOther$skillCountLast1w) return false;
    final l$requestCountLast1w = requestCountLast1w;
    final lOther$requestCountLast1w = other.requestCountLast1w;
    if (l$requestCountLast1w != lOther$requestCountLast1w) return false;
    return true;
  }
}

@JsonSerializable()
class InputHashtagRef extends JsonSerializable {
  InputHashtagRef(
      {this.id,
      this.name,
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
  factory InputHashtagRef.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagRefFromJson(json);

  final String? id;

  final String? name;

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
  Map<String, dynamic> toJson() => _$InputHashtagRefToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$blessedInt = blessedInt;
    final l$hashtagVariants = hashtagVariants;
    final l$skillCountAllTime = skillCountAllTime;
    final l$requestCountAllTime = requestCountAllTime;
    final l$skillCountLast24h = skillCountLast24h;
    final l$requestCountLast24h = requestCountLast24h;
    final l$skillCountLast1w = skillCountLast1w;
    final l$requestCountLast1w = requestCountLast1w;
    return Object.hashAll([
      l$id,
      l$name,
      l$iconName,
      l$blessed,
      l$blessedInt,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$skillCountAllTime,
      l$requestCountAllTime,
      l$skillCountLast24h,
      l$requestCountLast24h,
      l$skillCountLast1w,
      l$requestCountLast1w
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagRef) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$iconName = iconName;
    final lOther$iconName = other.iconName;
    if (l$iconName != lOther$iconName) return false;
    final l$blessed = blessed;
    final lOther$blessed = other.blessed;
    if (l$blessed != lOther$blessed) return false;
    final l$blessedInt = blessedInt;
    final lOther$blessedInt = other.blessedInt;
    if (l$blessedInt != lOther$blessedInt) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$skillCountAllTime = skillCountAllTime;
    final lOther$skillCountAllTime = other.skillCountAllTime;
    if (l$skillCountAllTime != lOther$skillCountAllTime) return false;
    final l$requestCountAllTime = requestCountAllTime;
    final lOther$requestCountAllTime = other.requestCountAllTime;
    if (l$requestCountAllTime != lOther$requestCountAllTime) return false;
    final l$skillCountLast24h = skillCountLast24h;
    final lOther$skillCountLast24h = other.skillCountLast24h;
    if (l$skillCountLast24h != lOther$skillCountLast24h) return false;
    final l$requestCountLast24h = requestCountLast24h;
    final lOther$requestCountLast24h = other.requestCountLast24h;
    if (l$requestCountLast24h != lOther$requestCountLast24h) return false;
    final l$skillCountLast1w = skillCountLast1w;
    final lOther$skillCountLast1w = other.skillCountLast1w;
    if (l$skillCountLast1w != lOther$skillCountLast1w) return false;
    final l$requestCountLast1w = requestCountLast1w;
    final lOther$requestCountLast1w = other.requestCountLast1w;
    if (l$requestCountLast1w != lOther$requestCountLast1w) return false;
    return true;
  }
}

@JsonSerializable()
class InputHashtagVariantFilter extends JsonSerializable {
  InputHashtagVariantFilter(
      {this.id, this.variant, this.has, this.and, this.or, this.not});

  @override
  factory InputHashtagVariantFilter.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagVariantFilterFromJson(json);

  final List<String>? id;

  final InputStringExactFilterStringRegExpFilter? variant;

  @JsonKey(unknownEnumValue: EnumHashtagVariantHasFilter.$unknown)
  final List<EnumHashtagVariantHasFilter?>? has;

  final List<InputHashtagVariantFilter?>? and;

  final List<InputHashtagVariantFilter?>? or;

  final InputHashtagVariantFilter? not;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagVariantFilterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$variant = variant;
    final l$has = has;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      l$id == null ? null : Object.hashAll(l$id.map((v) => v)),
      l$variant,
      l$has == null ? null : Object.hashAll(l$has.map((v) => v)),
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagVariantFilter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != null && lOther$id != null) {
      if (l$id.length != lOther$id.length) return false;
      for (int i = 0; i < l$id.length; i++) {
        final l$id$entry = l$id[i];
        final lOther$id$entry = lOther$id[i];
        if (l$id$entry != lOther$id$entry) return false;
      }
    } else if (l$id != lOther$id) {
      return false;
    }

    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$has = has;
    final lOther$has = other.has;
    if (l$has != null && lOther$has != null) {
      if (l$has.length != lOther$has.length) return false;
      for (int i = 0; i < l$has.length; i++) {
        final l$has$entry = l$has[i];
        final lOther$has$entry = lOther$has[i];
        if (l$has$entry != lOther$has$entry) return false;
      }
    } else if (l$has != lOther$has) {
      return false;
    }

    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    return true;
  }
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
  int get hashCode {
    final l$asc = asc;
    final l$desc = desc;
    final l$then = then;
    return Object.hashAll([l$asc, l$desc, l$then]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagVariantOrder) ||
        runtimeType != other.runtimeType) return false;
    final l$asc = asc;
    final lOther$asc = other.asc;
    if (l$asc != lOther$asc) return false;
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) return false;
    final l$then = then;
    final lOther$then = other.then;
    if (l$then != lOther$then) return false;
    return true;
  }
}

@JsonSerializable()
class InputHashtagVariantPatch extends JsonSerializable {
  InputHashtagVariantPatch(
      {this.hashtag, this.skills, this.requests, this.gratitudes});

  @override
  factory InputHashtagVariantPatch.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagVariantPatchFromJson(json);

  final InputHashtagRef? hashtag;

  final List<InputSkillRef?>? skills;

  final List<InputRequestRef?>? requests;

  final List<InputGratitudeRef?>? gratitudes;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagVariantPatchToJson(this);
  int get hashCode {
    final l$hashtag = hashtag;
    final l$skills = skills;
    final l$requests = requests;
    final l$gratitudes = gratitudes;
    return Object.hashAll([
      l$hashtag,
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$requests == null ? null : Object.hashAll(l$requests.map((v) => v)),
      l$gratitudes == null ? null : Object.hashAll(l$gratitudes.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagVariantPatch) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != lOther$hashtag) return false;
    final l$skills = skills;
    final lOther$skills = other.skills;
    if (l$skills != null && lOther$skills != null) {
      if (l$skills.length != lOther$skills.length) return false;
      for (int i = 0; i < l$skills.length; i++) {
        final l$skills$entry = l$skills[i];
        final lOther$skills$entry = lOther$skills[i];
        if (l$skills$entry != lOther$skills$entry) return false;
      }
    } else if (l$skills != lOther$skills) {
      return false;
    }

    final l$requests = requests;
    final lOther$requests = other.requests;
    if (l$requests != null && lOther$requests != null) {
      if (l$requests.length != lOther$requests.length) return false;
      for (int i = 0; i < l$requests.length; i++) {
        final l$requests$entry = l$requests[i];
        final lOther$requests$entry = lOther$requests[i];
        if (l$requests$entry != lOther$requests$entry) return false;
      }
    } else if (l$requests != lOther$requests) {
      return false;
    }

    final l$gratitudes = gratitudes;
    final lOther$gratitudes = other.gratitudes;
    if (l$gratitudes != null && lOther$gratitudes != null) {
      if (l$gratitudes.length != lOther$gratitudes.length) return false;
      for (int i = 0; i < l$gratitudes.length; i++) {
        final l$gratitudes$entry = l$gratitudes[i];
        final lOther$gratitudes$entry = lOther$gratitudes[i];
        if (l$gratitudes$entry != lOther$gratitudes$entry) return false;
      }
    } else if (l$gratitudes != lOther$gratitudes) {
      return false;
    }

    return true;
  }
}

@JsonSerializable()
class InputHashtagVariantRef extends JsonSerializable {
  InputHashtagVariantRef(
      {this.id,
      this.variant,
      this.hashtag,
      this.skills,
      this.requests,
      this.gratitudes});

  @override
  factory InputHashtagVariantRef.fromJson(Map<String, dynamic> json) =>
      _$InputHashtagVariantRefFromJson(json);

  final String? id;

  final String? variant;

  final InputHashtagRef? hashtag;

  final List<InputSkillRef?>? skills;

  final List<InputRequestRef?>? requests;

  final List<InputGratitudeRef?>? gratitudes;

  @override
  Map<String, dynamic> toJson() => _$InputHashtagVariantRefToJson(this);
  int get hashCode {
    final l$id = id;
    final l$variant = variant;
    final l$hashtag = hashtag;
    final l$skills = skills;
    final l$requests = requests;
    final l$gratitudes = gratitudes;
    return Object.hashAll([
      l$id,
      l$variant,
      l$hashtag,
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$requests == null ? null : Object.hashAll(l$requests.map((v) => v)),
      l$gratitudes == null ? null : Object.hashAll(l$gratitudes.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputHashtagVariantRef) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != lOther$hashtag) return false;
    final l$skills = skills;
    final lOther$skills = other.skills;
    if (l$skills != null && lOther$skills != null) {
      if (l$skills.length != lOther$skills.length) return false;
      for (int i = 0; i < l$skills.length; i++) {
        final l$skills$entry = l$skills[i];
        final lOther$skills$entry = lOther$skills[i];
        if (l$skills$entry != lOther$skills$entry) return false;
      }
    } else if (l$skills != lOther$skills) {
      return false;
    }

    final l$requests = requests;
    final lOther$requests = other.requests;
    if (l$requests != null && lOther$requests != null) {
      if (l$requests.length != lOther$requests.length) return false;
      for (int i = 0; i < l$requests.length; i++) {
        final l$requests$entry = l$requests[i];
        final lOther$requests$entry = lOther$requests[i];
        if (l$requests$entry != lOther$requests$entry) return false;
      }
    } else if (l$requests != lOther$requests) {
      return false;
    }

    final l$gratitudes = gratitudes;
    final lOther$gratitudes = other.gratitudes;
    if (l$gratitudes != null && lOther$gratitudes != null) {
      if (l$gratitudes.length != lOther$gratitudes.length) return false;
      for (int i = 0; i < l$gratitudes.length; i++) {
        final l$gratitudes$entry = l$gratitudes[i];
        final lOther$gratitudes$entry = lOther$gratitudes[i];
        if (l$gratitudes$entry != lOther$gratitudes$entry) return false;
      }
    } else if (l$gratitudes != lOther$gratitudes) {
      return false;
    }

    return true;
  }
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
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$message = message;
    final l$has = has;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      l$id == null ? null : Object.hashAll(l$id.map((v) => v)),
      l$title,
      l$message,
      l$has == null ? null : Object.hashAll(l$has.map((v) => v)),
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRequestFilter) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != null && lOther$id != null) {
      if (l$id.length != lOther$id.length) return false;
      for (int i = 0; i < l$id.length; i++) {
        final l$id$entry = l$id[i];
        final lOther$id$entry = lOther$id[i];
        if (l$id$entry != lOther$id$entry) return false;
      }
    } else if (l$id != lOther$id) {
      return false;
    }

    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$has = has;
    final lOther$has = other.has;
    if (l$has != null && lOther$has != null) {
      if (l$has.length != lOther$has.length) return false;
      for (int i = 0; i < l$has.length; i++) {
        final l$has$entry = l$has[i];
        final lOther$has$entry = lOther$has[i];
        if (l$has$entry != lOther$has$entry) return false;
      }
    } else if (l$has != lOther$has) {
      return false;
    }

    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    return true;
  }
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
  int get hashCode {
    final l$asc = asc;
    final l$desc = desc;
    final l$then = then;
    return Object.hashAll([l$asc, l$desc, l$then]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRequestOrder) || runtimeType != other.runtimeType)
      return false;
    final l$asc = asc;
    final lOther$asc = other.asc;
    if (l$asc != lOther$asc) return false;
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) return false;
    final l$then = then;
    final lOther$then = other.then;
    if (l$then != lOther$then) return false;
    return true;
  }
}

@JsonSerializable()
class InputRequestPatch extends JsonSerializable {
  InputRequestPatch(
      {this.owner,
      this.title,
      this.message,
      this.status,
      this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputRequestPatch.fromJson(Map<String, dynamic> json) =>
      _$InputRequestPatchFromJson(json);

  final InputUserRef? owner;

  final String? title;

  final String? message;

  @JsonKey(unknownEnumValue: EnumRequestStatus.$unknown)
  final EnumRequestStatus? status;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputRequestPatchToJson(this);
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$message = message;
    final l$status = status;
    final l$hashtagVariants = hashtagVariants;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$owner,
      l$title,
      l$message,
      l$status,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRequestPatch) || runtimeType != other.runtimeType)
      return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
}

@JsonSerializable()
class InputRequestRef extends JsonSerializable {
  InputRequestRef(
      {this.id,
      this.owner,
      this.title,
      this.message,
      this.status,
      this.hashtagVariants,
      this.createdTimestamp});

  @override
  factory InputRequestRef.fromJson(Map<String, dynamic> json) =>
      _$InputRequestRefFromJson(json);

  final String? id;

  final InputUserRef? owner;

  final String? title;

  final String? message;

  @JsonKey(unknownEnumValue: EnumRequestStatus.$unknown)
  final EnumRequestStatus? status;

  final List<InputHashtagVariantRef?>? hashtagVariants;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$InputRequestRefToJson(this);
  int get hashCode {
    final l$id = id;
    final l$owner = owner;
    final l$title = title;
    final l$message = message;
    final l$status = status;
    final l$hashtagVariants = hashtagVariants;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$id,
      l$owner,
      l$title,
      l$message,
      l$status,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRequestRef) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
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
  int get hashCode {
    final l$id = id;
    final l$has = has;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      l$id == null ? null : Object.hashAll(l$id.map((v) => v)),
      l$has == null ? null : Object.hashAll(l$has.map((v) => v)),
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSkillFilter) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != null && lOther$id != null) {
      if (l$id.length != lOther$id.length) return false;
      for (int i = 0; i < l$id.length; i++) {
        final l$id$entry = l$id[i];
        final lOther$id$entry = lOther$id[i];
        if (l$id$entry != lOther$id$entry) return false;
      }
    } else if (l$id != lOther$id) {
      return false;
    }

    final l$has = has;
    final lOther$has = other.has;
    if (l$has != null && lOther$has != null) {
      if (l$has.length != lOther$has.length) return false;
      for (int i = 0; i < l$has.length; i++) {
        final l$has$entry = l$has[i];
        final lOther$has$entry = lOther$has[i];
        if (l$has$entry != lOther$has$entry) return false;
      }
    } else if (l$has != lOther$has) {
      return false;
    }

    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    return true;
  }
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
  int get hashCode {
    final l$asc = asc;
    final l$desc = desc;
    final l$then = then;
    return Object.hashAll([l$asc, l$desc, l$then]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSkillOrder) || runtimeType != other.runtimeType)
      return false;
    final l$asc = asc;
    final lOther$asc = other.asc;
    if (l$asc != lOther$asc) return false;
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) return false;
    final l$then = then;
    final lOther$then = other.then;
    if (l$then != lOther$then) return false;
    return true;
  }
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
  int get hashCode {
    final l$owner = owner;
    final l$title = title;
    final l$message = message;
    final l$hashtagVariants = hashtagVariants;
    final l$isAvailable = isAvailable;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$owner,
      l$title,
      l$message,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$isAvailable,
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSkillPatch) || runtimeType != other.runtimeType)
      return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
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
  int get hashCode {
    final l$id = id;
    final l$owner = owner;
    final l$title = title;
    final l$message = message;
    final l$hashtagVariants = hashtagVariants;
    final l$isAvailable = isAvailable;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([
      l$id,
      l$owner,
      l$title,
      l$message,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$isAvailable,
      l$createdTimestamp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputSkillRef) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants != null && lOther$hashtagVariants != null) {
      if (l$hashtagVariants.length != lOther$hashtagVariants.length)
        return false;
      for (int i = 0; i < l$hashtagVariants.length; i++) {
        final l$hashtagVariants$entry = l$hashtagVariants[i];
        final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
        if (l$hashtagVariants$entry != lOther$hashtagVariants$entry)
          return false;
      }
    } else if (l$hashtagVariants != lOther$hashtagVariants) {
      return false;
    }

    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
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
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    final l$regexp = regexp;
    return Object.hashAll([
      l$eq,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$le,
      l$lt,
      l$ge,
      l$gt,
      l$between,
      l$regexp
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringExactFilterStringRegExpFilter) ||
        runtimeType != other.runtimeType) return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$le = le;
    final lOther$le = other.le;
    if (l$le != lOther$le) return false;
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (l$lt != lOther$lt) return false;
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (l$ge != lOther$ge) return false;
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (l$gt != lOther$gt) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    final l$regexp = regexp;
    final lOther$regexp = other.regexp;
    if (l$regexp != lOther$regexp) return false;
    return true;
  }
}

@JsonSerializable()
class InputUpdateGratitudeInput extends JsonSerializable {
  InputUpdateGratitudeInput({required this.filter, this.$set, this.remove});

  @override
  factory InputUpdateGratitudeInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateGratitudeInputFromJson(json);

  final InputGratitudeFilter filter;

  @JsonKey(name: 'set')
  final InputGratitudePatch? $set;

  final InputGratitudePatch? remove;

  @override
  Map<String, dynamic> toJson() => _$InputUpdateGratitudeInputToJson(this);
  int get hashCode {
    final l$filter = filter;
    final l$$set = $set;
    final l$remove = remove;
    return Object.hashAll([l$filter, l$$set, l$remove]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateGratitudeInput) ||
        runtimeType != other.runtimeType) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) return false;
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) return false;
    return true;
  }
}

@JsonSerializable()
class InputUpdateHashtagInput extends JsonSerializable {
  InputUpdateHashtagInput({required this.filter, this.$set, this.remove});

  @override
  factory InputUpdateHashtagInput.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateHashtagInputFromJson(json);

  final InputHashtagFilter filter;

  @JsonKey(name: 'set')
  final InputHashtagPatch? $set;

  final InputHashtagPatch? remove;

  @override
  Map<String, dynamic> toJson() => _$InputUpdateHashtagInputToJson(this);
  int get hashCode {
    final l$filter = filter;
    final l$$set = $set;
    final l$remove = remove;
    return Object.hashAll([l$filter, l$$set, l$remove]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateHashtagInput) || runtimeType != other.runtimeType)
      return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) return false;
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) return false;
    return true;
  }
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
  int get hashCode {
    final l$filter = filter;
    final l$$set = $set;
    final l$remove = remove;
    return Object.hashAll([l$filter, l$$set, l$remove]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateHashtagVariantInput) ||
        runtimeType != other.runtimeType) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) return false;
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) return false;
    return true;
  }
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
  int get hashCode {
    final l$filter = filter;
    final l$$set = $set;
    final l$remove = remove;
    return Object.hashAll([l$filter, l$$set, l$remove]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateRequestInput) || runtimeType != other.runtimeType)
      return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) return false;
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) return false;
    return true;
  }
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
  int get hashCode {
    final l$filter = filter;
    final l$$set = $set;
    final l$remove = remove;
    return Object.hashAll([l$filter, l$$set, l$remove]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateSkillInput) || runtimeType != other.runtimeType)
      return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) return false;
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) return false;
    return true;
  }
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
  int get hashCode {
    final l$filter = filter;
    final l$$set = $set;
    final l$remove = remove;
    return Object.hashAll([l$filter, l$$set, l$remove]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUpdateUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (l$$set != lOther$$set) return false;
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) return false;
    return true;
  }
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
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$has = has;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      l$id == null ? null : Object.hashAll(l$id.map((v) => v)),
      l$email,
      l$has == null ? null : Object.hashAll(l$has.map((v) => v)),
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserFilter) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != null && lOther$id != null) {
      if (l$id.length != lOther$id.length) return false;
      for (int i = 0; i < l$id.length; i++) {
        final l$id$entry = l$id[i];
        final lOther$id$entry = lOther$id[i];
        if (l$id$entry != lOther$id$entry) return false;
      }
    } else if (l$id != lOther$id) {
      return false;
    }

    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$has = has;
    final lOther$has = other.has;
    if (l$has != null && lOther$has != null) {
      if (l$has.length != lOther$has.length) return false;
      for (int i = 0; i < l$has.length; i++) {
        final l$has$entry = l$has[i];
        final lOther$has$entry = lOther$has[i];
        if (l$has$entry != lOther$has$entry) return false;
      }
    } else if (l$has != lOther$has) {
      return false;
    }

    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    return true;
  }
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
  int get hashCode {
    final l$asc = asc;
    final l$desc = desc;
    final l$then = then;
    return Object.hashAll([l$asc, l$desc, l$then]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserOrder) || runtimeType != other.runtimeType)
      return false;
    final l$asc = asc;
    final lOther$asc = other.asc;
    if (l$asc != lOther$asc) return false;
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) return false;
    final l$then = then;
    final lOther$then = other.then;
    if (l$then != lOther$then) return false;
    return true;
  }
}

@JsonSerializable()
class InputUserPatch extends JsonSerializable {
  InputUserPatch(
      {this.name,
      this.age,
      this.bio,
      this.avatar,
      this.isAdmin,
      this.createdTimestamp,
      this.requests,
      this.skills,
      this.gratitudeSent,
      this.gratitudeReceived});

  @override
  factory InputUserPatch.fromJson(Map<String, dynamic> json) =>
      _$InputUserPatchFromJson(json);

  final String? name;

  final int? age;

  final String? bio;

  final String? avatar;

  final bool? isAdmin;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

  final List<InputSkillRef?>? skills;

  final List<InputGratitudeRef?>? gratitudeSent;

  final List<InputGratitudeRef?>? gratitudeReceived;

  @override
  Map<String, dynamic> toJson() => _$InputUserPatchToJson(this);
  int get hashCode {
    final l$name = name;
    final l$age = age;
    final l$bio = bio;
    final l$avatar = avatar;
    final l$isAdmin = isAdmin;
    final l$createdTimestamp = createdTimestamp;
    final l$requests = requests;
    final l$skills = skills;
    final l$gratitudeSent = gratitudeSent;
    final l$gratitudeReceived = gratitudeReceived;
    return Object.hashAll([
      l$name,
      l$age,
      l$bio,
      l$avatar,
      l$isAdmin,
      l$createdTimestamp,
      l$requests == null ? null : Object.hashAll(l$requests.map((v) => v)),
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$gratitudeSent == null
          ? null
          : Object.hashAll(l$gratitudeSent.map((v) => v)),
      l$gratitudeReceived == null
          ? null
          : Object.hashAll(l$gratitudeReceived.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserPatch) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$requests = requests;
    final lOther$requests = other.requests;
    if (l$requests != null && lOther$requests != null) {
      if (l$requests.length != lOther$requests.length) return false;
      for (int i = 0; i < l$requests.length; i++) {
        final l$requests$entry = l$requests[i];
        final lOther$requests$entry = lOther$requests[i];
        if (l$requests$entry != lOther$requests$entry) return false;
      }
    } else if (l$requests != lOther$requests) {
      return false;
    }

    final l$skills = skills;
    final lOther$skills = other.skills;
    if (l$skills != null && lOther$skills != null) {
      if (l$skills.length != lOther$skills.length) return false;
      for (int i = 0; i < l$skills.length; i++) {
        final l$skills$entry = l$skills[i];
        final lOther$skills$entry = lOther$skills[i];
        if (l$skills$entry != lOther$skills$entry) return false;
      }
    } else if (l$skills != lOther$skills) {
      return false;
    }

    final l$gratitudeSent = gratitudeSent;
    final lOther$gratitudeSent = other.gratitudeSent;
    if (l$gratitudeSent != null && lOther$gratitudeSent != null) {
      if (l$gratitudeSent.length != lOther$gratitudeSent.length) return false;
      for (int i = 0; i < l$gratitudeSent.length; i++) {
        final l$gratitudeSent$entry = l$gratitudeSent[i];
        final lOther$gratitudeSent$entry = lOther$gratitudeSent[i];
        if (l$gratitudeSent$entry != lOther$gratitudeSent$entry) return false;
      }
    } else if (l$gratitudeSent != lOther$gratitudeSent) {
      return false;
    }

    final l$gratitudeReceived = gratitudeReceived;
    final lOther$gratitudeReceived = other.gratitudeReceived;
    if (l$gratitudeReceived != null && lOther$gratitudeReceived != null) {
      if (l$gratitudeReceived.length != lOther$gratitudeReceived.length)
        return false;
      for (int i = 0; i < l$gratitudeReceived.length; i++) {
        final l$gratitudeReceived$entry = l$gratitudeReceived[i];
        final lOther$gratitudeReceived$entry = lOther$gratitudeReceived[i];
        if (l$gratitudeReceived$entry != lOther$gratitudeReceived$entry)
          return false;
      }
    } else if (l$gratitudeReceived != lOther$gratitudeReceived) {
      return false;
    }

    return true;
  }
}

@JsonSerializable()
class InputUserRef extends JsonSerializable {
  InputUserRef(
      {this.id,
      this.email,
      this.name,
      this.age,
      this.bio,
      this.avatar,
      this.isAdmin,
      this.createdTimestamp,
      this.requests,
      this.skills,
      this.gratitudeSent,
      this.gratitudeReceived});

  @override
  factory InputUserRef.fromJson(Map<String, dynamic> json) =>
      _$InputUserRefFromJson(json);

  final String? id;

  final String? email;

  final String? name;

  final int? age;

  final String? bio;

  final String? avatar;

  final bool? isAdmin;

  final String? createdTimestamp;

  final List<InputRequestRef?>? requests;

  final List<InputSkillRef?>? skills;

  final List<InputGratitudeRef?>? gratitudeSent;

  final List<InputGratitudeRef?>? gratitudeReceived;

  @override
  Map<String, dynamic> toJson() => _$InputUserRefToJson(this);
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$name = name;
    final l$age = age;
    final l$bio = bio;
    final l$avatar = avatar;
    final l$isAdmin = isAdmin;
    final l$createdTimestamp = createdTimestamp;
    final l$requests = requests;
    final l$skills = skills;
    final l$gratitudeSent = gratitudeSent;
    final l$gratitudeReceived = gratitudeReceived;
    return Object.hashAll([
      l$id,
      l$email,
      l$name,
      l$age,
      l$bio,
      l$avatar,
      l$isAdmin,
      l$createdTimestamp,
      l$requests == null ? null : Object.hashAll(l$requests.map((v) => v)),
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$gratitudeSent == null
          ? null
          : Object.hashAll(l$gratitudeSent.map((v) => v)),
      l$gratitudeReceived == null
          ? null
          : Object.hashAll(l$gratitudeReceived.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserRef) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$requests = requests;
    final lOther$requests = other.requests;
    if (l$requests != null && lOther$requests != null) {
      if (l$requests.length != lOther$requests.length) return false;
      for (int i = 0; i < l$requests.length; i++) {
        final l$requests$entry = l$requests[i];
        final lOther$requests$entry = lOther$requests[i];
        if (l$requests$entry != lOther$requests$entry) return false;
      }
    } else if (l$requests != lOther$requests) {
      return false;
    }

    final l$skills = skills;
    final lOther$skills = other.skills;
    if (l$skills != null && lOther$skills != null) {
      if (l$skills.length != lOther$skills.length) return false;
      for (int i = 0; i < l$skills.length; i++) {
        final l$skills$entry = l$skills[i];
        final lOther$skills$entry = lOther$skills[i];
        if (l$skills$entry != lOther$skills$entry) return false;
      }
    } else if (l$skills != lOther$skills) {
      return false;
    }

    final l$gratitudeSent = gratitudeSent;
    final lOther$gratitudeSent = other.gratitudeSent;
    if (l$gratitudeSent != null && lOther$gratitudeSent != null) {
      if (l$gratitudeSent.length != lOther$gratitudeSent.length) return false;
      for (int i = 0; i < l$gratitudeSent.length; i++) {
        final l$gratitudeSent$entry = l$gratitudeSent[i];
        final lOther$gratitudeSent$entry = lOther$gratitudeSent[i];
        if (l$gratitudeSent$entry != lOther$gratitudeSent$entry) return false;
      }
    } else if (l$gratitudeSent != lOther$gratitudeSent) {
      return false;
    }

    final l$gratitudeReceived = gratitudeReceived;
    final lOther$gratitudeReceived = other.gratitudeReceived;
    if (l$gratitudeReceived != null && lOther$gratitudeReceived != null) {
      if (l$gratitudeReceived.length != lOther$gratitudeReceived.length)
        return false;
      for (int i = 0; i < l$gratitudeReceived.length; i++) {
        final l$gratitudeReceived$entry = l$gratitudeReceived[i];
        final lOther$gratitudeReceived$entry = lOther$gratitudeReceived[i];
        if (l$gratitudeReceived$entry != lOther$gratitudeReceived$entry)
          return false;
      }
    } else if (l$gratitudeReceived != lOther$gratitudeReceived) {
      return false;
    }

    return true;
  }
}

enum EnumRequestStatus {
  @JsonValue('OPEN')
  open,
  @JsonValue('TENTATIVE')
  tentative,
  @JsonValue('FILLED')
  filled,
  @JsonValue('DONE')
  done,
  $unknown
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
enum EnumGratitudeHasFilter {
  @JsonValue('from')
  from,
  @JsonValue('to')
  to,
  @JsonValue('message')
  message,
  @JsonValue('hashtagVariants')
  hashtagVariants,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
enum EnumGratitudeOrderable {
  @JsonValue('message')
  message,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
enum EnumHashtagHasFilter {
  @JsonValue('name')
  name,
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
enum EnumHashtagOrderable {
  @JsonValue('name')
  name,
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
  @JsonValue('variant')
  variant,
  @JsonValue('hashtag')
  hashtag,
  @JsonValue('skills')
  skills,
  @JsonValue('requests')
  requests,
  @JsonValue('gratitudes')
  gratitudes,
  $unknown
}
enum EnumHashtagVariantOrderable {
  @JsonValue('variant')
  variant,
  $unknown
}
enum EnumRequestHasFilter {
  @JsonValue('owner')
  owner,
  @JsonValue('title')
  title,
  @JsonValue('message')
  message,
  @JsonValue('status')
  status,
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
  @JsonValue('bio')
  bio,
  @JsonValue('avatar')
  avatar,
  @JsonValue('isAdmin')
  isAdmin,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  @JsonValue('requests')
  requests,
  @JsonValue('skills')
  skills,
  @JsonValue('gratitudeSent')
  gratitudeSent,
  @JsonValue('gratitudeReceived')
  gratitudeReceived,
  $unknown
}
enum EnumUserOrderable {
  @JsonValue('email')
  email,
  @JsonValue('name')
  name,
  @JsonValue('age')
  age,
  @JsonValue('bio')
  bio,
  @JsonValue('avatar')
  avatar,
  @JsonValue('createdTimestamp')
  createdTimestamp,
  $unknown
}
const POSSIBLE_TYPES_MAP = const {};
