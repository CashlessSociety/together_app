import '../fragment/fragment.graphql.dart';
import '../schema/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'mutation.graphql.g.dart';

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
class VariablesMutationUpdateUser extends JsonSerializable {
  VariablesMutationUpdateUser(
      {required this.id, required this.name, required this.bio});

  @override
  factory VariablesMutationUpdateUser.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationUpdateUserFromJson(json);

  final String id;

  final String name;

  final String bio;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationUpdateUserToJson(this);
}

@JsonSerializable()
class MutationUpdateUser extends JsonSerializable {
  MutationUpdateUser({this.updateUser});

  @override
  factory MutationUpdateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateUserFromJson(json);

  final MutationUpdateUser$updateUser? updateUser;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateUserToJson(this);
}

const MUTATION_UPDATE_USER = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'bio')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'filter'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: ListValueNode(values: [
                                VariableNode(name: NameNode(value: 'id'))
                              ]))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'set'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  VariableNode(name: NameNode(value: 'name'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'bio'),
                              value: VariableNode(name: NameNode(value: 'bio')))
                        ]))
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
                        name: NameNode(value: 'bio'),
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
typedef GQLOnMutationCompletedMutationUpdateUser = FutureOr<void> Function(
    dynamic, MutationUpdateUser?);

class GQLOptionsMutationUpdateUser
    extends graphql.MutationOptions<MutationUpdateUser> {
  GQLOptionsMutationUpdateUser(
      {String? operationName,
      required VariablesMutationUpdateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateUser? onCompleted,
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
                    data == null ? null : MutationUpdateUser.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_USER,
            parserFn: (data) => MutationUpdateUser.fromJson(data));
}

class GQLWatchOptionsMutationUpdateUser
    extends graphql.WatchQueryOptions<MutationUpdateUser> {
  GQLWatchOptionsMutationUpdateUser(
      {String? operationName,
      required VariablesMutationUpdateUser variables,
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
            document: MUTATION_UPDATE_USER,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationUpdateUser.fromJson(data));
}

extension GQLExtensionMutationUpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateUser>> mutateUpdateUser(
          GQLOptionsMutationUpdateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateUser> watchMutationUpdateUser(
          GQLWatchOptionsMutationUpdateUser options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationUpdateUser
    extends graphql.MutationOptions<MutationUpdateUser> {
  GQLFOptionsMutationUpdateUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateUser? onCompleted,
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
                    data == null ? null : MutationUpdateUser.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_USER,
            parserFn: (data) => MutationUpdateUser.fromJson(data));
}

typedef GQLFRunMutationMutationUpdateUser
    = graphql.MultiSourceResult<MutationUpdateUser>
        Function(VariablesMutationUpdateUser, {Object? optimisticResult});
typedef GQLFBuilderMutationUpdateUser = widgets.Widget Function(
    GQLFRunMutationMutationUpdateUser,
    graphql.QueryResult<MutationUpdateUser>?);

class GQLFMutationUpdateUser
    extends graphql_flutter.Mutation<MutationUpdateUser> {
  GQLFMutationUpdateUser(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateUser? options,
      required GQLFBuilderMutationUpdateUser builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateUser$updateUser extends JsonSerializable {
  MutationUpdateUser$updateUser({this.user});

  @override
  factory MutationUpdateUser$updateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateUser$updateUserFromJson(json);

  final List<MutationUpdateUser$updateUser$user?>? user;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateUser$updateUserToJson(this);
}

@JsonSerializable()
class MutationUpdateUser$updateUser$user extends JsonSerializable {
  MutationUpdateUser$updateUser$user(
      {required this.id, required this.name, this.bio});

  @override
  factory MutationUpdateUser$updateUser$user.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateUser$updateUser$userFromJson(json);

  final String id;

  final String name;

  final String? bio;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateUser$updateUser$userToJson(this);
}

@JsonSerializable()
class VariablesMutationAddHashtag extends JsonSerializable {
  VariablesMutationAddHashtag(
      {required this.name,
      this.iconName,
      this.blessed,
      this.blessedInt,
      this.defaultHashtagVariant});

  @override
  factory VariablesMutationAddHashtag.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationAddHashtagFromJson(json);

  final String name;

  final String? iconName;

  final bool? blessed;

  final int? blessedInt;

  final InputHashtagVariantRef? defaultHashtagVariant;

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
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'blessedInt')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '0')),
            directives: []),
        VariableDefinitionNode(
            variable:
                VariableNode(name: NameNode(value: 'defaultHashtagVariant')),
            type: NamedTypeNode(
                name: NameNode(value: 'HashtagVariantRef'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
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
                        name: NameNode(value: 'name'),
                        value: VariableNode(name: NameNode(value: 'name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'iconName'),
                        value: VariableNode(name: NameNode(value: 'iconName'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'blessed'),
                        value: VariableNode(name: NameNode(value: 'blessed'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'blessedInt'),
                        value:
                            VariableNode(name: NameNode(value: 'blessedInt'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'skillCountAllTime'),
                        value: IntValueNode(value: '0')),
                    ObjectFieldNode(
                        name: NameNode(value: 'skillCountLast24h'),
                        value: IntValueNode(value: '0')),
                    ObjectFieldNode(
                        name: NameNode(value: 'skillCountLast1w'),
                        value: IntValueNode(value: '0')),
                    ObjectFieldNode(
                        name: NameNode(value: 'requestCountAllTime'),
                        value: IntValueNode(value: '0')),
                    ObjectFieldNode(
                        name: NameNode(value: 'requestCountLast24h'),
                        value: IntValueNode(value: '0')),
                    ObjectFieldNode(
                        name: NameNode(value: 'requestCountLast1w'),
                        value: IntValueNode(value: '0')),
                    ObjectFieldNode(
                        name: NameNode(value: 'hashtagVariants'),
                        value: ListValueNode(values: [
                          VariableNode(
                              name: NameNode(value: 'defaultHashtagVariant'))
                        ]))
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
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
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
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants});

  @override
  factory MutationAddHashtag$addHashtag$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<MutationAddHashtag$addHashtag$hashtag$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtagToJson(this);
}

@JsonSerializable()
class MutationAddHashtag$addHashtag$hashtag$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  MutationAddHashtag$addHashtag$hashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory MutationAddHashtag$addHashtag$hashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariantsFromJson(json);

  final String id;

  final String variant;

  final MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregateToJson(
          this);
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
  FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA,
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
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtagFromJson(json);

  final String id;

  final String name;

  final String? iconName;

  final bool? blessed;

  final List<MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtagToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariantsFromJson(
          json);

  final String id;

  final String variant;

  final MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class VariablesMutationDeleteHashtag extends JsonSerializable {
  VariablesMutationDeleteHashtag({required this.hashtagFilter});

  @override
  factory VariablesMutationDeleteHashtag.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationDeleteHashtagFromJson(json);

  final InputHashtagFilter hashtagFilter;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationDeleteHashtagToJson(this);
}

@JsonSerializable()
class MutationDeleteHashtag extends JsonSerializable {
  MutationDeleteHashtag({this.deleteHashtag});

  @override
  factory MutationDeleteHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteHashtagFromJson(json);

  final MutationDeleteHashtag$deleteHashtag? deleteHashtag;

  @override
  Map<String, dynamic> toJson() => _$MutationDeleteHashtagToJson(this);
}

const MUTATION_DELETE_HASHTAG = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteHashtag'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagFilter')),
            type: NamedTypeNode(
                name: NameNode(value: 'HashtagFilter'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: VariableNode(name: NameNode(value: 'hashtagFilter')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'msg'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'numUids'),
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
                        name: NameNode(value: 'hashtagVariants'),
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
]);
typedef GQLOnMutationCompletedMutationDeleteHashtag = FutureOr<void> Function(
    dynamic, MutationDeleteHashtag?);

class GQLOptionsMutationDeleteHashtag
    extends graphql.MutationOptions<MutationDeleteHashtag> {
  GQLOptionsMutationDeleteHashtag(
      {String? operationName,
      required VariablesMutationDeleteHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationDeleteHashtag? onCompleted,
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
                    data == null ? null : MutationDeleteHashtag.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG,
            parserFn: (data) => MutationDeleteHashtag.fromJson(data));
}

class GQLWatchOptionsMutationDeleteHashtag
    extends graphql.WatchQueryOptions<MutationDeleteHashtag> {
  GQLWatchOptionsMutationDeleteHashtag(
      {String? operationName,
      required VariablesMutationDeleteHashtag variables,
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
            document: MUTATION_DELETE_HASHTAG,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationDeleteHashtag.fromJson(data));
}

extension GQLExtensionMutationDeleteHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationDeleteHashtag>> mutateDeleteHashtag(
          GQLOptionsMutationDeleteHashtag options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationDeleteHashtag> watchMutationDeleteHashtag(
          GQLWatchOptionsMutationDeleteHashtag options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationDeleteHashtag
    extends graphql.MutationOptions<MutationDeleteHashtag> {
  GQLFOptionsMutationDeleteHashtag(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationDeleteHashtag? onCompleted,
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
                    data == null ? null : MutationDeleteHashtag.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG,
            parserFn: (data) => MutationDeleteHashtag.fromJson(data));
}

typedef GQLFRunMutationMutationDeleteHashtag
    = graphql.MultiSourceResult<MutationDeleteHashtag>
        Function(VariablesMutationDeleteHashtag, {Object? optimisticResult});
typedef GQLFBuilderMutationDeleteHashtag = widgets.Widget Function(
    GQLFRunMutationMutationDeleteHashtag,
    graphql.QueryResult<MutationDeleteHashtag>?);

class GQLFMutationDeleteHashtag
    extends graphql_flutter.Mutation<MutationDeleteHashtag> {
  GQLFMutationDeleteHashtag(
      {widgets.Key? key,
      GQLFOptionsMutationDeleteHashtag? options,
      required GQLFBuilderMutationDeleteHashtag builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationDeleteHashtag(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationDeleteHashtag$deleteHashtag extends JsonSerializable {
  MutationDeleteHashtag$deleteHashtag({this.msg, this.numUids, this.hashtag});

  @override
  factory MutationDeleteHashtag$deleteHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtag$deleteHashtagFromJson(json);

  final String? msg;

  final int? numUids;

  final List<MutationDeleteHashtag$deleteHashtag$hashtag?>? hashtag;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtag$deleteHashtagToJson(this);
}

@JsonSerializable()
class MutationDeleteHashtag$deleteHashtag$hashtag extends JsonSerializable {
  MutationDeleteHashtag$deleteHashtag$hashtag({this.hashtagVariants});

  @override
  factory MutationDeleteHashtag$deleteHashtag$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtag$deleteHashtag$hashtagFromJson(json);

  final List<MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtag$deleteHashtag$hashtagToJson(this);
}

@JsonSerializable()
class MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants
    extends JsonSerializable {
  MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants(
      {required this.id});

  @override
  factory MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariantsFromJson(
          json);

  final String id;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariantsToJson(this);
}

@JsonSerializable()
class VariablesMutationDeleteHashtagVariant extends JsonSerializable {
  VariablesMutationDeleteHashtagVariant({required this.hashtagVariantFilter});

  @override
  factory VariablesMutationDeleteHashtagVariant.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationDeleteHashtagVariantFromJson(json);

  final InputHashtagVariantFilter hashtagVariantFilter;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationDeleteHashtagVariantToJson(this);
}

@JsonSerializable()
class MutationDeleteHashtagVariant extends JsonSerializable {
  MutationDeleteHashtagVariant({this.deleteHashtagVariant});

  @override
  factory MutationDeleteHashtagVariant.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteHashtagVariantFromJson(json);

  final MutationDeleteHashtagVariant$deleteHashtagVariant? deleteHashtagVariant;

  @override
  Map<String, dynamic> toJson() => _$MutationDeleteHashtagVariantToJson(this);
}

const MUTATION_DELETE_HASHTAG_VARIANT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteHashtagVariant'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable:
                VariableNode(name: NameNode(value: 'hashtagVariantFilter')),
            type: NamedTypeNode(
                name: NameNode(value: 'HashtagVariantFilter'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteHashtagVariant'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: VariableNode(
                      name: NameNode(value: 'hashtagVariantFilter')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'msg'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'numUids'),
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
typedef GQLOnMutationCompletedMutationDeleteHashtagVariant = FutureOr<void>
    Function(dynamic, MutationDeleteHashtagVariant?);

class GQLOptionsMutationDeleteHashtagVariant
    extends graphql.MutationOptions<MutationDeleteHashtagVariant> {
  GQLOptionsMutationDeleteHashtagVariant(
      {String? operationName,
      required VariablesMutationDeleteHashtagVariant variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationDeleteHashtagVariant? onCompleted,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : MutationDeleteHashtagVariant.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG_VARIANT,
            parserFn: (data) => MutationDeleteHashtagVariant.fromJson(data));
}

class GQLWatchOptionsMutationDeleteHashtagVariant
    extends graphql.WatchQueryOptions<MutationDeleteHashtagVariant> {
  GQLWatchOptionsMutationDeleteHashtagVariant(
      {String? operationName,
      required VariablesMutationDeleteHashtagVariant variables,
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
            document: MUTATION_DELETE_HASHTAG_VARIANT,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationDeleteHashtagVariant.fromJson(data));
}

extension GQLExtensionMutationDeleteHashtagVariant on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationDeleteHashtagVariant>>
      mutateDeleteHashtagVariant(
              GQLOptionsMutationDeleteHashtagVariant options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationDeleteHashtagVariant>
      watchMutationDeleteHashtagVariant(
              GQLWatchOptionsMutationDeleteHashtagVariant options) =>
          this.watchMutation(options);
}

class GQLFOptionsMutationDeleteHashtagVariant
    extends graphql.MutationOptions<MutationDeleteHashtagVariant> {
  GQLFOptionsMutationDeleteHashtagVariant(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationDeleteHashtagVariant? onCompleted,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : MutationDeleteHashtagVariant.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG_VARIANT,
            parserFn: (data) => MutationDeleteHashtagVariant.fromJson(data));
}

typedef GQLFRunMutationMutationDeleteHashtagVariant = graphql
        .MultiSourceResult<MutationDeleteHashtagVariant>
    Function(VariablesMutationDeleteHashtagVariant, {Object? optimisticResult});
typedef GQLFBuilderMutationDeleteHashtagVariant = widgets.Widget Function(
    GQLFRunMutationMutationDeleteHashtagVariant,
    graphql.QueryResult<MutationDeleteHashtagVariant>?);

class GQLFMutationDeleteHashtagVariant
    extends graphql_flutter.Mutation<MutationDeleteHashtagVariant> {
  GQLFMutationDeleteHashtagVariant(
      {widgets.Key? key,
      GQLFOptionsMutationDeleteHashtagVariant? options,
      required GQLFBuilderMutationDeleteHashtagVariant builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationDeleteHashtagVariant(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationDeleteHashtagVariant$deleteHashtagVariant
    extends JsonSerializable {
  MutationDeleteHashtagVariant$deleteHashtagVariant({this.msg, this.numUids});

  @override
  factory MutationDeleteHashtagVariant$deleteHashtagVariant.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtagVariant$deleteHashtagVariantFromJson(json);

  final String? msg;

  final int? numUids;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtagVariant$deleteHashtagVariantToJson(this);
}

@JsonSerializable()
class VariablesMutationCreateSkill extends JsonSerializable {
  VariablesMutationCreateSkill(
      {required this.addHashtagInputList, required this.addSkillInput});

  @override
  factory VariablesMutationCreateSkill.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateSkillFromJson(json);

  final List<InputAddHashtagInput> addHashtagInputList;

  final InputAddSkillInput addSkillInput;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationCreateSkillToJson(this);
}

@JsonSerializable()
class MutationCreateSkill extends JsonSerializable {
  MutationCreateSkill({this.addHashtag, this.addSkill});

  @override
  factory MutationCreateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateSkillFromJson(json);

  final MutationCreateSkill$addHashtag? addHashtag;

  final MutationCreateSkill$addSkill? addSkill;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateSkillToJson(this);
}

const MUTATION_CREATE_SKILL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateSkill'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable:
                VariableNode(name: NameNode(value: 'addHashtagInputList')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'AddHashtagInput'), isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'addSkillInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'AddSkillInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'upsert'),
                  value: BooleanValueNode(value: true)),
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(
                      name: NameNode(value: 'addHashtagInputList')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'numUids'),
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
            name: NameNode(value: 'addSkill'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ListValueNode(values: [
                    VariableNode(name: NameNode(value: 'addSkillInput'))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'skill'),
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
typedef GQLOnMutationCompletedMutationCreateSkill = FutureOr<void> Function(
    dynamic, MutationCreateSkill?);

class GQLOptionsMutationCreateSkill
    extends graphql.MutationOptions<MutationCreateSkill> {
  GQLOptionsMutationCreateSkill(
      {String? operationName,
      required VariablesMutationCreateSkill variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationCreateSkill? onCompleted,
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
                    data == null ? null : MutationCreateSkill.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_SKILL,
            parserFn: (data) => MutationCreateSkill.fromJson(data));
}

class GQLWatchOptionsMutationCreateSkill
    extends graphql.WatchQueryOptions<MutationCreateSkill> {
  GQLWatchOptionsMutationCreateSkill(
      {String? operationName,
      required VariablesMutationCreateSkill variables,
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
            document: MUTATION_CREATE_SKILL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationCreateSkill.fromJson(data));
}

extension GQLExtensionMutationCreateSkill on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateSkill>> mutateCreateSkill(
          GQLOptionsMutationCreateSkill options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateSkill> watchMutationCreateSkill(
          GQLWatchOptionsMutationCreateSkill options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationCreateSkill
    extends graphql.MutationOptions<MutationCreateSkill> {
  GQLFOptionsMutationCreateSkill(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationCreateSkill? onCompleted,
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
                    data == null ? null : MutationCreateSkill.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_SKILL,
            parserFn: (data) => MutationCreateSkill.fromJson(data));
}

typedef GQLFRunMutationMutationCreateSkill
    = graphql.MultiSourceResult<MutationCreateSkill>
        Function(VariablesMutationCreateSkill, {Object? optimisticResult});
typedef GQLFBuilderMutationCreateSkill = widgets.Widget Function(
    GQLFRunMutationMutationCreateSkill,
    graphql.QueryResult<MutationCreateSkill>?);

class GQLFMutationCreateSkill
    extends graphql_flutter.Mutation<MutationCreateSkill> {
  GQLFMutationCreateSkill(
      {widgets.Key? key,
      GQLFOptionsMutationCreateSkill? options,
      required GQLFBuilderMutationCreateSkill builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationCreateSkill(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationCreateSkill$addHashtag extends JsonSerializable {
  MutationCreateSkill$addHashtag({this.numUids});

  @override
  factory MutationCreateSkill$addHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateSkill$addHashtagFromJson(json);

  final int? numUids;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateSkill$addHashtagToJson(this);
}

@JsonSerializable()
class MutationCreateSkill$addSkill extends JsonSerializable {
  MutationCreateSkill$addSkill({this.skill});

  @override
  factory MutationCreateSkill$addSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateSkill$addSkillFromJson(json);

  final List<MutationCreateSkill$addSkill$skill?>? skill;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateSkill$addSkillToJson(this);
}

@JsonSerializable()
class MutationCreateSkill$addSkill$skill extends JsonSerializable {
  MutationCreateSkill$addSkill$skill({required this.id});

  @override
  factory MutationCreateSkill$addSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateSkill$addSkill$skillFromJson(json);

  final String id;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateSkill$addSkill$skillToJson(this);
}

@JsonSerializable()
class VariablesMutationUpdateSkill extends JsonSerializable {
  VariablesMutationUpdateSkill(
      {required this.skillId,
      required this.addHashtagInputList,
      required this.title,
      required this.message,
      required this.isAvailable,
      required this.hashtagsToSave,
      required this.hashtagsToDelete});

  @override
  factory VariablesMutationUpdateSkill.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationUpdateSkillFromJson(json);

  final String skillId;

  final List<InputAddHashtagInput> addHashtagInputList;

  final String title;

  final String message;

  final bool isAvailable;

  final List<InputHashtagVariantRef> hashtagsToSave;

  final List<InputHashtagVariantRef> hashtagsToDelete;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationUpdateSkillToJson(this);
}

@JsonSerializable()
class MutationUpdateSkill extends JsonSerializable {
  MutationUpdateSkill({this.addHashtag, this.updateSkill});

  @override
  factory MutationUpdateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkillFromJson(json);

  final MutationUpdateSkill$addHashtag? addHashtag;

  final MutationUpdateSkill$updateSkill? updateSkill;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSkillToJson(this);
}

const MUTATION_UPDATE_SKILL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSkill'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'skillId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable:
                VariableNode(name: NameNode(value: 'addHashtagInputList')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'AddHashtagInput'), isNonNull: true),
                isNonNull: true),
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
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'isAvailable')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagsToSave')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'HashtagVariantRef'),
                    isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagsToDelete')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'HashtagVariantRef'),
                    isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addHashtag'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'upsert'),
                  value: BooleanValueNode(value: true)),
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(
                      name: NameNode(value: 'addHashtagInputList')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'numUids'),
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
            name: NameNode(value: 'updateSkill'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'filter'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: ListValueNode(values: [
                                VariableNode(name: NameNode(value: 'skillId'))
                              ]))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'remove'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'hashtagVariants'),
                              value: VariableNode(
                                  name: NameNode(value: 'hashtagsToDelete')))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'set'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'title'),
                              value:
                                  VariableNode(name: NameNode(value: 'title'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'message'),
                              value: VariableNode(
                                  name: NameNode(value: 'message'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'isAvailable'),
                              value: VariableNode(
                                  name: NameNode(value: 'isAvailable'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'hashtagVariants'),
                              value: VariableNode(
                                  name: NameNode(value: 'hashtagsToSave')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'skill'),
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
typedef GQLOnMutationCompletedMutationUpdateSkill = FutureOr<void> Function(
    dynamic, MutationUpdateSkill?);

class GQLOptionsMutationUpdateSkill
    extends graphql.MutationOptions<MutationUpdateSkill> {
  GQLOptionsMutationUpdateSkill(
      {String? operationName,
      required VariablesMutationUpdateSkill variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSkill? onCompleted,
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
                    data == null ? null : MutationUpdateSkill.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL,
            parserFn: (data) => MutationUpdateSkill.fromJson(data));
}

class GQLWatchOptionsMutationUpdateSkill
    extends graphql.WatchQueryOptions<MutationUpdateSkill> {
  GQLWatchOptionsMutationUpdateSkill(
      {String? operationName,
      required VariablesMutationUpdateSkill variables,
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
            document: MUTATION_UPDATE_SKILL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationUpdateSkill.fromJson(data));
}

extension GQLExtensionMutationUpdateSkill on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSkill>> mutateUpdateSkill(
          GQLOptionsMutationUpdateSkill options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateSkill> watchMutationUpdateSkill(
          GQLWatchOptionsMutationUpdateSkill options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationUpdateSkill
    extends graphql.MutationOptions<MutationUpdateSkill> {
  GQLFOptionsMutationUpdateSkill(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSkill? onCompleted,
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
                    data == null ? null : MutationUpdateSkill.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL,
            parserFn: (data) => MutationUpdateSkill.fromJson(data));
}

typedef GQLFRunMutationMutationUpdateSkill
    = graphql.MultiSourceResult<MutationUpdateSkill>
        Function(VariablesMutationUpdateSkill, {Object? optimisticResult});
typedef GQLFBuilderMutationUpdateSkill = widgets.Widget Function(
    GQLFRunMutationMutationUpdateSkill,
    graphql.QueryResult<MutationUpdateSkill>?);

class GQLFMutationUpdateSkill
    extends graphql_flutter.Mutation<MutationUpdateSkill> {
  GQLFMutationUpdateSkill(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateSkill? options,
      required GQLFBuilderMutationUpdateSkill builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateSkill(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateSkill$addHashtag extends JsonSerializable {
  MutationUpdateSkill$addHashtag({this.numUids});

  @override
  factory MutationUpdateSkill$addHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkill$addHashtagFromJson(json);

  final int? numUids;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSkill$addHashtagToJson(this);
}

@JsonSerializable()
class MutationUpdateSkill$updateSkill extends JsonSerializable {
  MutationUpdateSkill$updateSkill({this.skill});

  @override
  factory MutationUpdateSkill$updateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkill$updateSkillFromJson(json);

  final List<MutationUpdateSkill$updateSkill$skill?>? skill;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkill$updateSkillToJson(this);
}

@JsonSerializable()
class MutationUpdateSkill$updateSkill$skill extends JsonSerializable {
  MutationUpdateSkill$updateSkill$skill({required this.id});

  @override
  factory MutationUpdateSkill$updateSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateSkill$updateSkill$skillFromJson(json);

  final String id;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkill$updateSkill$skillToJson(this);
}

@JsonSerializable()
class VariablesMutationUpdateSkillAvailable extends JsonSerializable {
  VariablesMutationUpdateSkillAvailable(
      {required this.skillId, required this.isAvailable});

  @override
  factory VariablesMutationUpdateSkillAvailable.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationUpdateSkillAvailableFromJson(json);

  final String skillId;

  final bool isAvailable;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationUpdateSkillAvailableToJson(this);
}

@JsonSerializable()
class MutationUpdateSkillAvailable extends JsonSerializable {
  MutationUpdateSkillAvailable({this.updateSkill});

  @override
  factory MutationUpdateSkillAvailable.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkillAvailableFromJson(json);

  final MutationUpdateSkillAvailable$updateSkill? updateSkill;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSkillAvailableToJson(this);
}

const MUTATION_UPDATE_SKILL_AVAILABLE = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSkillAvailable'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'skillId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'isAvailable')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateSkill'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'filter'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: ListValueNode(values: [
                                VariableNode(name: NameNode(value: 'skillId'))
                              ]))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'set'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'isAvailable'),
                              value: VariableNode(
                                  name: NameNode(value: 'isAvailable')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'skill'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'isAvailable'),
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
typedef GQLOnMutationCompletedMutationUpdateSkillAvailable = FutureOr<void>
    Function(dynamic, MutationUpdateSkillAvailable?);

class GQLOptionsMutationUpdateSkillAvailable
    extends graphql.MutationOptions<MutationUpdateSkillAvailable> {
  GQLOptionsMutationUpdateSkillAvailable(
      {String? operationName,
      required VariablesMutationUpdateSkillAvailable variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSkillAvailable? onCompleted,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : MutationUpdateSkillAvailable.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL_AVAILABLE,
            parserFn: (data) => MutationUpdateSkillAvailable.fromJson(data));
}

class GQLWatchOptionsMutationUpdateSkillAvailable
    extends graphql.WatchQueryOptions<MutationUpdateSkillAvailable> {
  GQLWatchOptionsMutationUpdateSkillAvailable(
      {String? operationName,
      required VariablesMutationUpdateSkillAvailable variables,
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
            document: MUTATION_UPDATE_SKILL_AVAILABLE,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationUpdateSkillAvailable.fromJson(data));
}

extension GQLExtensionMutationUpdateSkillAvailable on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSkillAvailable>>
      mutateUpdateSkillAvailable(
              GQLOptionsMutationUpdateSkillAvailable options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateSkillAvailable>
      watchMutationUpdateSkillAvailable(
              GQLWatchOptionsMutationUpdateSkillAvailable options) =>
          this.watchMutation(options);
}

class GQLFOptionsMutationUpdateSkillAvailable
    extends graphql.MutationOptions<MutationUpdateSkillAvailable> {
  GQLFOptionsMutationUpdateSkillAvailable(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSkillAvailable? onCompleted,
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
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : MutationUpdateSkillAvailable.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL_AVAILABLE,
            parserFn: (data) => MutationUpdateSkillAvailable.fromJson(data));
}

typedef GQLFRunMutationMutationUpdateSkillAvailable = graphql
        .MultiSourceResult<MutationUpdateSkillAvailable>
    Function(VariablesMutationUpdateSkillAvailable, {Object? optimisticResult});
typedef GQLFBuilderMutationUpdateSkillAvailable = widgets.Widget Function(
    GQLFRunMutationMutationUpdateSkillAvailable,
    graphql.QueryResult<MutationUpdateSkillAvailable>?);

class GQLFMutationUpdateSkillAvailable
    extends graphql_flutter.Mutation<MutationUpdateSkillAvailable> {
  GQLFMutationUpdateSkillAvailable(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateSkillAvailable? options,
      required GQLFBuilderMutationUpdateSkillAvailable builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateSkillAvailable(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateSkillAvailable$updateSkill extends JsonSerializable {
  MutationUpdateSkillAvailable$updateSkill({this.skill});

  @override
  factory MutationUpdateSkillAvailable$updateSkill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateSkillAvailable$updateSkillFromJson(json);

  final List<MutationUpdateSkillAvailable$updateSkill$skill?>? skill;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkillAvailable$updateSkillToJson(this);
}

@JsonSerializable()
class MutationUpdateSkillAvailable$updateSkill$skill extends JsonSerializable {
  MutationUpdateSkillAvailable$updateSkill$skill({this.isAvailable});

  @override
  factory MutationUpdateSkillAvailable$updateSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateSkillAvailable$updateSkill$skillFromJson(json);

  final bool? isAvailable;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkillAvailable$updateSkill$skillToJson(this);
}

@JsonSerializable()
class VariablesMutationRemoveSkill extends JsonSerializable {
  VariablesMutationRemoveSkill({required this.skillId});

  @override
  factory VariablesMutationRemoveSkill.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationRemoveSkillFromJson(json);

  final String skillId;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationRemoveSkillToJson(this);
}

@JsonSerializable()
class MutationRemoveSkill extends JsonSerializable {
  MutationRemoveSkill({this.deleteSkill});

  @override
  factory MutationRemoveSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationRemoveSkillFromJson(json);

  final MutationRemoveSkill$deleteSkill? deleteSkill;

  @override
  Map<String, dynamic> toJson() => _$MutationRemoveSkillToJson(this);
}

const MUTATION_REMOVE_SKILL = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveSkill'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'skillId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteSkill'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: ListValueNode(values: [
                          VariableNode(name: NameNode(value: 'skillId'))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'skill'),
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
typedef GQLOnMutationCompletedMutationRemoveSkill = FutureOr<void> Function(
    dynamic, MutationRemoveSkill?);

class GQLOptionsMutationRemoveSkill
    extends graphql.MutationOptions<MutationRemoveSkill> {
  GQLOptionsMutationRemoveSkill(
      {String? operationName,
      required VariablesMutationRemoveSkill variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationRemoveSkill? onCompleted,
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
                    data == null ? null : MutationRemoveSkill.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_REMOVE_SKILL,
            parserFn: (data) => MutationRemoveSkill.fromJson(data));
}

class GQLWatchOptionsMutationRemoveSkill
    extends graphql.WatchQueryOptions<MutationRemoveSkill> {
  GQLWatchOptionsMutationRemoveSkill(
      {String? operationName,
      required VariablesMutationRemoveSkill variables,
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
            document: MUTATION_REMOVE_SKILL,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationRemoveSkill.fromJson(data));
}

extension GQLExtensionMutationRemoveSkill on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationRemoveSkill>> mutateRemoveSkill(
          GQLOptionsMutationRemoveSkill options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationRemoveSkill> watchMutationRemoveSkill(
          GQLWatchOptionsMutationRemoveSkill options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationRemoveSkill
    extends graphql.MutationOptions<MutationRemoveSkill> {
  GQLFOptionsMutationRemoveSkill(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationRemoveSkill? onCompleted,
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
                    data == null ? null : MutationRemoveSkill.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_REMOVE_SKILL,
            parserFn: (data) => MutationRemoveSkill.fromJson(data));
}

typedef GQLFRunMutationMutationRemoveSkill
    = graphql.MultiSourceResult<MutationRemoveSkill>
        Function(VariablesMutationRemoveSkill, {Object? optimisticResult});
typedef GQLFBuilderMutationRemoveSkill = widgets.Widget Function(
    GQLFRunMutationMutationRemoveSkill,
    graphql.QueryResult<MutationRemoveSkill>?);

class GQLFMutationRemoveSkill
    extends graphql_flutter.Mutation<MutationRemoveSkill> {
  GQLFMutationRemoveSkill(
      {widgets.Key? key,
      GQLFOptionsMutationRemoveSkill? options,
      required GQLFBuilderMutationRemoveSkill builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationRemoveSkill(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationRemoveSkill$deleteSkill extends JsonSerializable {
  MutationRemoveSkill$deleteSkill({this.skill});

  @override
  factory MutationRemoveSkill$deleteSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationRemoveSkill$deleteSkillFromJson(json);

  final List<MutationRemoveSkill$deleteSkill$skill?>? skill;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationRemoveSkill$deleteSkillToJson(this);
}

@JsonSerializable()
class MutationRemoveSkill$deleteSkill$skill extends JsonSerializable {
  MutationRemoveSkill$deleteSkill$skill({required this.id});

  @override
  factory MutationRemoveSkill$deleteSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationRemoveSkill$deleteSkill$skillFromJson(json);

  final String id;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationRemoveSkill$deleteSkill$skillToJson(this);
}
