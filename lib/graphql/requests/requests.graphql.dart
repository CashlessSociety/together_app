import '../schema/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'requests.graphql.g.dart';

abstract class FragmentHashtagFragmentData {
  String get id;
  String get hashtag;
  String? get iconName;
  bool? get blessed;
  FragmentHashtagFragmentData$skillsAggregate? get skillsAggregate;
  FragmentHashtagFragmentData$requestsAggregate? get requestsAggregate;
}

const FRAGMENT_HASHTAG_FRAGMENT_DATA = const FragmentDefinitionNode(
    name: NameNode(value: 'HashtagFragmentData'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Hashtag'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'hashtag'),
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
          name: NameNode(value: 'blessed'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
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
          name: NameNode(value: 'requestsAggregate'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

abstract class FragmentHashtagFragmentData$skillsAggregate {
  int? get count;
}

abstract class FragmentHashtagFragmentData$requestsAggregate {
  int? get count;
}

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
class VariablesMutationCreateUser extends JsonSerializable {
  VariablesMutationCreateUser(
      {required this.email,
      required this.name,
      required this.age,
      required this.createdTimestamp});

  @override
  factory VariablesMutationCreateUser.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateUserFromJson(json);

  final String email;

  final String name;

  final int age;

  final String createdTimestamp;

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
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'createdTimestamp')),
            type: NamedTypeNode(
                name: NameNode(value: 'DateTime'), isNonNull: true),
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
                        value: VariableNode(name: NameNode(value: 'age'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'isAdmin'),
                        value: BooleanValueNode(value: false)),
                    ObjectFieldNode(
                        name: NameNode(value: 'createdTimestamp'),
                        value: VariableNode(
                            name: NameNode(value: 'createdTimestamp')))
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
      {required this.id,
      required this.name,
      required this.email,
      this.isAdmin,
      this.createdTimestamp});

  @override
  factory MutationCreateUser$addUser$user.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUser$addUser$userFromJson(json);

  final String id;

  final String name;

  final String email;

  final bool? isAdmin;

  final String? createdTimestamp;

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
                  name: NameNode(value: 'hashtag'),
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
      required this.hashtag,
      this.iconName,
      this.blessed,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory QueryGetHashtagByName$getHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtagFromJson(json);

  final String id;

  final String hashtag;

  final String? iconName;

  final bool? blessed;

  final QueryGetHashtagByName$getHashtag$skillsAggregate? skillsAggregate;

  final QueryGetHashtagByName$getHashtag$requestsAggregate? requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtagToJson(this);
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag$skillsAggregate extends JsonSerializable
    implements FragmentHashtagFragmentData$skillsAggregate {
  QueryGetHashtagByName$getHashtag$skillsAggregate({this.count});

  @override
  factory QueryGetHashtagByName$getHashtag$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtag$skillsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$skillsAggregateToJson(this);
}

@JsonSerializable()
class QueryGetHashtagByName$getHashtag$requestsAggregate
    extends JsonSerializable
    implements FragmentHashtagFragmentData$requestsAggregate {
  QueryGetHashtagByName$getHashtag$requestsAggregate({this.count});

  @override
  factory QueryGetHashtagByName$getHashtag$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagByName$getHashtag$requestsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagByName$getHashtag$requestsAggregateToJson(this);
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
      required this.hashtag,
      this.iconName,
      this.blessed,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory QueryGetHashtagById$getHashtag.fromJson(Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtagFromJson(json);

  final String id;

  final String hashtag;

  final String? iconName;

  final bool? blessed;

  final QueryGetHashtagById$getHashtag$skillsAggregate? skillsAggregate;

  final QueryGetHashtagById$getHashtag$requestsAggregate? requestsAggregate;

  @override
  Map<String, dynamic> toJson() => _$QueryGetHashtagById$getHashtagToJson(this);
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag$skillsAggregate extends JsonSerializable
    implements FragmentHashtagFragmentData$skillsAggregate {
  QueryGetHashtagById$getHashtag$skillsAggregate({this.count});

  @override
  factory QueryGetHashtagById$getHashtag$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtag$skillsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$skillsAggregateToJson(this);
}

@JsonSerializable()
class QueryGetHashtagById$getHashtag$requestsAggregate extends JsonSerializable
    implements FragmentHashtagFragmentData$requestsAggregate {
  QueryGetHashtagById$getHashtag$requestsAggregate({this.count});

  @override
  factory QueryGetHashtagById$getHashtag$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetHashtagById$getHashtag$requestsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetHashtagById$getHashtag$requestsAggregateToJson(this);
}

@JsonSerializable()
class QueryGetAllHashtags extends JsonSerializable {
  QueryGetAllHashtags({this.queryHashtag});

  @override
  factory QueryGetAllHashtags.fromJson(Map<String, dynamic> json) =>
      _$QueryGetAllHashtagsFromJson(json);

  final List<QueryGetAllHashtags$queryHashtag?>? queryHashtag;

  @override
  Map<String, dynamic> toJson() => _$QueryGetAllHashtagsToJson(this);
}

const QUERY_GET_ALL_HASHTAGS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllHashtags'),
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
                        value: EnumValueNode(name: NameNode(value: 'hashtag')))
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
]);

class GQLOptionsQueryGetAllHashtags
    extends graphql.QueryOptions<QueryGetAllHashtags> {
  GQLOptionsQueryGetAllHashtags(
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
            document: QUERY_GET_ALL_HASHTAGS,
            parserFn: (data) => QueryGetAllHashtags.fromJson(data));
}

class GQLWatchOptionsQueryGetAllHashtags
    extends graphql.WatchQueryOptions<QueryGetAllHashtags> {
  GQLWatchOptionsQueryGetAllHashtags(
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
            document: QUERY_GET_ALL_HASHTAGS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => QueryGetAllHashtags.fromJson(data));
}

class GQLFetchMoreOptionsQueryGetAllHashtags extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetAllHashtags(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_ALL_HASHTAGS);
}

extension GQLExtensionQueryGetAllHashtags on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetAllHashtags>> queryGetAllHashtags(
          [GQLOptionsQueryGetAllHashtags? options]) async =>
      await this.query(options ?? GQLOptionsQueryGetAllHashtags());
  graphql.ObservableQuery<QueryGetAllHashtags> watchQueryGetAllHashtags(
          [GQLWatchOptionsQueryGetAllHashtags? options]) =>
      this.watchQuery(options ?? GQLWatchOptionsQueryGetAllHashtags());
}

class GQLFQueryGetAllHashtags
    extends graphql_flutter.Query<QueryGetAllHashtags> {
  GQLFQueryGetAllHashtags(
      {widgets.Key? key,
      GQLOptionsQueryGetAllHashtags? options,
      required graphql_flutter.QueryBuilder<QueryGetAllHashtags> builder})
      : super(
            key: key,
            options: options ?? GQLOptionsQueryGetAllHashtags(),
            builder: builder);
}

@JsonSerializable()
class QueryGetAllHashtags$queryHashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  QueryGetAllHashtags$queryHashtag(
      {required this.id,
      required this.hashtag,
      this.iconName,
      this.blessed,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory QueryGetAllHashtags$queryHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetAllHashtags$queryHashtagFromJson(json);

  final String id;

  final String hashtag;

  final String? iconName;

  final bool? blessed;

  final QueryGetAllHashtags$queryHashtag$skillsAggregate? skillsAggregate;

  final QueryGetAllHashtags$queryHashtag$requestsAggregate? requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetAllHashtags$queryHashtagToJson(this);
}

@JsonSerializable()
class QueryGetAllHashtags$queryHashtag$skillsAggregate extends JsonSerializable
    implements FragmentHashtagFragmentData$skillsAggregate {
  QueryGetAllHashtags$queryHashtag$skillsAggregate({this.count});

  @override
  factory QueryGetAllHashtags$queryHashtag$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetAllHashtags$queryHashtag$skillsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetAllHashtags$queryHashtag$skillsAggregateToJson(this);
}

@JsonSerializable()
class QueryGetAllHashtags$queryHashtag$requestsAggregate
    extends JsonSerializable
    implements FragmentHashtagFragmentData$requestsAggregate {
  QueryGetAllHashtags$queryHashtag$requestsAggregate({this.count});

  @override
  factory QueryGetAllHashtags$queryHashtag$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetAllHashtags$queryHashtag$requestsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetAllHashtags$queryHashtag$requestsAggregateToJson(this);
}

@JsonSerializable()
class VariablesMutationAddHashtag extends JsonSerializable {
  VariablesMutationAddHashtag(
      {required this.name, this.iconName, this.blessed});

  @override
  factory VariablesMutationAddHashtag.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationAddHashtagFromJson(json);

  final String name;

  final String? iconName;

  final bool? blessed;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationAddHashtagToJson(this);
}

@JsonSerializable()
class MutationAddHashtag extends JsonSerializable {
  MutationAddHashtag({this.addHashtag});

  @override
  factory MutationAddHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationAddHashtagFromJson(json);

  final MutationAddHashtag$addHashtag? addHashtag;

  @override
  Map<String, dynamic> toJson() => _$MutationAddHashtagToJson(this);
}

const MUTATION_ADD_HASHTAG = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddHashtag'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'iconName')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'blessed')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: false),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'hashtag'),
                        value: VariableNode(name: NameNode(value: 'name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'iconName'),
                        value: VariableNode(name: NameNode(value: 'iconName'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'blessed'),
                        value: VariableNode(name: NameNode(value: 'blessed')))
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'HashtagFragmentData'),
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
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_HASHTAG_FRAGMENT_DATA,
]);
typedef GQLOnMutationCompletedMutationAddHashtag = FutureOr<void> Function(
    dynamic, MutationAddHashtag?);

class GQLOptionsMutationAddHashtag
    extends graphql.MutationOptions<MutationAddHashtag> {
  GQLOptionsMutationAddHashtag(
      {String? operationName,
      required VariablesMutationAddHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationAddHashtag? onCompleted,
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
                    data == null ? null : MutationAddHashtag.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_ADD_HASHTAG,
            parserFn: (data) => MutationAddHashtag.fromJson(data));
}

class GQLWatchOptionsMutationAddHashtag
    extends graphql.WatchQueryOptions<MutationAddHashtag> {
  GQLWatchOptionsMutationAddHashtag(
      {String? operationName,
      required VariablesMutationAddHashtag variables,
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
            document: MUTATION_ADD_HASHTAG,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationAddHashtag.fromJson(data));
}

extension GQLExtensionMutationAddHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationAddHashtag>> mutateAddHashtag(
          GQLOptionsMutationAddHashtag options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationAddHashtag> watchMutationAddHashtag(
          GQLWatchOptionsMutationAddHashtag options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationAddHashtag
    extends graphql.MutationOptions<MutationAddHashtag> {
  GQLFOptionsMutationAddHashtag(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationAddHashtag? onCompleted,
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
                    data == null ? null : MutationAddHashtag.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_ADD_HASHTAG,
            parserFn: (data) => MutationAddHashtag.fromJson(data));
}

typedef GQLFRunMutationMutationAddHashtag
    = graphql.MultiSourceResult<MutationAddHashtag>
        Function(VariablesMutationAddHashtag, {Object? optimisticResult});
typedef GQLFBuilderMutationAddHashtag = widgets.Widget Function(
    GQLFRunMutationMutationAddHashtag,
    graphql.QueryResult<MutationAddHashtag>?);

class GQLFMutationAddHashtag
    extends graphql_flutter.Mutation<MutationAddHashtag> {
  GQLFMutationAddHashtag(
      {widgets.Key? key,
      GQLFOptionsMutationAddHashtag? options,
      required GQLFBuilderMutationAddHashtag builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationAddHashtag(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationAddHashtag$addHashtag extends JsonSerializable {
  MutationAddHashtag$addHashtag({this.hashtag});

  @override
  factory MutationAddHashtag$addHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtagFromJson(json);

  final List<MutationAddHashtag$addHashtag$hashtag?>? hashtag;

  @override
  Map<String, dynamic> toJson() => _$MutationAddHashtag$addHashtagToJson(this);
}

@JsonSerializable()
class MutationAddHashtag$addHashtag$hashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  MutationAddHashtag$addHashtag$hashtag(
      {required this.id,
      required this.hashtag,
      this.iconName,
      this.blessed,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory MutationAddHashtag$addHashtag$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtagFromJson(json);

  final String id;

  final String hashtag;

  final String? iconName;

  final bool? blessed;

  final MutationAddHashtag$addHashtag$hashtag$skillsAggregate? skillsAggregate;

  final MutationAddHashtag$addHashtag$hashtag$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtagToJson(this);
}

@JsonSerializable()
class MutationAddHashtag$addHashtag$hashtag$skillsAggregate
    extends JsonSerializable
    implements FragmentHashtagFragmentData$skillsAggregate {
  MutationAddHashtag$addHashtag$hashtag$skillsAggregate({this.count});

  @override
  factory MutationAddHashtag$addHashtag$hashtag$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtag$skillsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$skillsAggregateToJson(this);
}

@JsonSerializable()
class MutationAddHashtag$addHashtag$hashtag$requestsAggregate
    extends JsonSerializable
    implements FragmentHashtagFragmentData$requestsAggregate {
  MutationAddHashtag$addHashtag$hashtag$requestsAggregate({this.count});

  @override
  factory MutationAddHashtag$addHashtag$hashtag$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtag$requestsAggregateFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$requestsAggregateToJson(this);
}

@JsonSerializable()
class VariablesMutationUpdateHashtag extends JsonSerializable {
  VariablesMutationUpdateHashtag({required this.hashtagInput});

  @override
  factory VariablesMutationUpdateHashtag.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationUpdateHashtagFromJson(json);

  final InputUpdateHashtagInput hashtagInput;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationUpdateHashtagToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtag extends JsonSerializable {
  MutationUpdateHashtag({this.updateHashtag});

  @override
  factory MutationUpdateHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateHashtagFromJson(json);

  final MutationUpdateHashtag$updateHashtag? updateHashtag;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateHashtagToJson(this);
}

const MUTATION_UPDATE_HASHTAG = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateHashtag'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'UpdateHashtagInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'hashtagInput')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'hashtag'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'HashtagFragmentData'),
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
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FRAGMENT_HASHTAG_FRAGMENT_DATA,
]);
typedef GQLOnMutationCompletedMutationUpdateHashtag = FutureOr<void> Function(
    dynamic, MutationUpdateHashtag?);

class GQLOptionsMutationUpdateHashtag
    extends graphql.MutationOptions<MutationUpdateHashtag> {
  GQLOptionsMutationUpdateHashtag(
      {String? operationName,
      required VariablesMutationUpdateHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateHashtag? onCompleted,
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
                    data == null ? null : MutationUpdateHashtag.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_HASHTAG,
            parserFn: (data) => MutationUpdateHashtag.fromJson(data));
}

class GQLWatchOptionsMutationUpdateHashtag
    extends graphql.WatchQueryOptions<MutationUpdateHashtag> {
  GQLWatchOptionsMutationUpdateHashtag(
      {String? operationName,
      required VariablesMutationUpdateHashtag variables,
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
            document: MUTATION_UPDATE_HASHTAG,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationUpdateHashtag.fromJson(data));
}

extension GQLExtensionMutationUpdateHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateHashtag>> mutateUpdateHashtag(
          GQLOptionsMutationUpdateHashtag options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateHashtag> watchMutationUpdateHashtag(
          GQLWatchOptionsMutationUpdateHashtag options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationUpdateHashtag
    extends graphql.MutationOptions<MutationUpdateHashtag> {
  GQLFOptionsMutationUpdateHashtag(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateHashtag? onCompleted,
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
                    data == null ? null : MutationUpdateHashtag.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_HASHTAG,
            parserFn: (data) => MutationUpdateHashtag.fromJson(data));
}

typedef GQLFRunMutationMutationUpdateHashtag
    = graphql.MultiSourceResult<MutationUpdateHashtag>
        Function(VariablesMutationUpdateHashtag, {Object? optimisticResult});
typedef GQLFBuilderMutationUpdateHashtag = widgets.Widget Function(
    GQLFRunMutationMutationUpdateHashtag,
    graphql.QueryResult<MutationUpdateHashtag>?);

class GQLFMutationUpdateHashtag
    extends graphql_flutter.Mutation<MutationUpdateHashtag> {
  GQLFMutationUpdateHashtag(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateHashtag? options,
      required GQLFBuilderMutationUpdateHashtag builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateHashtag(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag extends JsonSerializable {
  MutationUpdateHashtag$updateHashtag({this.hashtag});

  @override
  factory MutationUpdateHashtag$updateHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtagFromJson(json);

  final List<MutationUpdateHashtag$updateHashtag$hashtag?>? hashtag;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtagToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag$hashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  MutationUpdateHashtag$updateHashtag$hashtag(
      {required this.id,
      required this.hashtag,
      this.iconName,
      this.blessed,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtagFromJson(json);

  final String id;

  final String hashtag;

  final String? iconName;

  final bool? blessed;

  final MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate?
      skillsAggregate;

  final MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtagToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate
    extends JsonSerializable
    implements FragmentHashtagFragmentData$skillsAggregate {
  MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate({this.count});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregateToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate
    extends JsonSerializable
    implements FragmentHashtagFragmentData$requestsAggregate {
  MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate({this.count});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregateToJson(
          this);
}
