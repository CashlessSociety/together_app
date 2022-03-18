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
class VariablesQueryGetHashtagByName extends JsonSerializable {
  VariablesQueryGetHashtagByName({this.name});

  @override
  factory VariablesQueryGetHashtagByName.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetHashtagByNameFromJson(json);

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryGetHashtagByNameToJson(this);
}

@JsonSerializable()
class QueryGetHashtagByName extends JsonSerializable {
  QueryGetHashtagByName({this.getHashtag});

  @override
  factory QueryGetHashtagByName.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagByNameFromJson(json);

  final QueryGetHashtagByName$getHashtag? getHashtag;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagByNameToJson(this);
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

class GQLOptionsQueryGetHashtagByName
    extends graphql.QueryOptions<QueryGetHashtagByName> {
  GQLOptionsQueryGetHashtagByName(
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
            parserFn: (data) => QueryGetHashtagByName.fromJson(data));
}

class GQLWatchOptionsQueryGetHashtagByName
    extends graphql.WatchQueryOptions<QueryGetHashtagByName> {
  GQLWatchOptionsQueryGetHashtagByName(
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
            parserFn: (data) => QueryGetHashtagByName.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetHashtagByName
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetHashtagByName(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetHashtagByName? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_HASHTAG_BY_NAME);
}

extension GQLExtensionQueryGetHashtagByName on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagByName>> queryGetHashtagByName(
          [GQLOptionsQueryGetHashtagByName? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetHashtagByName());
  graphql.ObservableQuery<QueryGetHashtagByName> watchQueryGetHashtagByName(
          [GQLWatchOptionsQueryGetHashtagByName? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetHashtagByName());
}

class GQLFQueryGetHashtagByName
    extends graphql_flutter.Query<QueryGetHashtagByName> {
  GQLFQueryGetHashtagByName(
      {widgets.Key? key,
      GQLOptionsQueryGetHashtagByName? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagByName> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetHashtagByName(),
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
      this.hashtagVariants});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtagToJson(this);
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
      this.requestsAggregate});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregateToJson(
          this);
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
}

@JsonSerializable()
class QueryGetHashtagById extends JsonSerializable {
  QueryGetHashtagById({this.getHashtag});

  @override
  factory QueryGetHashtagById.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagByIdFromJson(json);

  final QueryGetHashtagById$getHashtag? getHashtag;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagByIdToJson(this);
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

class GQLOptionsQueryGetHashtagById
    extends graphql.QueryOptions<QueryGetHashtagById> {
  GQLOptionsQueryGetHashtagById(
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
            parserFn: (data) => QueryGetHashtagById.fromJson(data));
}

class GQLWatchOptionsQueryGetHashtagById
    extends graphql.WatchQueryOptions<QueryGetHashtagById> {
  GQLWatchOptionsQueryGetHashtagById(
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
            parserFn: (data) => QueryGetHashtagById.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetHashtagById extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetHashtagById(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetHashtagById? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_HASHTAG_BY_ID);
}

extension GQLExtensionQueryGetHashtagById on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagById>> queryGetHashtagById(
          [GQLOptionsQueryGetHashtagById? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetHashtagById());
  graphql.ObservableQuery<QueryGetHashtagById> watchQueryGetHashtagById(
          [GQLWatchOptionsQueryGetHashtagById? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetHashtagById());
}

class GQLFQueryGetHashtagById
    extends graphql_flutter.Query<QueryGetHashtagById> {
  GQLFQueryGetHashtagById(
      {widgets.Key? key,
      GQLOptionsQueryGetHashtagById? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagById> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetHashtagById(),
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
      this.hashtagVariants});

  @override
  factory QueryGetHashtagById$getHashtag.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<QueryGetHashtagById$getHashtag$hashtagVariants?>? hashtagVariants;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagById$getHashtagToJson(this);
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
      this.requestsAggregate});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate({this.count});

  @override
  factory QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagList extends JsonSerializable {
  QueryGetHashtagList({this.queryHashtag});

  @override
  factory QueryGetHashtagList.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagListFromJson(json);

  final List<QueryGetHashtagList$queryHashtag?>? queryHashtag;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagListToJson(this);
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

class GQLOptionsQueryGetHashtagList
    extends graphql.QueryOptions<QueryGetHashtagList> {
  GQLOptionsQueryGetHashtagList(
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
            parserFn: (data) => QueryGetHashtagList.fromJson(data));
}

class GQLWatchOptionsQueryGetHashtagList
    extends graphql.WatchQueryOptions<QueryGetHashtagList> {
  GQLWatchOptionsQueryGetHashtagList(
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
            parserFn: (data) => QueryGetHashtagList.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetHashtagList extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetHashtagList(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_HASHTAG_LIST);
}

extension GQLExtensionQueryGetHashtagList on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetHashtagList>> queryGetHashtagList(
          [GQLOptionsQueryGetHashtagList? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetHashtagList());
  graphql.ObservableQuery<QueryGetHashtagList> watchQueryGetHashtagList(
          [GQLWatchOptionsQueryGetHashtagList? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetHashtagList());
}

class GQLFQueryGetHashtagList
    extends graphql_flutter.Query<QueryGetHashtagList> {
  GQLFQueryGetHashtagList(
      {widgets.Key? key,
      GQLOptionsQueryGetHashtagList? options,
      required graphql_flutter.QueryBuilder<QueryGetHashtagList> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetHashtagList(),
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
      this.hashtagVariants});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtagToJson(this);
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
      this.requestsAggregate});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetBlessedHashtagList extends JsonSerializable {
  QueryGetBlessedHashtagList({this.queryHashtag});

  @override
  factory QueryGetBlessedHashtagList.fromJson(Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagListFromJson(json);

  final List<QueryGetBlessedHashtagList$queryHashtag?>? queryHashtag;

  @override
  Map<String, dynamic> toJson() => _$QueryGetBlessedHashtagListToJson(this);
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

class GQLOptionsQueryGetBlessedHashtagList
    extends graphql.QueryOptions<QueryGetBlessedHashtagList> {
  GQLOptionsQueryGetBlessedHashtagList(
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
            parserFn: (data) => QueryGetBlessedHashtagList.fromJson(data));
}

class GQLWatchOptionsQueryGetBlessedHashtagList
    extends graphql.WatchQueryOptions<QueryGetBlessedHashtagList> {
  GQLWatchOptionsQueryGetBlessedHashtagList(
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
            parserFn: (data) => QueryGetBlessedHashtagList.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetBlessedHashtagList
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetBlessedHashtagList(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery, document: QUERY_GET_BLESSED_HASHTAG_LIST);
}

extension GQLExtensionQueryGetBlessedHashtagList on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetBlessedHashtagList>>
      queryGetBlessedHashtagList(
              [GQLOptionsQueryGetBlessedHashtagList? options]) async =>
          await this.query(options ?? GQLOptionsQueryGetBlessedHashtagList());
  graphql.ObservableQuery<
      QueryGetBlessedHashtagList> watchQueryGetBlessedHashtagList(
          [GQLWatchOptionsQueryGetBlessedHashtagList? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetBlessedHashtagList());
}

class GQLFQueryGetBlessedHashtagList
    extends graphql_flutter.Query<QueryGetBlessedHashtagList> {
  GQLFQueryGetBlessedHashtagList(
      {widgets.Key? key,
      GQLOptionsQueryGetBlessedHashtagList? options,
      required graphql_flutter.QueryBuilder<QueryGetBlessedHashtagList>
          builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetBlessedHashtagList(),
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
      this.hashtagVariants});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtagToJson(this);
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
      this.requestsAggregate});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregateToJson(
          this);
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
}

@JsonSerializable()
class QueryGetSkillsByUserId extends JsonSerializable {
  QueryGetSkillsByUserId({this.getUser});

  @override
  factory QueryGetSkillsByUserId.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserIdFromJson(json);

  final QueryGetSkillsByUserId$getUser? getUser;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsByUserIdToJson(this);
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

class GQLOptionsQueryGetSkillsByUserId
    extends graphql.QueryOptions<QueryGetSkillsByUserId> {
  GQLOptionsQueryGetSkillsByUserId(
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
            parserFn: (data) => QueryGetSkillsByUserId.fromJson(data));
}

class GQLWatchOptionsQueryGetSkillsByUserId
    extends graphql.WatchQueryOptions<QueryGetSkillsByUserId> {
  GQLWatchOptionsQueryGetSkillsByUserId(
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
            parserFn: (data) => QueryGetSkillsByUserId.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetSkillsByUserId
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetSkillsByUserId(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetSkillsByUserId? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_SKILLS_BY_USER_ID);
}

extension GQLExtensionQueryGetSkillsByUserId on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetSkillsByUserId>> queryGetSkillsByUserId(
          [GQLOptionsQueryGetSkillsByUserId? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetSkillsByUserId());
  graphql.ObservableQuery<QueryGetSkillsByUserId> watchQueryGetSkillsByUserId(
          [GQLWatchOptionsQueryGetSkillsByUserId? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetSkillsByUserId());
}

class GQLFQueryGetSkillsByUserId
    extends graphql_flutter.Query<QueryGetSkillsByUserId> {
  GQLFQueryGetSkillsByUserId(
      {widgets.Key? key,
      GQLOptionsQueryGetSkillsByUserId? options,
      required graphql_flutter.QueryBuilder<QueryGetSkillsByUserId> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetSkillsByUserId(),
            builder: builder);
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser extends JsonSerializable {
  QueryGetSkillsByUserId$getUser({this.skillsAggregate, this.skills});

  @override
  factory QueryGetSkillsByUserId$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUserFromJson(json);

  final QueryGetSkillsByUserId$getUser$skillsAggregate? skillsAggregate;

  final List<QueryGetSkillsByUserId$getUser$skills?>? skills;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsByUserId$getUserToJson(this);
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skillsAggregate extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skillsAggregate({this.count});

  @override
  factory QueryGetSkillsByUserId$getUser$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUser$skillsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skillsAggregateToJson(this);
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skills extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skills(
      {required this.id,
      this.title,
      this.message,
      required this.hashtagVariants,
      this.isAvailable,
      this.createdTimestamp});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skillsToJson(this);
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skills$hashtagVariants
    extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skills$hashtagVariants(
      {required this.variant, required this.hashtag});

  @override
  factory QueryGetSkillsByUserId$getUser$skills$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariantsFromJson(json);

  final String variant;

  final QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag hashtag;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag
    extends JsonSerializable {
  QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag(
      {required this.id, required this.name});

  @override
  factory QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagFromJson(
          json);

  final String id;

  final String name;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagToJson(
          this);
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
}

@JsonSerializable()
class QueryGetSkillsPageData extends JsonSerializable {
  QueryGetSkillsPageData({this.queryHashtag, this.getUser});

  @override
  factory QueryGetSkillsPageData.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsPageDataFromJson(json);

  final List<QueryGetSkillsPageData$queryHashtag?>? queryHashtag;

  final QueryGetSkillsPageData$getUser? getUser;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsPageDataToJson(this);
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

class GQLOptionsQueryGetSkillsPageData
    extends graphql.QueryOptions<QueryGetSkillsPageData> {
  GQLOptionsQueryGetSkillsPageData(
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
            parserFn: (data) => QueryGetSkillsPageData.fromJson(data));
}

class GQLWatchOptionsQueryGetSkillsPageData
    extends graphql.WatchQueryOptions<QueryGetSkillsPageData> {
  GQLWatchOptionsQueryGetSkillsPageData(
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
            parserFn: (data) => QueryGetSkillsPageData.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetSkillsPageData
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetSkillsPageData(
      {required graphql.UpdateQuery updateQuery,
      VariablesQueryGetSkillsPageData? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: QUERY_GET_SKILLS_PAGE_DATA);
}

extension GQLExtensionQueryGetSkillsPageData on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetSkillsPageData>> queryGetSkillsPageData(
          [GQLOptionsQueryGetSkillsPageData? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetSkillsPageData());
  graphql.ObservableQuery<QueryGetSkillsPageData> watchQueryGetSkillsPageData(
          [GQLWatchOptionsQueryGetSkillsPageData? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetSkillsPageData());
}

class GQLFQueryGetSkillsPageData
    extends graphql_flutter.Query<QueryGetSkillsPageData> {
  GQLFQueryGetSkillsPageData(
      {widgets.Key? key,
      GQLOptionsQueryGetSkillsPageData? options,
      required graphql_flutter.QueryBuilder<QueryGetSkillsPageData> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetSkillsPageData(),
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
      this.hashtagVariants});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtagToJson(this);
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
      this.requestsAggregate});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser extends JsonSerializable {
  QueryGetSkillsPageData$getUser({this.skillsAggregate, this.skills});

  @override
  factory QueryGetSkillsPageData$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUserFromJson(json);

  final QueryGetSkillsPageData$getUser$skillsAggregate? skillsAggregate;

  final List<QueryGetSkillsPageData$getUser$skills?>? skills;

  @override
  Map<String, dynamic> toJson() => _$QueryGetSkillsPageData$getUserToJson(this);
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skillsAggregate extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skillsAggregate({this.count});

  @override
  factory QueryGetSkillsPageData$getUser$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUser$skillsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skillsAggregateToJson(this);
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skills extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skills(
      {required this.id,
      this.title,
      this.message,
      this.isAvailable,
      this.createdTimestamp,
      required this.hashtagVariants});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skillsToJson(this);
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skills$hashtagVariants
    extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skills$hashtagVariants(
      {required this.hashtag});

  @override
  factory QueryGetSkillsPageData$getUser$skills$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariantsFromJson(json);

  final QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag hashtag;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariantsToJson(this);
}

@JsonSerializable()
class QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag
    extends JsonSerializable {
  QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag(
      {required this.id, required this.name, this.iconName});

  @override
  factory QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagFromJson(
          json);

  final String id;

  final String name;

  final String? iconName;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagToJson(
          this);
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
}

@JsonSerializable()
class QuerySearchTopRequestHashtag extends JsonSerializable {
  QuerySearchTopRequestHashtag({this.queryHashtag});

  @override
  factory QuerySearchTopRequestHashtag.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchTopRequestHashtagFromJson(json);

  final List<QuerySearchTopRequestHashtag$queryHashtag?>? queryHashtag;

  @override
  Map<String, dynamic> toJson() => _$QuerySearchTopRequestHashtagToJson(this);
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

class GQLOptionsQuerySearchTopRequestHashtag
    extends graphql.QueryOptions<QuerySearchTopRequestHashtag> {
  GQLOptionsQuerySearchTopRequestHashtag(
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
            parserFn: (data) => QuerySearchTopRequestHashtag.fromJson(data));
}

class GQLWatchOptionsQuerySearchTopRequestHashtag
    extends graphql.WatchQueryOptions<QuerySearchTopRequestHashtag> {
  GQLWatchOptionsQuerySearchTopRequestHashtag(
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
            parserFn: (data) => QuerySearchTopRequestHashtag.fromJson(data));
}

class GQLFetchMoreOptionsQuerySearchTopRequestHashtag
    extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQuerySearchTopRequestHashtag(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQuerySearchTopRequestHashtag variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_SEARCH_TOP_REQUEST_HASHTAG);
}

extension GQLExtensionQuerySearchTopRequestHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<QuerySearchTopRequestHashtag>>
      querySearchTopRequestHashtag(
              GQLOptionsQuerySearchTopRequestHashtag options) async =>
          await this.query(options);
  graphql.ObservableQuery<QuerySearchTopRequestHashtag>
      watchQuerySearchTopRequestHashtag(
              GQLWatchOptionsQuerySearchTopRequestHashtag options) =>
          this.watchQuery(options);
}

class GQLFQuerySearchTopRequestHashtag
    extends graphql_flutter.Query<QuerySearchTopRequestHashtag> {
  GQLFQuerySearchTopRequestHashtag(
      {widgets.Key? key,
      required GQLOptionsQuerySearchTopRequestHashtag options,
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
      this.requestCountLast24h});

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

  @override
  Map<String, dynamic> toJson() =>
      _$QuerySearchTopRequestHashtag$queryHashtagToJson(this);
}
