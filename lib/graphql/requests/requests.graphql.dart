import '../schema/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'requests.graphql.g.dart';

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
      this.createdTimestamp});

  @override
  factory QueryGetAllUsers$queryUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllUsers$queryUserFromJson(json);

  final String id;

  final String email;

  final String name;

  final int? age;

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
      this.createdTimestamp});

  @override
  factory QueryGetUserWithEmail$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithEmail$getUserFromJson(json);

  final String id;

  final String name;

  final int? age;

  final String email;

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
      this.createdTimestamp});

  @override
  factory QueryGetUserWithId$getUser.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserWithId$getUserFromJson(json);

  final String id;

  final String name;

  final int? age;

  final String email;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() => _$QueryGetUserWithId$getUserToJson(this);
}

@JsonSerializable()
class VariablesMutationCreateUser extends JsonSerializable {
  VariablesMutationCreateUser(
      {required this.email, required this.name, required this.age});

  @override
  factory VariablesMutationCreateUser.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateUserFromJson(json);

  final String email;

  final String name;

  final int age;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationCreateUserToJson(this);
}

@JsonSerializable()
class MutationCreateUser extends JsonSerializable {
  MutationCreateUser({this.addUser});

  @override
  factory MutationCreateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUserFromJson(json);

  final MutationCreateUser$addUser? addUser;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateUserToJson(this);
}

const MUTATION_CREATE_USER = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'email')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'age')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'email'),
                        value: VariableNode(name: NameNode(value: 'email'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: VariableNode(name: NameNode(value: 'name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'age'),
                        value: VariableNode(name: NameNode(value: 'age')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'user'),
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
                        name: NameNode(value: 'email'),
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
typedef GQLOnMutationCompletedMutationCreateUser = FutureOr<void> Function(
    dynamic, MutationCreateUser?);

class GQLOptionsMutationCreateUser
    extends graphql.MutationOptions<MutationCreateUser> {
  GQLOptionsMutationCreateUser(
      {String? operationName,
      required VariablesMutationCreateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationCreateUser? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : MutationCreateUser.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_USER,
            parserFn: (data) => MutationCreateUser.fromJson(data));
}

class GQLWatchOptionsMutationCreateUser
    extends graphql.WatchQueryOptions<MutationCreateUser> {
  GQLWatchOptionsMutationCreateUser(
      {String? operationName,
      required VariablesMutationCreateUser variables,
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
            document: MUTATION_CREATE_USER,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationCreateUser.fromJson(data));
}

extension GQLExtensionMutationCreateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateUser>> mutateCreateUser(
          GQLOptionsMutationCreateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateUser> watchMutationCreateUser(
          GQLWatchOptionsMutationCreateUser options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationCreateUser
    extends graphql.MutationOptions<MutationCreateUser> {
  GQLFOptionsMutationCreateUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationCreateUser? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : MutationCreateUser.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_USER,
            parserFn: (data) => MutationCreateUser.fromJson(data));
}

typedef GQLFRunMutationMutationCreateUser
    = graphql.MultiSourceResult<MutationCreateUser>
        Function(VariablesMutationCreateUser, {Object? optimisticResult});
typedef GQLFBuilderMutationCreateUser = widgets.Widget Function(
    GQLFRunMutationMutationCreateUser,
    graphql.QueryResult<MutationCreateUser>?);

class GQLFMutationCreateUser
    extends graphql_flutter.Mutation<MutationCreateUser> {
  GQLFMutationCreateUser(
      {widgets.Key? key,
      GQLFOptionsMutationCreateUser? options,
      required GQLFBuilderMutationCreateUser builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationCreateUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationCreateUser$addUser extends JsonSerializable {
  MutationCreateUser$addUser({this.user});

  @override
  factory MutationCreateUser$addUser.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUser$addUserFromJson(json);

  final List<MutationCreateUser$addUser$user?>? user;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateUser$addUserToJson(this);
}

@JsonSerializable()
class MutationCreateUser$addUser$user extends JsonSerializable {
  MutationCreateUser$addUser$user(
      {required this.id, required this.name, required this.email});

  @override
  factory MutationCreateUser$addUser$user.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUser$addUser$userFromJson(json);

  final String id;

  final String name;

  final String email;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateUser$addUser$userToJson(this);
}

@JsonSerializable()
class VariablesMutationCreateRequest extends JsonSerializable {
  VariablesMutationCreateRequest(
      {required this.owner, required this.title, required this.message});

  @override
  factory VariablesMutationCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateRequestFromJson(json);

  final InputUserRef owner;

  final String title;

  final String message;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationCreateRequestToJson(this);
}

@JsonSerializable()
class MutationCreateRequest extends JsonSerializable {
  MutationCreateRequest({this.addRequest});

  @override
  factory MutationCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateRequestFromJson(json);

  final MutationCreateRequest$addRequest? addRequest;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateRequestToJson(this);
}

const MUTATION_CREATE_REQUEST = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateRequest'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'owner')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserRef'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'title')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'message')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addRequest'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'owner'),
                        value: VariableNode(name: NameNode(value: 'owner'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'title'),
                        value: VariableNode(name: NameNode(value: 'title'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'message'),
                        value: VariableNode(name: NameNode(value: 'message')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'request'),
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
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
typedef GQLOnMutationCompletedMutationCreateRequest = FutureOr<void> Function(
    dynamic, MutationCreateRequest?);

class GQLOptionsMutationCreateRequest
    extends graphql.MutationOptions<MutationCreateRequest> {
  GQLOptionsMutationCreateRequest(
      {String? operationName,
      required VariablesMutationCreateRequest variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationCreateRequest? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : MutationCreateRequest.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_REQUEST,
            parserFn: (data) => MutationCreateRequest.fromJson(data));
}

class GQLWatchOptionsMutationCreateRequest
    extends graphql.WatchQueryOptions<MutationCreateRequest> {
  GQLWatchOptionsMutationCreateRequest(
      {String? operationName,
      required VariablesMutationCreateRequest variables,
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
            document: MUTATION_CREATE_REQUEST,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationCreateRequest.fromJson(data));
}

extension GQLExtensionMutationCreateRequest on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateRequest>> mutateCreateRequest(
          GQLOptionsMutationCreateRequest options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateRequest> watchMutationCreateRequest(
          GQLWatchOptionsMutationCreateRequest options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationCreateRequest
    extends graphql.MutationOptions<MutationCreateRequest> {
  GQLFOptionsMutationCreateRequest(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationCreateRequest? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : MutationCreateRequest.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_REQUEST,
            parserFn: (data) => MutationCreateRequest.fromJson(data));
}

typedef GQLFRunMutationMutationCreateRequest
    = graphql.MultiSourceResult<MutationCreateRequest>
        Function(VariablesMutationCreateRequest, {Object? optimisticResult});
typedef GQLFBuilderMutationCreateRequest = widgets.Widget Function(
    GQLFRunMutationMutationCreateRequest,
    graphql.QueryResult<MutationCreateRequest>?);

class GQLFMutationCreateRequest
    extends graphql_flutter.Mutation<MutationCreateRequest> {
  GQLFMutationCreateRequest(
      {widgets.Key? key,
      GQLFOptionsMutationCreateRequest? options,
      required GQLFBuilderMutationCreateRequest builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationCreateRequest(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationCreateRequest$addRequest extends JsonSerializable {
  MutationCreateRequest$addRequest({this.request});

  @override
  factory MutationCreateRequest$addRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateRequest$addRequestFromJson(json);

  final List<MutationCreateRequest$addRequest$request?>? request;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateRequest$addRequestToJson(this);
}

@JsonSerializable()
class MutationCreateRequest$addRequest$request extends JsonSerializable {
  MutationCreateRequest$addRequest$request(
      {required this.id,
      required this.title,
      required this.message,
      this.createdTimestamp});

  @override
  factory MutationCreateRequest$addRequest$request.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateRequest$addRequest$requestFromJson(json);

  final String id;

  final String title;

  final String message;

  final String? createdTimestamp;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateRequest$addRequest$requestToJson(this);
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
