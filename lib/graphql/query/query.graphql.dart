import '../fragment/fragment.graphql.dart';
import '../schema/schema.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable()
class QueryGetAllUsers extends JsonSerializable {
  QueryGetAllUsers({this.queryUser, required this.$__typename});

  @override
  factory QueryGetAllUsers.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllUsersFromJson(json);

  final List<QueryGetAllUsers$queryUser?>? queryUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetAllUsersToJson(this);
  int get hashCode {
    final l$queryUser = queryUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$queryUser == null ? null : Object.hashAll(l$queryUser.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetAllUsers) || runtimeType != other.runtimeType)
      return false;
    final l$queryUser = queryUser;
    final lOther$queryUser = other.queryUser;
    if (l$queryUser != null && lOther$queryUser != null) {
      if (l$queryUser.length != lOther$queryUser.length) return false;
      for (int i = 0; i < l$queryUser.length; i++) {
        final l$queryUser$entry = l$queryUser[i];
        final lOther$queryUser$entry = lOther$queryUser[i];
        if (l$queryUser$entry != lOther$queryUser$entry) return false;
      }
    } else if (l$queryUser != lOther$queryUser) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_ALL_USERS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllUsers'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'queryUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'desc'),
                        value: EnumValueNode(
                            name: NameNode(value: 'createdTimestamp')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'age'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatar'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isAdmin'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdTimestamp'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryGetAllUsers _parserFnQueryGetAllUsers(Map<String, dynamic> data) =>
    QueryGetAllUsers.fromJson(data);

class OptionsQueryGetAllUsers extends graphql.QueryOptions<QueryGetAllUsers> {
  OptionsQueryGetAllUsers(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_ALL_USERS,
            parserFn: _parserFnQueryGetAllUsers);
}

class WatchOptionsQueryGetAllUsers
    extends graphql.WatchQueryOptions<QueryGetAllUsers> {
  WatchOptionsQueryGetAllUsers(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_ALL_USERS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetAllUsers);
}

class FetchMoreOptionsQueryGetAllUsers extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetAllUsers({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_ALL_USERS);
}

extension ClientExtensionQueryGetAllUsers on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetAllUsers>> queryGetAllUsers(
          [OptionsQueryGetAllUsers? options]) async =>
      await this.query(options ?? OptionsQueryGetAllUsers());
  graphql.ObservableQuery<QueryGetAllUsers> watchQueryGetAllUsers(
          [WatchOptionsQueryGetAllUsers? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetAllUsers());
}

graphql_flutter.QueryHookResult<QueryGetAllUsers> useQueryGetAllUsers(
        [OptionsQueryGetAllUsers? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetAllUsers());
graphql.ObservableQuery<QueryGetAllUsers> useWatchQueryGetAllUsers(
        [WatchOptionsQueryGetAllUsers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryGetAllUsers());

class QueryGetAllUsersWidget extends graphql_flutter.Query<QueryGetAllUsers> {
  QueryGetAllUsersWidget(
      {widgets.Key? key,
      OptionsQueryGetAllUsers? options,
      required graphql_flutter.QueryBuilder<QueryGetAllUsers> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetAllUsers(),
            builder: builder);
}

@JsonSerializable()
class QueryGetAllUsers$queryUser extends JsonSerializable {
  QueryGetAllUsers$queryUser(
      {required this.id,
      required this.email,
      required this.name,
      this.age,
      this.avatar,
      this.isAdmin,
      this.createdTimestamp,
      required this.$__typename});

  @override
  factory QueryGetAllUsers$queryUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllUsers$queryUserFromJson(json);

  final String id;

  final String email;

  final String name;

  final int? age;

  final String? avatar;

  final bool? isAdmin;

  final String? createdTimestamp;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetAllUsers$queryUserToJson(this);
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$name = name;
    final l$age = age;
    final l$avatar = avatar;
    final l$isAdmin = isAdmin;
    final l$createdTimestamp = createdTimestamp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$name,
      l$age,
      l$avatar,
      l$isAdmin,
      l$createdTimestamp,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetAllUsers$queryUser) ||
        runtimeType != other.runtimeType) return false;
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesQueryGetUserWithEmail extends JsonSerializable {
  VariablesQueryGetUserWithEmail({this.email});

  @override
  factory VariablesQueryGetUserWithEmail.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetUserWithEmailFromJson(json);

  final String? email;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryGetUserWithEmailToJson(this);
  int get hashCode {
    final l$email = email;
    return Object.hashAll([l$email]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetUserWithEmail) ||
        runtimeType != other.runtimeType) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetUserWithEmail extends JsonSerializable {
  QueryGetUserWithEmail({this.getUser, required this.$__typename});

  @override
  factory QueryGetUserWithEmail.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithEmailFromJson(json);

  final QueryGetUserWithEmail$getUser? getUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithEmailToJson(this);
  int get hashCode {
    final l$getUser = getUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$getUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUserWithEmail) || runtimeType != other.runtimeType)
      return false;
    final l$getUser = getUser;
    final lOther$getUser = other.getUser;
    if (l$getUser != lOther$getUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_USER_WITH_EMAIL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUserWithEmail'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'email')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'email'),
                  value: VariableNode(name: NameNode(value: 'email')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'age'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bio'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatar'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isAdmin'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdTimestamp'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryGetUserWithEmail _parserFnQueryGetUserWithEmail(
        Map<String, dynamic> data) =>
    QueryGetUserWithEmail.fromJson(data);

class OptionsQueryGetUserWithEmail
    extends graphql.QueryOptions<QueryGetUserWithEmail> {
  OptionsQueryGetUserWithEmail(
      {String? operationName,
      VariablesQueryGetUserWithEmail? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_USER_WITH_EMAIL,
            parserFn: _parserFnQueryGetUserWithEmail);
}

class WatchOptionsQueryGetUserWithEmail
    extends graphql.WatchQueryOptions<QueryGetUserWithEmail> {
  WatchOptionsQueryGetUserWithEmail(
      {String? operationName,
      VariablesQueryGetUserWithEmail? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_USER_WITH_EMAIL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetUserWithEmail);
}

class FetchMoreOptionsQueryGetUserWithEmail extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetUserWithEmail(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetUserWithEmail? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_USER_WITH_EMAIL);
}

extension ClientExtensionQueryGetUserWithEmail on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetUserWithEmail>> queryGetUserWithEmail(
          [OptionsQueryGetUserWithEmail? options]) async =>
      await this.query(options ?? OptionsQueryGetUserWithEmail());
  graphql.ObservableQuery<QueryGetUserWithEmail> watchQueryGetUserWithEmail(
          [WatchOptionsQueryGetUserWithEmail? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetUserWithEmail());
}

graphql_flutter.QueryHookResult<QueryGetUserWithEmail> useQueryGetUserWithEmail(
        [OptionsQueryGetUserWithEmail? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetUserWithEmail());
graphql.ObservableQuery<QueryGetUserWithEmail> useWatchQueryGetUserWithEmail(
        [WatchOptionsQueryGetUserWithEmail? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptionsQueryGetUserWithEmail());

class QueryGetUserWithEmailWidget
    extends graphql_flutter.Query<QueryGetUserWithEmail> {
  QueryGetUserWithEmailWidget(
      {widgets.Key? key,
      OptionsQueryGetUserWithEmail? options,
      required graphql_flutter.QueryBuilder<QueryGetUserWithEmail> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetUserWithEmail(),
            builder: builder);
}

@JsonSerializable()
class QueryGetUserWithEmail$getUser extends JsonSerializable {
  QueryGetUserWithEmail$getUser(
      {required this.id,
      required this.name,
      this.age,
      this.bio,
      this.avatar,
      required this.email,
      this.isAdmin,
      this.createdTimestamp,
      required this.$__typename});

  @override
  factory QueryGetUserWithEmail$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithEmail$getUserFromJson(json);

  final String id;

  final String name;

  final int? age;

  final String? bio;

  final String? avatar;

  final String email;

  final bool? isAdmin;

  final String? createdTimestamp;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithEmail$getUserToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$age = age;
    final l$bio = bio;
    final l$avatar = avatar;
    final l$email = email;
    final l$isAdmin = isAdmin;
    final l$createdTimestamp = createdTimestamp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$age,
      l$bio,
      l$avatar,
      l$email,
      l$isAdmin,
      l$createdTimestamp,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUserWithEmail$getUser) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesQueryGetUserWithId extends JsonSerializable {
  VariablesQueryGetUserWithId({this.id});

  @override
  factory VariablesQueryGetUserWithId.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetUserWithIdFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryGetUserWithIdToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetUserWithId) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetUserWithId extends JsonSerializable {
  QueryGetUserWithId({this.getUser, required this.$__typename});

  @override
  factory QueryGetUserWithId.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithIdFromJson(json);

  final QueryGetUserWithId$getUser? getUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithIdToJson(this);
  int get hashCode {
    final l$getUser = getUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$getUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUserWithId) || runtimeType != other.runtimeType)
      return false;
    final l$getUser = getUser;
    final lOther$getUser = other.getUser;
    if (l$getUser != lOther$getUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_USER_WITH_ID = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUserWithId'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'age'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bio'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatar'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isAdmin'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdTimestamp'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryGetUserWithId _parserFnQueryGetUserWithId(Map<String, dynamic> data) =>
    QueryGetUserWithId.fromJson(data);

class OptionsQueryGetUserWithId
    extends graphql.QueryOptions<QueryGetUserWithId> {
  OptionsQueryGetUserWithId(
      {String? operationName,
      VariablesQueryGetUserWithId? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_USER_WITH_ID,
            parserFn: _parserFnQueryGetUserWithId);
}

class WatchOptionsQueryGetUserWithId
    extends graphql.WatchQueryOptions<QueryGetUserWithId> {
  WatchOptionsQueryGetUserWithId(
      {String? operationName,
      VariablesQueryGetUserWithId? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_USER_WITH_ID,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetUserWithId);
}

class FetchMoreOptionsQueryGetUserWithId extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetUserWithId(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetUserWithId? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_USER_WITH_ID);
}

extension ClientExtensionQueryGetUserWithId on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetUserWithId>> queryGetUserWithId(
          [OptionsQueryGetUserWithId? options]) async =>
      await this.query(options ?? OptionsQueryGetUserWithId());
  graphql.ObservableQuery<QueryGetUserWithId> watchQueryGetUserWithId(
          [WatchOptionsQueryGetUserWithId? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetUserWithId());
}

graphql_flutter.QueryHookResult<QueryGetUserWithId> useQueryGetUserWithId(
        [OptionsQueryGetUserWithId? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetUserWithId());
graphql.ObservableQuery<QueryGetUserWithId> useWatchQueryGetUserWithId(
        [WatchOptionsQueryGetUserWithId? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryGetUserWithId());

class QueryGetUserWithIdWidget
    extends graphql_flutter.Query<QueryGetUserWithId> {
  QueryGetUserWithIdWidget(
      {widgets.Key? key,
      OptionsQueryGetUserWithId? options,
      required graphql_flutter.QueryBuilder<QueryGetUserWithId> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetUserWithId(),
            builder: builder);
}

@JsonSerializable()
class QueryGetUserWithId$getUser extends JsonSerializable {
  QueryGetUserWithId$getUser(
      {required this.id,
      required this.name,
      this.age,
      this.bio,
      this.avatar,
      required this.email,
      this.isAdmin,
      this.createdTimestamp,
      required this.$__typename});

  @override
  factory QueryGetUserWithId$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithId$getUserFromJson(json);

  final String id;

  final String name;

  final int? age;

  final String? bio;

  final String? avatar;

  final String email;

  final bool? isAdmin;

  final String? createdTimestamp;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithId$getUserToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$age = age;
    final l$bio = bio;
    final l$avatar = avatar;
    final l$email = email;
    final l$isAdmin = isAdmin;
    final l$createdTimestamp = createdTimestamp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$age,
      l$bio,
      l$avatar,
      l$email,
      l$isAdmin,
      l$createdTimestamp,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUserWithId$getUser) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetAllRequests extends JsonSerializable {
  QueryGetAllRequests({this.queryRequest, required this.$__typename});

  @override
  factory QueryGetAllRequests.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllRequestsFromJson(json);

  final List<QueryGetAllRequests$queryRequest?>? queryRequest;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetAllRequestsToJson(this);
  int get hashCode {
    final l$queryRequest = queryRequest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$queryRequest == null
          ? null
          : Object.hashAll(l$queryRequest.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetAllRequests) || runtimeType != other.runtimeType)
      return false;
    final l$queryRequest = queryRequest;
    final lOther$queryRequest = other.queryRequest;
    if (l$queryRequest != null && lOther$queryRequest != null) {
      if (l$queryRequest.length != lOther$queryRequest.length) return false;
      for (int i = 0; i < l$queryRequest.length; i++) {
        final l$queryRequest$entry = l$queryRequest[i];
        final lOther$queryRequest$entry = lOther$queryRequest[i];
        if (l$queryRequest$entry != lOther$queryRequest$entry) return false;
      }
    } else if (l$queryRequest != lOther$queryRequest) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_ALL_REQUESTS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllRequests'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'queryRequest'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'owner'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdTimestamp'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryGetAllRequests _parserFnQueryGetAllRequests(Map<String, dynamic> data) =>
    QueryGetAllRequests.fromJson(data);

class OptionsQueryGetAllRequests
    extends graphql.QueryOptions<QueryGetAllRequests> {
  OptionsQueryGetAllRequests(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_ALL_REQUESTS,
            parserFn: _parserFnQueryGetAllRequests);
}

class WatchOptionsQueryGetAllRequests
    extends graphql.WatchQueryOptions<QueryGetAllRequests> {
  WatchOptionsQueryGetAllRequests(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_ALL_REQUESTS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetAllRequests);
}

class FetchMoreOptionsQueryGetAllRequests extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetAllRequests(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_ALL_REQUESTS);
}

extension ClientExtensionQueryGetAllRequests on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetAllRequests>> queryGetAllRequests(
          [OptionsQueryGetAllRequests? options]) async =>
      await this.query(options ?? OptionsQueryGetAllRequests());
  graphql.ObservableQuery<QueryGetAllRequests> watchQueryGetAllRequests(
          [WatchOptionsQueryGetAllRequests? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetAllRequests());
}

graphql_flutter.QueryHookResult<QueryGetAllRequests> useQueryGetAllRequests(
        [OptionsQueryGetAllRequests? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetAllRequests());
graphql.ObservableQuery<QueryGetAllRequests> useWatchQueryGetAllRequests(
        [WatchOptionsQueryGetAllRequests? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryGetAllRequests());

class QueryGetAllRequestsWidget
    extends graphql_flutter.Query<QueryGetAllRequests> {
  QueryGetAllRequestsWidget(
      {widgets.Key? key,
      OptionsQueryGetAllRequests? options,
      required graphql_flutter.QueryBuilder<QueryGetAllRequests> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetAllRequests(),
            builder: builder);
}

@JsonSerializable()
class QueryGetAllRequests$queryRequest extends JsonSerializable {
  QueryGetAllRequests$queryRequest(
      {required this.id,
      required this.owner,
      required this.title,
      required this.message,
      this.createdTimestamp,
      required this.$__typename});

  @override
  factory QueryGetAllRequests$queryRequest.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetAllRequests$queryRequestFromJson(json);

  final String id;

  final QueryGetAllRequests$queryRequest$owner owner;

  final String title;

  final String message;

  final String? createdTimestamp;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetAllRequests$queryRequestToJson(this);
  int get hashCode {
    final l$id = id;
    final l$owner = owner;
    final l$title = title;
    final l$message = message;
    final l$createdTimestamp = createdTimestamp;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$owner, l$title, l$message, l$createdTimestamp, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetAllRequests$queryRequest) ||
        runtimeType != other.runtimeType) return false;
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
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetAllRequests$queryRequest$owner extends JsonSerializable {
  QueryGetAllRequests$queryRequest$owner(
      {required this.name, required this.$__typename});

  @override
  factory QueryGetAllRequests$queryRequest$owner.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetAllRequests$queryRequest$ownerFromJson(json);

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetAllRequests$queryRequest$ownerToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetAllRequests$queryRequest$owner) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesQueryGetHashtagByName extends JsonSerializable {
  VariablesQueryGetHashtagByName({this.name});

  @override
  factory VariablesQueryGetHashtagByName.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetHashtagByNameFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryGetHashtagByNameToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetHashtagByName) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagByName extends JsonSerializable {
  QueryGetHashtagByName({this.getHashtag, required this.$__typename});

  @override
  factory QueryGetHashtagByName.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagByNameFromJson(json);

  final QueryGetHashtagByName$getHashtag? getHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagByNameToJson(this);
  int get hashCode {
    final l$getHashtag = getHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$getHashtag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagByName) || runtimeType != other.runtimeType)
      return false;
    final l$getHashtag = getHashtag;
    final lOther$getHashtag = other.getHashtag;
    if (l$getHashtag != lOther$getHashtag) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_HASHTAG_BY_NAME = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetHashtagByName'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagFragmentData'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_HASHTAG_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);
QueryGetHashtagByName _parserFnQueryGetHashtagByName(
        Map<String, dynamic> data) =>
    QueryGetHashtagByName.fromJson(data);

class OptionsQueryGetHashtagByName
    extends graphql.QueryOptions<QueryGetHashtagByName> {
  OptionsQueryGetHashtagByName(
      {String? operationName,
      VariablesQueryGetHashtagByName? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_HASHTAG_BY_NAME,
            parserFn: _parserFnQueryGetHashtagByName);
}

class WatchOptionsQueryGetHashtagByName
    extends graphql.WatchQueryOptions<QueryGetHashtagByName> {
  WatchOptionsQueryGetHashtagByName(
      {String? operationName,
      VariablesQueryGetHashtagByName? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_HASHTAG_BY_NAME,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetHashtagByName);
}

class FetchMoreOptionsQueryGetHashtagByName extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetHashtagByName(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetHashtagByName? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_HASHTAG_BY_NAME);
}

extension ClientExtensionQueryGetHashtagByName on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagByName>> queryGetHashtagByName(
          [OptionsQueryGetHashtagByName? options]) async =>
      await this.query(options ?? OptionsQueryGetHashtagByName());
  graphql.ObservableQuery<QueryGetHashtagByName> watchQueryGetHashtagByName(
          [WatchOptionsQueryGetHashtagByName? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetHashtagByName());
}

graphql_flutter.QueryHookResult<QueryGetHashtagByName> useQueryGetHashtagByName(
        [OptionsQueryGetHashtagByName? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetHashtagByName());
graphql.ObservableQuery<QueryGetHashtagByName> useWatchQueryGetHashtagByName(
        [WatchOptionsQueryGetHashtagByName? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptionsQueryGetHashtagByName());

class QueryGetHashtagByNameWidget
    extends graphql_flutter.Query<QueryGetHashtagByName> {
  QueryGetHashtagByNameWidget(
      {widgets.Key? key,
      OptionsQueryGetHashtagByName? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagByName> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetHashtagByName(),
            builder: builder);
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  QueryGetHashtagByName$getHashtag(
      {required this.id,
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants,
      required this.$__typename});

  @override
  factory QueryGetHashtagByName$getHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetHashtagByName$getHashtag$hashtagVariants?>?
      hashtagVariants;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtagToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$hashtagVariants = hashtagVariants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$iconName,
      l$blessed,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagByName$getHashtag) ||
        runtimeType != other.runtimeType) return false;
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag$hashtagVariants extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetHashtagByName$getHashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate,
      required this.$__typename});

  @override
  factory QueryGetHashtagByName$getHashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariantsFromJson(json);

  final String id;

  final String variant;

  final QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$variant = variant;
    final l$skillsAggregate = skillsAggregate;
    final l$requestsAggregate = requestsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$variant,
      l$skillsAggregate,
      l$requestsAggregate,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagByName$getHashtag$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$skillsAggregate = skillsAggregate;
    final lOther$skillsAggregate = other.skillsAggregate;
    if (l$skillsAggregate != lOther$skillsAggregate) return false;
    final l$requestsAggregate = requestsAggregate;
    final lOther$requestsAggregate = other.requestsAggregate;
    if (l$requestsAggregate != lOther$requestsAggregate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesQueryGetHashtagById extends JsonSerializable {
  VariablesQueryGetHashtagById({this.id});

  @override
  factory VariablesQueryGetHashtagById.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetHashtagByIdFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryGetHashtagByIdToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetHashtagById) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagById extends JsonSerializable {
  QueryGetHashtagById({this.getHashtag, required this.$__typename});

  @override
  factory QueryGetHashtagById.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagByIdFromJson(json);

  final QueryGetHashtagById$getHashtag? getHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagByIdToJson(this);
  int get hashCode {
    final l$getHashtag = getHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$getHashtag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagById) || runtimeType != other.runtimeType)
      return false;
    final l$getHashtag = getHashtag;
    final lOther$getHashtag = other.getHashtag;
    if (l$getHashtag != lOther$getHashtag) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_HASHTAG_BY_ID = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetHashtagById'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagFragmentData'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_HASHTAG_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);
QueryGetHashtagById _parserFnQueryGetHashtagById(Map<String, dynamic> data) =>
    QueryGetHashtagById.fromJson(data);

class OptionsQueryGetHashtagById
    extends graphql.QueryOptions<QueryGetHashtagById> {
  OptionsQueryGetHashtagById(
      {String? operationName,
      VariablesQueryGetHashtagById? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_HASHTAG_BY_ID,
            parserFn: _parserFnQueryGetHashtagById);
}

class WatchOptionsQueryGetHashtagById
    extends graphql.WatchQueryOptions<QueryGetHashtagById> {
  WatchOptionsQueryGetHashtagById(
      {String? operationName,
      VariablesQueryGetHashtagById? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_HASHTAG_BY_ID,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetHashtagById);
}

class FetchMoreOptionsQueryGetHashtagById extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetHashtagById(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetHashtagById? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_HASHTAG_BY_ID);
}

extension ClientExtensionQueryGetHashtagById on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagById>> queryGetHashtagById(
          [OptionsQueryGetHashtagById? options]) async =>
      await this.query(options ?? OptionsQueryGetHashtagById());
  graphql.ObservableQuery<QueryGetHashtagById> watchQueryGetHashtagById(
          [WatchOptionsQueryGetHashtagById? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetHashtagById());
}

graphql_flutter.QueryHookResult<QueryGetHashtagById> useQueryGetHashtagById(
        [OptionsQueryGetHashtagById? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetHashtagById());
graphql.ObservableQuery<QueryGetHashtagById> useWatchQueryGetHashtagById(
        [WatchOptionsQueryGetHashtagById? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryGetHashtagById());

class QueryGetHashtagByIdWidget
    extends graphql_flutter.Query<QueryGetHashtagById> {
  QueryGetHashtagByIdWidget(
      {widgets.Key? key,
      OptionsQueryGetHashtagById? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagById> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetHashtagById(),
            builder: builder);
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  QueryGetHashtagById$getHashtag(
      {required this.id,
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants,
      required this.$__typename});

  @override
  factory QueryGetHashtagById$getHashtag.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetHashtagById$getHashtag$hashtagVariants?>? hashtagVariants;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagById$getHashtagToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$hashtagVariants = hashtagVariants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$iconName,
      l$blessed,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagById$getHashtag) ||
        runtimeType != other.runtimeType) return false;
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag$hashtagVariants extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetHashtagById$getHashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate,
      required this.$__typename});

  @override
  factory QueryGetHashtagById$getHashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtag$hashtagVariantsFromJson(json);

  final String id;

  final String variant;

  final QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$hashtagVariantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$variant = variant;
    final l$skillsAggregate = skillsAggregate;
    final l$requestsAggregate = requestsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$variant,
      l$skillsAggregate,
      l$requestsAggregate,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagById$getHashtag$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$skillsAggregate = skillsAggregate;
    final lOther$skillsAggregate = other.skillsAggregate;
    if (l$skillsAggregate != lOther$skillsAggregate) return false;
    final l$requestsAggregate = requestsAggregate;
    final lOther$requestsAggregate = other.requestsAggregate;
    if (l$requestsAggregate != lOther$requestsAggregate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagList extends JsonSerializable {
  QueryGetHashtagList({this.queryHashtag, required this.$__typename});

  @override
  factory QueryGetHashtagList.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagListFromJson(json);

  final List<QueryGetHashtagList$queryHashtag?>? queryHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagListToJson(this);
  int get hashCode {
    final l$queryHashtag = queryHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$queryHashtag == null
          ? null
          : Object.hashAll(l$queryHashtag.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagList) || runtimeType != other.runtimeType)
      return false;
    final l$queryHashtag = queryHashtag;
    final lOther$queryHashtag = other.queryHashtag;
    if (l$queryHashtag != null && lOther$queryHashtag != null) {
      if (l$queryHashtag.length != lOther$queryHashtag.length) return false;
      for (int i = 0; i < l$queryHashtag.length; i++) {
        final l$queryHashtag$entry = l$queryHashtag[i];
        final lOther$queryHashtag$entry = lOther$queryHashtag[i];
        if (l$queryHashtag$entry != lOther$queryHashtag$entry) return false;
      }
    } else if (l$queryHashtag != lOther$queryHashtag) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_HASHTAG_LIST = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetHashtagList'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'queryHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'asc'),
                        value: EnumValueNode(name: NameNode(value: 'name')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagFragmentData'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_HASHTAG_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);
QueryGetHashtagList _parserFnQueryGetHashtagList(Map<String, dynamic> data) =>
    QueryGetHashtagList.fromJson(data);

class OptionsQueryGetHashtagList
    extends graphql.QueryOptions<QueryGetHashtagList> {
  OptionsQueryGetHashtagList(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_HASHTAG_LIST,
            parserFn: _parserFnQueryGetHashtagList);
}

class WatchOptionsQueryGetHashtagList
    extends graphql.WatchQueryOptions<QueryGetHashtagList> {
  WatchOptionsQueryGetHashtagList(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_HASHTAG_LIST,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetHashtagList);
}

class FetchMoreOptionsQueryGetHashtagList extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetHashtagList(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_HASHTAG_LIST);
}

extension ClientExtensionQueryGetHashtagList on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagList>> queryGetHashtagList(
          [OptionsQueryGetHashtagList? options]) async =>
      await this.query(options ?? OptionsQueryGetHashtagList());
  graphql.ObservableQuery<QueryGetHashtagList> watchQueryGetHashtagList(
          [WatchOptionsQueryGetHashtagList? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetHashtagList());
}

graphql_flutter.QueryHookResult<QueryGetHashtagList> useQueryGetHashtagList(
        [OptionsQueryGetHashtagList? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetHashtagList());
graphql.ObservableQuery<QueryGetHashtagList> useWatchQueryGetHashtagList(
        [WatchOptionsQueryGetHashtagList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryGetHashtagList());

class QueryGetHashtagListWidget
    extends graphql_flutter.Query<QueryGetHashtagList> {
  QueryGetHashtagListWidget(
      {widgets.Key? key,
      OptionsQueryGetHashtagList? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagList> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetHashtagList(),
            builder: builder);
}

@JsonSerializable()
class QueryGetHashtagList$queryHashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  QueryGetHashtagList$queryHashtag(
      {required this.id,
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants,
      required this.$__typename});

  @override
  factory QueryGetHashtagList$queryHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagList$queryHashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetHashtagList$queryHashtag$hashtagVariants?>?
      hashtagVariants;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtagToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$hashtagVariants = hashtagVariants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$iconName,
      l$blessed,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagList$queryHashtag) ||
        runtimeType != other.runtimeType) return false;
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagList$queryHashtag$hashtagVariants extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetHashtagList$queryHashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate,
      required this.$__typename});

  @override
  factory QueryGetHashtagList$queryHashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariantsFromJson(json);

  final String id;

  final String variant;

  final QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$variant = variant;
    final l$skillsAggregate = skillsAggregate;
    final l$requestsAggregate = requestsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$variant,
      l$skillsAggregate,
      l$requestsAggregate,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetHashtagList$queryHashtag$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$skillsAggregate = skillsAggregate;
    final lOther$skillsAggregate = other.skillsAggregate;
    if (l$skillsAggregate != lOther$skillsAggregate) return false;
    final l$requestsAggregate = requestsAggregate;
    final lOther$requestsAggregate = other.requestsAggregate;
    if (l$requestsAggregate != lOther$requestsAggregate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetBlessedHashtagList extends JsonSerializable {
  QueryGetBlessedHashtagList({this.queryHashtag, required this.$__typename});

  @override
  factory QueryGetBlessedHashtagList.fromJson(Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagListFromJson(json);

  final List<QueryGetBlessedHashtagList$queryHashtag?>? queryHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetBlessedHashtagListToJson(this);
  int get hashCode {
    final l$queryHashtag = queryHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$queryHashtag == null
          ? null
          : Object.hashAll(l$queryHashtag.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetBlessedHashtagList) ||
        runtimeType != other.runtimeType) return false;
    final l$queryHashtag = queryHashtag;
    final lOther$queryHashtag = other.queryHashtag;
    if (l$queryHashtag != null && lOther$queryHashtag != null) {
      if (l$queryHashtag.length != lOther$queryHashtag.length) return false;
      for (int i = 0; i < l$queryHashtag.length; i++) {
        final l$queryHashtag$entry = l$queryHashtag[i];
        final lOther$queryHashtag$entry = lOther$queryHashtag[i];
        if (l$queryHashtag$entry != lOther$queryHashtag$entry) return false;
      }
    } else if (l$queryHashtag != lOther$queryHashtag) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_BLESSED_HASHTAG_LIST = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetBlessedHashtagList'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'queryHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'asc'),
                        value: EnumValueNode(name: NameNode(value: 'name')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'blessed'),
                        value: BooleanValueNode(value: true))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagFragmentData'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_HASHTAG_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);
QueryGetBlessedHashtagList _parserFnQueryGetBlessedHashtagList(
        Map<String, dynamic> data) =>
    QueryGetBlessedHashtagList.fromJson(data);

class OptionsQueryGetBlessedHashtagList
    extends graphql.QueryOptions<QueryGetBlessedHashtagList> {
  OptionsQueryGetBlessedHashtagList(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_BLESSED_HASHTAG_LIST,
            parserFn: _parserFnQueryGetBlessedHashtagList);
}

class WatchOptionsQueryGetBlessedHashtagList
    extends graphql.WatchQueryOptions<QueryGetBlessedHashtagList> {
  WatchOptionsQueryGetBlessedHashtagList(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_BLESSED_HASHTAG_LIST,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetBlessedHashtagList);
}

class FetchMoreOptionsQueryGetBlessedHashtagList
    extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetBlessedHashtagList(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery, document: QUERY_GET_BLESSED_HASHTAG_LIST);
}

extension ClientExtensionQueryGetBlessedHashtagList on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetBlessedHashtagList>>
      queryGetBlessedHashtagList(
              [OptionsQueryGetBlessedHashtagList? options]) async =>
          await this.query(options ?? OptionsQueryGetBlessedHashtagList());
  graphql.ObservableQuery<QueryGetBlessedHashtagList>
      watchQueryGetBlessedHashtagList(
              [WatchOptionsQueryGetBlessedHashtagList? options]) =>
          this.watchQuery(options ?? WatchOptionsQueryGetBlessedHashtagList());
}

graphql_flutter
    .QueryHookResult<QueryGetBlessedHashtagList> useQueryGetBlessedHashtagList(
        [OptionsQueryGetBlessedHashtagList? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetBlessedHashtagList());
graphql.ObservableQuery<QueryGetBlessedHashtagList>
    useWatchQueryGetBlessedHashtagList(
            [WatchOptionsQueryGetBlessedHashtagList? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptionsQueryGetBlessedHashtagList());

class QueryGetBlessedHashtagListWidget
    extends graphql_flutter.Query<QueryGetBlessedHashtagList> {
  QueryGetBlessedHashtagListWidget(
      {widgets.Key? key,
      OptionsQueryGetBlessedHashtagList? options,
      required graphql_flutter.QueryBuilder<QueryGetBlessedHashtagList>
          builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetBlessedHashtagList(),
            builder: builder);
}

@JsonSerializable()
class QueryGetBlessedHashtagList$queryHashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  QueryGetBlessedHashtagList$queryHashtag(
      {required this.id,
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants,
      required this.$__typename});

  @override
  factory QueryGetBlessedHashtagList$queryHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagList$queryHashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetBlessedHashtagList$queryHashtag$hashtagVariants?>?
      hashtagVariants;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtagToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$hashtagVariants = hashtagVariants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$iconName,
      l$blessed,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetBlessedHashtagList$queryHashtag) ||
        runtimeType != other.runtimeType) return false;
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetBlessedHashtagList$queryHashtag$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetBlessedHashtagList$queryHashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate,
      required this.$__typename});

  @override
  factory QueryGetBlessedHashtagList$queryHashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariantsFromJson(json);

  final String id;

  final String variant;

  final QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$variant = variant;
    final l$skillsAggregate = skillsAggregate;
    final l$requestsAggregate = requestsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$variant,
      l$skillsAggregate,
      l$requestsAggregate,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetBlessedHashtagList$queryHashtag$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$skillsAggregate = skillsAggregate;
    final lOther$skillsAggregate = other.skillsAggregate;
    if (l$skillsAggregate != lOther$skillsAggregate) return false;
    final l$requestsAggregate = requestsAggregate;
    final lOther$requestsAggregate = other.requestsAggregate;
    if (l$requestsAggregate != lOther$requestsAggregate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesQueryGetSkillsByUserId extends JsonSerializable {
  VariablesQueryGetSkillsByUserId({this.id});

  @override
  factory VariablesQueryGetSkillsByUserId.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetSkillsByUserIdFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetSkillsByUserIdToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetSkillsByUserId) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsByUserId extends JsonSerializable {
  QueryGetSkillsByUserId({this.getUser, required this.$__typename});

  @override
  factory QueryGetSkillsByUserId.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserIdFromJson(json);

  final QueryGetSkillsByUserId$getUser? getUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsByUserIdToJson(this);
  int get hashCode {
    final l$getUser = getUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$getUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsByUserId) || runtimeType != other.runtimeType)
      return false;
    final l$getUser = getUser;
    final lOther$getUser = other.getUser;
    if (l$getUser != lOther$getUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_SKILLS_BY_USER_ID = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSkillsByUserId'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'skillsAggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'skills'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'asc'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'title')))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'hashtagVariants'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'variant'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'hashtag'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'isAvailable'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'createdTimestamp'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryGetSkillsByUserId _parserFnQueryGetSkillsByUserId(
        Map<String, dynamic> data) =>
    QueryGetSkillsByUserId.fromJson(data);

class OptionsQueryGetSkillsByUserId
    extends graphql.QueryOptions<QueryGetSkillsByUserId> {
  OptionsQueryGetSkillsByUserId(
      {String? operationName,
      VariablesQueryGetSkillsByUserId? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_SKILLS_BY_USER_ID,
            parserFn: _parserFnQueryGetSkillsByUserId);
}

class WatchOptionsQueryGetSkillsByUserId
    extends graphql.WatchQueryOptions<QueryGetSkillsByUserId> {
  WatchOptionsQueryGetSkillsByUserId(
      {String? operationName,
      VariablesQueryGetSkillsByUserId? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_SKILLS_BY_USER_ID,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetSkillsByUserId);
}

class FetchMoreOptionsQueryGetSkillsByUserId extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetSkillsByUserId(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetSkillsByUserId? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_SKILLS_BY_USER_ID);
}

extension ClientExtensionQueryGetSkillsByUserId on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetSkillsByUserId>> queryGetSkillsByUserId(
          [OptionsQueryGetSkillsByUserId? options]) async =>
      await this.query(options ?? OptionsQueryGetSkillsByUserId());
  graphql.ObservableQuery<QueryGetSkillsByUserId> watchQueryGetSkillsByUserId(
          [WatchOptionsQueryGetSkillsByUserId? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetSkillsByUserId());
}

graphql_flutter.QueryHookResult<QueryGetSkillsByUserId>
    useQueryGetSkillsByUserId([OptionsQueryGetSkillsByUserId? options]) =>
        graphql_flutter.useQuery(options ?? OptionsQueryGetSkillsByUserId());
graphql.ObservableQuery<QueryGetSkillsByUserId> useWatchQueryGetSkillsByUserId(
        [WatchOptionsQueryGetSkillsByUserId? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptionsQueryGetSkillsByUserId());

class QueryGetSkillsByUserIdWidget
    extends graphql_flutter.Query<QueryGetSkillsByUserId> {
  QueryGetSkillsByUserIdWidget(
      {widgets.Key? key,
      OptionsQueryGetSkillsByUserId? options,
      required graphql_flutter.QueryBuilder<QueryGetSkillsByUserId> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetSkillsByUserId(),
            builder: builder);
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser extends JsonSerializable {
  QueryGetSkillsByUserId$getUser(
      {this.skillsAggregate, this.skills, required this.$__typename});

  @override
  factory QueryGetSkillsByUserId$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUserFromJson(json);

  final QueryGetSkillsByUserId$getUser$skillsAggregate? skillsAggregate;

  final List<QueryGetSkillsByUserId$getUser$skills?>? skills;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsByUserId$getUserToJson(this);
  int get hashCode {
    final l$skillsAggregate = skillsAggregate;
    final l$skills = skills;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skillsAggregate,
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsByUserId$getUser) ||
        runtimeType != other.runtimeType) return false;
    final l$skillsAggregate = skillsAggregate;
    final lOther$skillsAggregate = other.skillsAggregate;
    if (l$skillsAggregate != lOther$skillsAggregate) return false;
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skillsAggregate extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetSkillsByUserId$getUser$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUser$skillsAggregateFromJson(json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skillsAggregateToJson(this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsByUserId$getUser$skillsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skills extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skills(
      {required this.id,
      this.title,
      this.message,
      required this.hashtagVariants,
      this.isAvailable,
      this.createdTimestamp,
      required this.$__typename});

  @override
  factory QueryGetSkillsByUserId$getUser$skills.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUser$skillsFromJson(json);

  final String id;

  final String? title;

  final String? message;

  final List<QueryGetSkillsByUserId$getUser$skills$hashtagVariants?>
      hashtagVariants;

  final bool? isAvailable;

  final String? createdTimestamp;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skillsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$message = message;
    final l$hashtagVariants = hashtagVariants;
    final l$isAvailable = isAvailable;
    final l$createdTimestamp = createdTimestamp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$message,
      Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$isAvailable,
      l$createdTimestamp,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsByUserId$getUser$skills) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skills$hashtagVariants
    extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skills$hashtagVariants(
      {required this.variant,
      required this.hashtag,
      required this.$__typename});

  @override
  factory QueryGetSkillsByUserId$getUser$skills$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariantsFromJson(json);

  final String variant;

  final QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag hashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariantsToJson(this);
  int get hashCode {
    final l$variant = variant;
    final l$hashtag = hashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$variant, l$hashtag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsByUserId$getUser$skills$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != lOther$hashtag) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag
    extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagToJson(
          this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesQueryGetSkillsPageData extends JsonSerializable {
  VariablesQueryGetSkillsPageData({this.id});

  @override
  factory VariablesQueryGetSkillsPageData.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetSkillsPageDataFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetSkillsPageDataToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetSkillsPageData) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData extends JsonSerializable {
  QueryGetSkillsPageData(
      {this.queryHashtag, this.getUser, required this.$__typename});

  @override
  factory QueryGetSkillsPageData.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsPageDataFromJson(json);

  final List<QueryGetSkillsPageData$queryHashtag?>? queryHashtag;

  final QueryGetSkillsPageData$getUser? getUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsPageDataToJson(this);
  int get hashCode {
    final l$queryHashtag = queryHashtag;
    final l$getUser = getUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$queryHashtag == null
          ? null
          : Object.hashAll(l$queryHashtag.map((v) => v)),
      l$getUser,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsPageData) || runtimeType != other.runtimeType)
      return false;
    final l$queryHashtag = queryHashtag;
    final lOther$queryHashtag = other.queryHashtag;
    if (l$queryHashtag != null && lOther$queryHashtag != null) {
      if (l$queryHashtag.length != lOther$queryHashtag.length) return false;
      for (int i = 0; i < l$queryHashtag.length; i++) {
        final l$queryHashtag$entry = l$queryHashtag[i];
        final lOther$queryHashtag$entry = lOther$queryHashtag[i];
        if (l$queryHashtag$entry != lOther$queryHashtag$entry) return false;
      }
    } else if (l$queryHashtag != lOther$queryHashtag) {
      return false;
    }

    final l$getUser = getUser;
    final lOther$getUser = other.getUser;
    if (l$getUser != lOther$getUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_GET_SKILLS_PAGE_DATA = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSkillsPageData'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'queryHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'asc'),
                        value: EnumValueNode(name: NameNode(value: 'name')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'blessed'),
                        value: BooleanValueNode(value: true))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagFragmentData'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'getUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'skillsAggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'skills'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'order'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'asc'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'title')))
                        ]))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'isAvailable'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'createdTimestamp'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'hashtagVariants'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'order'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'asc'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'variant')))
                              ]))
                        ],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'hashtag'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'iconName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_HASHTAG_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);
QueryGetSkillsPageData _parserFnQueryGetSkillsPageData(
        Map<String, dynamic> data) =>
    QueryGetSkillsPageData.fromJson(data);

class OptionsQueryGetSkillsPageData
    extends graphql.QueryOptions<QueryGetSkillsPageData> {
  OptionsQueryGetSkillsPageData(
      {String? operationName,
      VariablesQueryGetSkillsPageData? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_SKILLS_PAGE_DATA,
            parserFn: _parserFnQueryGetSkillsPageData);
}

class WatchOptionsQueryGetSkillsPageData
    extends graphql.WatchQueryOptions<QueryGetSkillsPageData> {
  WatchOptionsQueryGetSkillsPageData(
      {String? operationName,
      VariablesQueryGetSkillsPageData? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_SKILLS_PAGE_DATA,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetSkillsPageData);
}

class FetchMoreOptionsQueryGetSkillsPageData extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetSkillsPageData(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetSkillsPageData? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_SKILLS_PAGE_DATA);
}

extension ClientExtensionQueryGetSkillsPageData on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetSkillsPageData>> queryGetSkillsPageData(
          [OptionsQueryGetSkillsPageData? options]) async =>
      await this.query(options ?? OptionsQueryGetSkillsPageData());
  graphql.ObservableQuery<QueryGetSkillsPageData> watchQueryGetSkillsPageData(
          [WatchOptionsQueryGetSkillsPageData? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetSkillsPageData());
}

graphql_flutter.QueryHookResult<QueryGetSkillsPageData>
    useQueryGetSkillsPageData([OptionsQueryGetSkillsPageData? options]) =>
        graphql_flutter.useQuery(options ?? OptionsQueryGetSkillsPageData());
graphql.ObservableQuery<QueryGetSkillsPageData> useWatchQueryGetSkillsPageData(
        [WatchOptionsQueryGetSkillsPageData? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptionsQueryGetSkillsPageData());

class QueryGetSkillsPageDataWidget
    extends graphql_flutter.Query<QueryGetSkillsPageData> {
  QueryGetSkillsPageDataWidget(
      {widgets.Key? key,
      OptionsQueryGetSkillsPageData? options,
      required graphql_flutter.QueryBuilder<QueryGetSkillsPageData> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetSkillsPageData(),
            builder: builder);
}

@JsonSerializable()
class QueryGetSkillsPageData$queryHashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  QueryGetSkillsPageData$queryHashtag(
      {required this.id,
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants,
      required this.$__typename});

  @override
  factory QueryGetSkillsPageData$queryHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$queryHashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetSkillsPageData$queryHashtag$hashtagVariants?>?
      hashtagVariants;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtagToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$hashtagVariants = hashtagVariants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$iconName,
      l$blessed,
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsPageData$queryHashtag) ||
        runtimeType != other.runtimeType) return false;
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$queryHashtag$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetSkillsPageData$queryHashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate,
      required this.$__typename});

  @override
  factory QueryGetSkillsPageData$queryHashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariantsFromJson(json);

  final String id;

  final String variant;

  final QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$variant = variant;
    final l$skillsAggregate = skillsAggregate;
    final l$requestsAggregate = requestsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$variant,
      l$skillsAggregate,
      l$requestsAggregate,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsPageData$queryHashtag$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) return false;
    final l$skillsAggregate = skillsAggregate;
    final lOther$skillsAggregate = other.skillsAggregate;
    if (l$skillsAggregate != lOther$skillsAggregate) return false;
    final l$requestsAggregate = requestsAggregate;
    final lOther$requestsAggregate = other.requestsAggregate;
    if (l$requestsAggregate != lOther$requestsAggregate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser extends JsonSerializable {
  QueryGetSkillsPageData$getUser(
      {this.skillsAggregate, this.skills, required this.$__typename});

  @override
  factory QueryGetSkillsPageData$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUserFromJson(json);

  final QueryGetSkillsPageData$getUser$skillsAggregate? skillsAggregate;

  final List<QueryGetSkillsPageData$getUser$skills?>? skills;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsPageData$getUserToJson(this);
  int get hashCode {
    final l$skillsAggregate = skillsAggregate;
    final l$skills = skills;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skillsAggregate,
      l$skills == null ? null : Object.hashAll(l$skills.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsPageData$getUser) ||
        runtimeType != other.runtimeType) return false;
    final l$skillsAggregate = skillsAggregate;
    final lOther$skillsAggregate = other.skillsAggregate;
    if (l$skillsAggregate != lOther$skillsAggregate) return false;
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skillsAggregate extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory QueryGetSkillsPageData$getUser$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUser$skillsAggregateFromJson(json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skillsAggregateToJson(this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsPageData$getUser$skillsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skills extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skills(
      {required this.id,
      this.title,
      this.message,
      this.isAvailable,
      this.createdTimestamp,
      required this.hashtagVariants,
      required this.$__typename});

  @override
  factory QueryGetSkillsPageData$getUser$skills.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUser$skillsFromJson(json);

  final String id;

  final String? title;

  final String? message;

  final bool? isAvailable;

  final String? createdTimestamp;

  final List<QueryGetSkillsPageData$getUser$skills$hashtagVariants?>
      hashtagVariants;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skillsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$message = message;
    final l$isAvailable = isAvailable;
    final l$createdTimestamp = createdTimestamp;
    final l$hashtagVariants = hashtagVariants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$message,
      l$isAvailable,
      l$createdTimestamp,
      Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsPageData$getUser$skills) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    final l$hashtagVariants = hashtagVariants;
    final lOther$hashtagVariants = other.hashtagVariants;
    if (l$hashtagVariants.length != lOther$hashtagVariants.length) return false;
    for (int i = 0; i < l$hashtagVariants.length; i++) {
      final l$hashtagVariants$entry = l$hashtagVariants[i];
      final lOther$hashtagVariants$entry = lOther$hashtagVariants[i];
      if (l$hashtagVariants$entry != lOther$hashtagVariants$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skills$hashtagVariants
    extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skills$hashtagVariants(
      {required this.hashtag, required this.$__typename});

  @override
  factory QueryGetSkillsPageData$getUser$skills$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariantsFromJson(json);

  final QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag hashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariantsToJson(this);
  int get hashCode {
    final l$hashtag = hashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hashtag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSkillsPageData$getUser$skills$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != lOther$hashtag) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag
    extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag(
      {required this.id,
      required this.name,
      this.iconName,
      required this.$__typename});

  @override
  factory QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagFromJson(
          json);

  final String id;

  final String name;

  final String? iconName;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagToJson(
          this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$iconName = iconName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$iconName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$iconName = iconName;
    final lOther$iconName = other.iconName;
    if (l$iconName != lOther$iconName) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesQuerySearchTopRequestHashtag extends JsonSerializable {
  VariablesQuerySearchTopRequestHashtag(
      {required this.keywordRegex, required this.hashtagOrder, this.limit});

  @override
  factory VariablesQuerySearchTopRequestHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesQuerySearchTopRequestHashtagFromJson(json);

  final String keywordRegex;

  final InputHashtagOrder hashtagOrder;

  final int? limit;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesQuerySearchTopRequestHashtagToJson(this);
  int get hashCode {
    final l$keywordRegex = keywordRegex;
    final l$hashtagOrder = hashtagOrder;
    final l$limit = limit;
    return Object.hashAll([l$keywordRegex, l$hashtagOrder, l$limit]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQuerySearchTopRequestHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$keywordRegex = keywordRegex;
    final lOther$keywordRegex = other.keywordRegex;
    if (l$keywordRegex != lOther$keywordRegex) return false;
    final l$hashtagOrder = hashtagOrder;
    final lOther$hashtagOrder = other.hashtagOrder;
    if (l$hashtagOrder != lOther$hashtagOrder) return false;
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) return false;
    return true;
  }
}

@JsonSerializable()
class QuerySearchTopRequestHashtag extends JsonSerializable {
  QuerySearchTopRequestHashtag({this.queryHashtag, required this.$__typename});

  @override
  factory QuerySearchTopRequestHashtag.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchTopRequestHashtagFromJson(json);

  final List<QuerySearchTopRequestHashtag$queryHashtag?>? queryHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$QuerySearchTopRequestHashtagToJson(this);
  int get hashCode {
    final l$queryHashtag = queryHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$queryHashtag == null
          ? null
          : Object.hashAll(l$queryHashtag.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerySearchTopRequestHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$queryHashtag = queryHashtag;
    final lOther$queryHashtag = other.queryHashtag;
    if (l$queryHashtag != null && lOther$queryHashtag != null) {
      if (l$queryHashtag.length != lOther$queryHashtag.length) return false;
      for (int i = 0; i < l$queryHashtag.length; i++) {
        final l$queryHashtag$entry = l$queryHashtag[i];
        final lOther$queryHashtag$entry = lOther$queryHashtag[i];
        if (l$queryHashtag$entry != lOther$queryHashtag$entry) return false;
      }
    } else if (l$queryHashtag != lOther$queryHashtag) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const QUERY_SEARCH_TOP_REQUEST_HASHTAG = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchTopRequestHashtag'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'keywordRegex')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagOrder')),
            type: NamedTypeNode(
                name: NameNode(value: 'HashtagOrder'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'limit')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '12')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'queryHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'regexp'),
                              value: VariableNode(
                                  name: NameNode(value: 'keywordRegex')))
                        ]))
                  ])),
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: VariableNode(name: NameNode(value: 'hashtagOrder'))),
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'limit')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'iconName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'blessed'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'skillCountAllTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'skillCountLast1w'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'skillCountLast24h'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'requestCountAllTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'requestCountLast1w'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'requestCountLast24h'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QuerySearchTopRequestHashtag _parserFnQuerySearchTopRequestHashtag(
        Map<String, dynamic> data) =>
    QuerySearchTopRequestHashtag.fromJson(data);

class OptionsQuerySearchTopRequestHashtag
    extends graphql.QueryOptions<QuerySearchTopRequestHashtag> {
  OptionsQuerySearchTopRequestHashtag(
      {String? operationName,
      required VariablesQuerySearchTopRequestHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_SEARCH_TOP_REQUEST_HASHTAG,
            parserFn: _parserFnQuerySearchTopRequestHashtag);
}

class WatchOptionsQuerySearchTopRequestHashtag
    extends graphql.WatchQueryOptions<QuerySearchTopRequestHashtag> {
  WatchOptionsQuerySearchTopRequestHashtag(
      {String? operationName,
      required VariablesQuerySearchTopRequestHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_SEARCH_TOP_REQUEST_HASHTAG,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQuerySearchTopRequestHashtag);
}

class FetchMoreOptionsQuerySearchTopRequestHashtag
    extends graphql.FetchMoreOptions {
  FetchMoreOptionsQuerySearchTopRequestHashtag(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQuerySearchTopRequestHashtag variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_SEARCH_TOP_REQUEST_HASHTAG);
}

extension ClientExtensionQuerySearchTopRequestHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<QuerySearchTopRequestHashtag>>
      querySearchTopRequestHashtag(
              OptionsQuerySearchTopRequestHashtag options) async =>
          await this.query(options);
  graphql.ObservableQuery<QuerySearchTopRequestHashtag>
      watchQuerySearchTopRequestHashtag(
              WatchOptionsQuerySearchTopRequestHashtag options) =>
          this.watchQuery(options);
}

graphql_flutter.QueryHookResult<QuerySearchTopRequestHashtag>
    useQuerySearchTopRequestHashtag(
            OptionsQuerySearchTopRequestHashtag options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<QuerySearchTopRequestHashtag>
    useWatchQuerySearchTopRequestHashtag(
            WatchOptionsQuerySearchTopRequestHashtag options) =>
        graphql_flutter.useWatchQuery(options);

class QuerySearchTopRequestHashtagWidget
    extends graphql_flutter.Query<QuerySearchTopRequestHashtag> {
  QuerySearchTopRequestHashtagWidget(
      {widgets.Key? key,
      required OptionsQuerySearchTopRequestHashtag options,
      required graphql_flutter.QueryBuilder<QuerySearchTopRequestHashtag>
          builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable()
class QuerySearchTopRequestHashtag$queryHashtag extends JsonSerializable {
  QuerySearchTopRequestHashtag$queryHashtag(
      {required this.id,
      this.iconName,
      required this.name,
      this.blessed,
      this.skillCountAllTime,
      this.skillCountLast1w,
      this.skillCountLast24h,
      this.requestCountAllTime,
      this.requestCountLast1w,
      this.requestCountLast24h,
      required this.$__typename});

  @override
  factory QuerySearchTopRequestHashtag$queryHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QuerySearchTopRequestHashtag$queryHashtagFromJson(json);

  final String id;

  final String? iconName;

  final String name;

  final bool? blessed;

  final int? skillCountAllTime;

  final int? skillCountLast1w;

  final int? skillCountLast24h;

  final int? requestCountAllTime;

  final int? requestCountLast1w;

  final int? requestCountLast24h;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$QuerySearchTopRequestHashtag$queryHashtagToJson(this);
  int get hashCode {
    final l$id = id;
    final l$iconName = iconName;
    final l$name = name;
    final l$blessed = blessed;
    final l$skillCountAllTime = skillCountAllTime;
    final l$skillCountLast1w = skillCountLast1w;
    final l$skillCountLast24h = skillCountLast24h;
    final l$requestCountAllTime = requestCountAllTime;
    final l$requestCountLast1w = requestCountLast1w;
    final l$requestCountLast24h = requestCountLast24h;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$iconName,
      l$name,
      l$blessed,
      l$skillCountAllTime,
      l$skillCountLast1w,
      l$skillCountLast24h,
      l$requestCountAllTime,
      l$requestCountLast1w,
      l$requestCountLast24h,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerySearchTopRequestHashtag$queryHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$iconName = iconName;
    final lOther$iconName = other.iconName;
    if (l$iconName != lOther$iconName) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$blessed = blessed;
    final lOther$blessed = other.blessed;
    if (l$blessed != lOther$blessed) return false;
    final l$skillCountAllTime = skillCountAllTime;
    final lOther$skillCountAllTime = other.skillCountAllTime;
    if (l$skillCountAllTime != lOther$skillCountAllTime) return false;
    final l$skillCountLast1w = skillCountLast1w;
    final lOther$skillCountLast1w = other.skillCountLast1w;
    if (l$skillCountLast1w != lOther$skillCountLast1w) return false;
    final l$skillCountLast24h = skillCountLast24h;
    final lOther$skillCountLast24h = other.skillCountLast24h;
    if (l$skillCountLast24h != lOther$skillCountLast24h) return false;
    final l$requestCountAllTime = requestCountAllTime;
    final lOther$requestCountAllTime = other.requestCountAllTime;
    if (l$requestCountAllTime != lOther$requestCountAllTime) return false;
    final l$requestCountLast1w = requestCountLast1w;
    final lOther$requestCountLast1w = other.requestCountLast1w;
    if (l$requestCountLast1w != lOther$requestCountLast1w) return false;
    final l$requestCountLast24h = requestCountLast24h;
    final lOther$requestCountLast24h = other.requestCountLast24h;
    if (l$requestCountLast24h != lOther$requestCountLast24h) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}
