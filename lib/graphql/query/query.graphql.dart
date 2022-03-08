import '../fragment/fragment.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable()
class QueryGetAllUsers extends JsonSerializable {
  QueryGetAllUsers({this.queryUser});

  @override
  factory QueryGetAllUsers.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllUsersFromJson(json);

  final List<QueryGetAllUsers$queryUser?>? queryUser;

  @override
  Map<String, dynamic> toJson() => _$QueryGetAllUsersToJson(this);
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

class GQLOptionsQueryGetAllUsers
    extends graphql.QueryOptions<QueryGetAllUsers> {
  GQLOptionsQueryGetAllUsers(
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
            parserFn: (data) => QueryGetAllUsers.fromJson(data));
}

class GQLWatchOptionsQueryGetAllUsers
    extends graphql.WatchQueryOptions<QueryGetAllUsers> {
  GQLWatchOptionsQueryGetAllUsers(
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
            parserFn: (data) => QueryGetAllUsers.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetAllUsers extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetAllUsers(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_ALL_USERS);
}

extension GQLExtensionQueryGetAllUsers on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetAllUsers>> queryGetAllUsers(
          [GQLOptionsQueryGetAllUsers? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetAllUsers());
  graphql.ObservableQuery<QueryGetAllUsers> watchQueryGetAllUsers(
          [GQLWatchOptionsQueryGetAllUsers? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetAllUsers());
}

class GQLFQueryGetAllUsers extends graphql_flutter.Query<QueryGetAllUsers> {
  GQLFQueryGetAllUsers(
      {widgets.Key? key,
      GQLOptionsQueryGetAllUsers? options,
      required graphql_flutter.QueryBuilder<QueryGetAllUsers> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetAllUsers(),
            builder: builder);
}

@JsonSerializable()
class QueryGetAllUsers$queryUser extends JsonSerializable {
  QueryGetAllUsers$queryUser(
      {required this.id,
      required this.email,
      required this.name,
      this.age,
      this.isAdmin,
      this.createdTimestamp});

  @override
  factory QueryGetAllUsers$queryUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllUsers$queryUserFromJson(json);

  final String id;

  final String email;

  final String name;

  final int? age;

  final bool? isAdmin;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$QueryGetAllUsers$queryUserToJson(this);
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
}

@JsonSerializable()
class QueryGetUserWithEmail extends JsonSerializable {
  QueryGetUserWithEmail({this.getUser});

  @override
  factory QueryGetUserWithEmail.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithEmailFromJson(json);

  final QueryGetUserWithEmail$getUser? getUser;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithEmailToJson(this);
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

class GQLOptionsQueryGetUserWithEmail
    extends graphql.QueryOptions<QueryGetUserWithEmail> {
  GQLOptionsQueryGetUserWithEmail(
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
            parserFn: (data) => QueryGetUserWithEmail.fromJson(data));
}

class GQLWatchOptionsQueryGetUserWithEmail
    extends graphql.WatchQueryOptions<QueryGetUserWithEmail> {
  GQLWatchOptionsQueryGetUserWithEmail(
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
            parserFn: (data) => QueryGetUserWithEmail.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetUserWithEmail
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetUserWithEmail(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetUserWithEmail? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_USER_WITH_EMAIL);
}

extension GQLExtensionQueryGetUserWithEmail on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetUserWithEmail>> queryGetUserWithEmail(
          [GQLOptionsQueryGetUserWithEmail? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetUserWithEmail());
  graphql.ObservableQuery<QueryGetUserWithEmail> watchQueryGetUserWithEmail(
          [GQLWatchOptionsQueryGetUserWithEmail? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetUserWithEmail());
}

class GQLFQueryGetUserWithEmail
    extends graphql_flutter.Query<QueryGetUserWithEmail> {
  GQLFQueryGetUserWithEmail(
      {widgets.Key? key,
      GQLOptionsQueryGetUserWithEmail? options,
      required graphql_flutter.QueryBuilder<QueryGetUserWithEmail> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetUserWithEmail(),
            builder: builder);
}

@JsonSerializable()
class QueryGetUserWithEmail$getUser extends JsonSerializable {
  QueryGetUserWithEmail$getUser(
      {required this.id,
      required this.name,
      this.age,
      required this.email,
      this.isAdmin,
      this.createdTimestamp});

  @override
  factory QueryGetUserWithEmail$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithEmail$getUserFromJson(json);

  final String id;

  final String name;

  final int? age;

  final String email;

  final bool? isAdmin;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithEmail$getUserToJson(this);
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
}

@JsonSerializable()
class QueryGetUserWithId extends JsonSerializable {
  QueryGetUserWithId({this.getUser});

  @override
  factory QueryGetUserWithId.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithIdFromJson(json);

  final QueryGetUserWithId$getUser? getUser;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithIdToJson(this);
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

class GQLOptionsQueryGetUserWithId
    extends graphql.QueryOptions<QueryGetUserWithId> {
  GQLOptionsQueryGetUserWithId(
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
            parserFn: (data) => QueryGetUserWithId.fromJson(data));
}

class GQLWatchOptionsQueryGetUserWithId
    extends graphql.WatchQueryOptions<QueryGetUserWithId> {
  GQLWatchOptionsQueryGetUserWithId(
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
            parserFn: (data) => QueryGetUserWithId.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetUserWithId extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetUserWithId(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetUserWithId? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_USER_WITH_ID);
}

extension GQLExtensionQueryGetUserWithId on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetUserWithId>> queryGetUserWithId(
          [GQLOptionsQueryGetUserWithId? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetUserWithId());
  graphql.ObservableQuery<QueryGetUserWithId> watchQueryGetUserWithId(
          [GQLWatchOptionsQueryGetUserWithId? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetUserWithId());
}

class GQLFQueryGetUserWithId extends graphql_flutter.Query<QueryGetUserWithId> {
  GQLFQueryGetUserWithId(
      {widgets.Key? key,
      GQLOptionsQueryGetUserWithId? options,
      required graphql_flutter.QueryBuilder<QueryGetUserWithId> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetUserWithId(),
            builder: builder);
}

@JsonSerializable()
class QueryGetUserWithId$getUser extends JsonSerializable {
  QueryGetUserWithId$getUser(
      {required this.id,
      required this.name,
      this.age,
      required this.email,
      this.isAdmin,
      this.createdTimestamp});

  @override
  factory QueryGetUserWithId$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithId$getUserFromJson(json);

  final String id;

  final String name;

  final int? age;

  final String email;

  final bool? isAdmin;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithId$getUserToJson(this);
}

@JsonSerializable()
class QueryGetAllRequests extends JsonSerializable {
  QueryGetAllRequests({this.queryRequest});

  @override
  factory QueryGetAllRequests.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllRequestsFromJson(json);

  final List<QueryGetAllRequests$queryRequest?>? queryRequest;

  @override
  Map<String, dynamic> toJson() => _$QueryGetAllRequestsToJson(this);
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

class GQLOptionsQueryGetAllRequests
    extends graphql.QueryOptions<QueryGetAllRequests> {
  GQLOptionsQueryGetAllRequests(
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
            parserFn: (data) => QueryGetAllRequests.fromJson(data));
}

class GQLWatchOptionsQueryGetAllRequests
    extends graphql.WatchQueryOptions<QueryGetAllRequests> {
  GQLWatchOptionsQueryGetAllRequests(
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
            parserFn: (data) => QueryGetAllRequests.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetAllRequests extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetAllRequests(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_ALL_REQUESTS);
}

extension GQLExtensionQueryGetAllRequests on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetAllRequests>> queryGetAllRequests(
          [GQLOptionsQueryGetAllRequests? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetAllRequests());
  graphql.ObservableQuery<QueryGetAllRequests> watchQueryGetAllRequests(
          [GQLWatchOptionsQueryGetAllRequests? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetAllRequests());
}

class GQLFQueryGetAllRequests
    extends graphql_flutter.Query<QueryGetAllRequests> {
  GQLFQueryGetAllRequests(
      {widgets.Key? key,
      GQLOptionsQueryGetAllRequests? options,
      required graphql_flutter.QueryBuilder<QueryGetAllRequests> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetAllRequests(),
            builder: builder);
}

@JsonSerializable()
class QueryGetAllRequests$queryRequest extends JsonSerializable {
  QueryGetAllRequests$queryRequest(
      {required this.id,
      required this.owner,
      required this.title,
      required this.message,
      this.createdTimestamp});

  @override
  factory QueryGetAllRequests$queryRequest.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetAllRequests$queryRequestFromJson(json);

  final String id;

  final QueryGetAllRequests$queryRequest$owner owner;

  final String title;

  final String message;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetAllRequests$queryRequestToJson(this);
}

@JsonSerializable()
class QueryGetAllRequests$queryRequest$owner extends JsonSerializable {
  QueryGetAllRequests$queryRequest$owner({required this.name});

  @override
  factory QueryGetAllRequests$queryRequest$owner.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetAllRequests$queryRequest$ownerFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetAllRequests$queryRequest$ownerToJson(this);
}

@JsonSerializable()
class VariablesQueryGetHashtagMetaByName extends JsonSerializable {
  VariablesQueryGetHashtagMetaByName({this.metaName});

  @override
  factory VariablesQueryGetHashtagMetaByName.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesQueryGetHashtagMetaByNameFromJson(json);

  final String? metaName;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetHashtagMetaByNameToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaByName extends JsonSerializable {
  QueryGetHashtagMetaByName({this.getHashtagMeta});

  @override
  factory QueryGetHashtagMetaByName.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaByNameFromJson(json);

  final QueryGetHashtagMetaByName$getHashtagMeta? getHashtagMeta;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagMetaByNameToJson(this);
}

const QUERY_GET_HASHTAG_META_BY_NAME = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetHashtagMetaByName'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'metaName')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'metaName'),
                  value: VariableNode(name: NameNode(value: 'metaName')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagMetaFragmentData'),
                  directives: []),
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
  FRAGMENT_HASHTAG_META_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);

class GQLOptionsQueryGetHashtagMetaByName
    extends graphql.QueryOptions<QueryGetHashtagMetaByName> {
  GQLOptionsQueryGetHashtagMetaByName(
      {String? operationName,
      VariablesQueryGetHashtagMetaByName? variables,
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
            document: QUERY_GET_HASHTAG_META_BY_NAME,
            parserFn: (data) => QueryGetHashtagMetaByName.fromJson(data));
}

class GQLWatchOptionsQueryGetHashtagMetaByName
    extends graphql.WatchQueryOptions<QueryGetHashtagMetaByName> {
  GQLWatchOptionsQueryGetHashtagMetaByName(
      {String? operationName,
      VariablesQueryGetHashtagMetaByName? variables,
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
            document: QUERY_GET_HASHTAG_META_BY_NAME,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => QueryGetHashtagMetaByName.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetHashtagMetaByName
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetHashtagMetaByName(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetHashtagMetaByName? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_HASHTAG_META_BY_NAME);
}

extension GQLExtensionQueryGetHashtagMetaByName on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagMetaByName>>
      queryGetHashtagMetaByName(
              [GQLOptionsQueryGetHashtagMetaByName? options]) async =>
          await this.query(options ?? GQLOptionsQueryGetHashtagMetaByName());
  graphql.ObservableQuery<
      QueryGetHashtagMetaByName> watchQueryGetHashtagMetaByName(
          [GQLWatchOptionsQueryGetHashtagMetaByName? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetHashtagMetaByName());
}

class GQLFQueryGetHashtagMetaByName
    extends graphql_flutter.Query<QueryGetHashtagMetaByName> {
  GQLFQueryGetHashtagMetaByName(
      {widgets.Key? key,
      GQLOptionsQueryGetHashtagMetaByName? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagMetaByName> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetHashtagMetaByName(),
            builder: builder);
}

@JsonSerializable()
class QueryGetHashtagMetaByName$getHashtagMeta extends JsonSerializable
    implements FragmentHashtagMetaFragmentData {
  QueryGetHashtagMetaByName$getHashtagMeta(
      {required this.id,
      required this.metaName,
      this.iconName,
      this.blessed,
      this.hashtagVariants});

  @override
  factory QueryGetHashtagMetaByName$getHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaByName$getHashtagMetaFromJson(json);

  final String id;

  final String metaName;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaByName$getHashtagMetaToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants(
      {required this.id,
      required this.variantName,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariantsFromJson(json);

  final String id;

  final String variantName;

  final QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class VariablesQueryGetHashtagMetaById extends JsonSerializable {
  VariablesQueryGetHashtagMetaById({this.id});

  @override
  factory VariablesQueryGetHashtagMetaById.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesQueryGetHashtagMetaByIdFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetHashtagMetaByIdToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaById extends JsonSerializable {
  QueryGetHashtagMetaById({this.getHashtagMeta});

  @override
  factory QueryGetHashtagMetaById.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaByIdFromJson(json);

  final QueryGetHashtagMetaById$getHashtagMeta? getHashtagMeta;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagMetaByIdToJson(this);
}

const QUERY_GET_HASHTAG_META_BY_ID = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetHashtagMetaById'),
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
            name: NameNode(value: 'getHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagMetaFragmentData'),
                  directives: []),
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
  FRAGMENT_HASHTAG_META_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);

class GQLOptionsQueryGetHashtagMetaById
    extends graphql.QueryOptions<QueryGetHashtagMetaById> {
  GQLOptionsQueryGetHashtagMetaById(
      {String? operationName,
      VariablesQueryGetHashtagMetaById? variables,
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
            document: QUERY_GET_HASHTAG_META_BY_ID,
            parserFn: (data) => QueryGetHashtagMetaById.fromJson(data));
}

class GQLWatchOptionsQueryGetHashtagMetaById
    extends graphql.WatchQueryOptions<QueryGetHashtagMetaById> {
  GQLWatchOptionsQueryGetHashtagMetaById(
      {String? operationName,
      VariablesQueryGetHashtagMetaById? variables,
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
            document: QUERY_GET_HASHTAG_META_BY_ID,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => QueryGetHashtagMetaById.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetHashtagMetaById
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetHashtagMetaById(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetHashtagMetaById? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_HASHTAG_META_BY_ID);
}

extension GQLExtensionQueryGetHashtagMetaById on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagMetaById>> queryGetHashtagMetaById(
          [GQLOptionsQueryGetHashtagMetaById? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetHashtagMetaById());
  graphql.ObservableQuery<QueryGetHashtagMetaById> watchQueryGetHashtagMetaById(
          [GQLWatchOptionsQueryGetHashtagMetaById? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetHashtagMetaById());
}

class GQLFQueryGetHashtagMetaById
    extends graphql_flutter.Query<QueryGetHashtagMetaById> {
  GQLFQueryGetHashtagMetaById(
      {widgets.Key? key,
      GQLOptionsQueryGetHashtagMetaById? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagMetaById> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetHashtagMetaById(),
            builder: builder);
}

@JsonSerializable()
class QueryGetHashtagMetaById$getHashtagMeta extends JsonSerializable
    implements FragmentHashtagMetaFragmentData {
  QueryGetHashtagMetaById$getHashtagMeta(
      {required this.id,
      required this.metaName,
      this.iconName,
      this.blessed,
      this.hashtagVariants});

  @override
  factory QueryGetHashtagMetaById$getHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaById$getHashtagMetaFromJson(json);

  final String id;

  final String metaName;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaById$getHashtagMetaToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants(
      {required this.id,
      required this.variantName,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariantsFromJson(json);

  final String id;

  final String variantName;

  final QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagMetaList extends JsonSerializable {
  QueryGetHashtagMetaList({this.queryHashtagMeta});

  @override
  factory QueryGetHashtagMetaList.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaListFromJson(json);

  final List<QueryGetHashtagMetaList$queryHashtagMeta?>? queryHashtagMeta;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagMetaListToJson(this);
}

const QUERY_GET_HASHTAG_META_LIST = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetHashtagMetaList'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'queryHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'asc'),
                        value: EnumValueNode(name: NameNode(value: 'metaName')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'HashtagMetaFragmentData'),
                  directives: []),
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
  FRAGMENT_HASHTAG_META_FRAGMENT_DATA,
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
]);

class GQLOptionsQueryGetHashtagMetaList
    extends graphql.QueryOptions<QueryGetHashtagMetaList> {
  GQLOptionsQueryGetHashtagMetaList(
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
            document: QUERY_GET_HASHTAG_META_LIST,
            parserFn: (data) => QueryGetHashtagMetaList.fromJson(data));
}

class GQLWatchOptionsQueryGetHashtagMetaList
    extends graphql.WatchQueryOptions<QueryGetHashtagMetaList> {
  GQLWatchOptionsQueryGetHashtagMetaList(
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
            document: QUERY_GET_HASHTAG_META_LIST,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => QueryGetHashtagMetaList.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetHashtagMetaList
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetHashtagMetaList(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_HASHTAG_META_LIST);
}

extension GQLExtensionQueryGetHashtagMetaList on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagMetaList>> queryGetHashtagMetaList(
          [GQLOptionsQueryGetHashtagMetaList? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetHashtagMetaList());
  graphql.ObservableQuery<QueryGetHashtagMetaList> watchQueryGetHashtagMetaList(
          [GQLWatchOptionsQueryGetHashtagMetaList? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetHashtagMetaList());
}

class GQLFQueryGetHashtagMetaList
    extends graphql_flutter.Query<QueryGetHashtagMetaList> {
  GQLFQueryGetHashtagMetaList(
      {widgets.Key? key,
      GQLOptionsQueryGetHashtagMetaList? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagMetaList> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetHashtagMetaList(),
            builder: builder);
}

@JsonSerializable()
class QueryGetHashtagMetaList$queryHashtagMeta extends JsonSerializable
    implements FragmentHashtagMetaFragmentData {
  QueryGetHashtagMetaList$queryHashtagMeta(
      {required this.id,
      required this.metaName,
      this.iconName,
      this.blessed,
      this.hashtagVariants});

  @override
  factory QueryGetHashtagMetaList$queryHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaList$queryHashtagMetaFromJson(json);

  final String id;

  final String metaName;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaList$queryHashtagMetaToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants(
      {required this.id,
      required this.variantName,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariantsFromJson(json);

  final String id;

  final String variantName;

  final QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregateToJson(
          this);
}
