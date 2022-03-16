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
class VariablesMutationAddHashtagMeta extends JsonSerializable {
  VariablesMutationAddHashtagMeta(
      {required this.metaName,
      this.iconName,
      this.blessed,
      this.blessedInt,
      this.defaultHashtagVariant});

  @override
  factory VariablesMutationAddHashtagMeta.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationAddHashtagMetaFromJson(json);

  final String metaName;

  final String? iconName;

  final bool? blessed;

  final int? blessedInt;

  final InputHashtagVariantRef? defaultHashtagVariant;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationAddHashtagMetaToJson(this);
}

@JsonSerializable()
class MutationAddHashtagMeta extends JsonSerializable {
  MutationAddHashtagMeta({this.addHashtagMeta});

  @override
  factory MutationAddHashtagMeta.fromJson(Map<String, dynamic> json) =>
      _$MutationAddHashtagMetaFromJson(json);

  final MutationAddHashtagMeta$addHashtagMeta? addHashtagMeta;

  @override
  Map<String, dynamic> toJson() => _$MutationAddHashtagMetaToJson(this);
}

const MUTATION_ADD_HASHTAG_META = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddHashtagMeta'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'metaName')),
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
            name: NameNode(value: 'addHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'metaName'),
                        value: VariableNode(name: NameNode(value: 'metaName'))),
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
                  name: NameNode(value: 'hashtagMeta'),
                  alias: null,
                  arguments: [],
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
typedef GQLOnMutationCompletedMutationAddHashtagMeta = FutureOr<void> Function(
    dynamic, MutationAddHashtagMeta?);

class GQLOptionsMutationAddHashtagMeta
    extends graphql.MutationOptions<MutationAddHashtagMeta> {
  GQLOptionsMutationAddHashtagMeta(
      {String? operationName,
      required VariablesMutationAddHashtagMeta variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationAddHashtagMeta? onCompleted,
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
                        : MutationAddHashtagMeta.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_ADD_HASHTAG_META,
            parserFn: (data) => MutationAddHashtagMeta.fromJson(data));
}

class GQLWatchOptionsMutationAddHashtagMeta
    extends graphql.WatchQueryOptions<MutationAddHashtagMeta> {
  GQLWatchOptionsMutationAddHashtagMeta(
      {String? operationName,
      required VariablesMutationAddHashtagMeta variables,
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
            document: MUTATION_ADD_HASHTAG_META,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationAddHashtagMeta.fromJson(data));
}

extension GQLExtensionMutationAddHashtagMeta on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationAddHashtagMeta>> mutateAddHashtagMeta(
          GQLOptionsMutationAddHashtagMeta options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationAddHashtagMeta> watchMutationAddHashtagMeta(
          GQLWatchOptionsMutationAddHashtagMeta options) =>
      this.watchMutation(options);
}

class GQLFOptionsMutationAddHashtagMeta
    extends graphql.MutationOptions<MutationAddHashtagMeta> {
  GQLFOptionsMutationAddHashtagMeta(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationAddHashtagMeta? onCompleted,
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
                        : MutationAddHashtagMeta.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_ADD_HASHTAG_META,
            parserFn: (data) => MutationAddHashtagMeta.fromJson(data));
}

typedef GQLFRunMutationMutationAddHashtagMeta
    = graphql.MultiSourceResult<MutationAddHashtagMeta>
        Function(VariablesMutationAddHashtagMeta, {Object? optimisticResult});
typedef GQLFBuilderMutationAddHashtagMeta = widgets.Widget Function(
    GQLFRunMutationMutationAddHashtagMeta,
    graphql.QueryResult<MutationAddHashtagMeta>?);

class GQLFMutationAddHashtagMeta
    extends graphql_flutter.Mutation<MutationAddHashtagMeta> {
  GQLFMutationAddHashtagMeta(
      {widgets.Key? key,
      GQLFOptionsMutationAddHashtagMeta? options,
      required GQLFBuilderMutationAddHashtagMeta builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationAddHashtagMeta(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationAddHashtagMeta$addHashtagMeta extends JsonSerializable {
  MutationAddHashtagMeta$addHashtagMeta({this.hashtagMeta});

  @override
  factory MutationAddHashtagMeta$addHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtagMeta$addHashtagMetaFromJson(json);

  final List<MutationAddHashtagMeta$addHashtagMeta$hashtagMeta?>? hashtagMeta;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtagMeta$addHashtagMetaToJson(this);
}

@JsonSerializable()
class MutationAddHashtagMeta$addHashtagMeta$hashtagMeta extends JsonSerializable
    implements FragmentHashtagMetaFragmentData {
  MutationAddHashtagMeta$addHashtagMeta$hashtagMeta(
      {required this.id,
      required this.metaName,
      this.iconName,
      this.blessed,
      this.hashtagVariants});

  @override
  factory MutationAddHashtagMeta$addHashtagMeta$hashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMetaFromJson(json);

  final String id;

  final String metaName;

  final String? iconName;

  final bool? blessed;

  final List<
          MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMetaToJson(this);
}

@JsonSerializable()
class MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants(
      {required this.id,
      required this.variantName,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariantsFromJson(
          json);

  final String id;

  final String variantName;

  final MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariantsToJson(
          this);
}

@JsonSerializable()
class MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class VariablesMutationUpdateHashtagMeta extends JsonSerializable {
  VariablesMutationUpdateHashtagMeta({required this.hashtagMetaInput});

  @override
  factory VariablesMutationUpdateHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationUpdateHashtagMetaFromJson(json);

  final InputUpdateHashtagMetaInput hashtagMetaInput;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationUpdateHashtagMetaToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtagMeta extends JsonSerializable {
  MutationUpdateHashtagMeta({this.updateHashtagMeta});

  @override
  factory MutationUpdateHashtagMeta.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateHashtagMetaFromJson(json);

  final MutationUpdateHashtagMeta$updateHashtagMeta? updateHashtagMeta;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateHashtagMetaToJson(this);
}

const MUTATION_UPDATE_HASHTAG_META = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateHashtagMeta'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagMetaInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'UpdateHashtagMetaInput'),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value:
                      VariableNode(name: NameNode(value: 'hashtagMetaInput')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'hashtagMeta'),
                  alias: null,
                  arguments: [],
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
typedef GQLOnMutationCompletedMutationUpdateHashtagMeta = FutureOr<void>
    Function(dynamic, MutationUpdateHashtagMeta?);

class GQLOptionsMutationUpdateHashtagMeta
    extends graphql.MutationOptions<MutationUpdateHashtagMeta> {
  GQLOptionsMutationUpdateHashtagMeta(
      {String? operationName,
      required VariablesMutationUpdateHashtagMeta variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateHashtagMeta? onCompleted,
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
                        : MutationUpdateHashtagMeta.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_HASHTAG_META,
            parserFn: (data) => MutationUpdateHashtagMeta.fromJson(data));
}

class GQLWatchOptionsMutationUpdateHashtagMeta
    extends graphql.WatchQueryOptions<MutationUpdateHashtagMeta> {
  GQLWatchOptionsMutationUpdateHashtagMeta(
      {String? operationName,
      required VariablesMutationUpdateHashtagMeta variables,
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
            document: MUTATION_UPDATE_HASHTAG_META,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationUpdateHashtagMeta.fromJson(data));
}

extension GQLExtensionMutationUpdateHashtagMeta on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateHashtagMeta>>
      mutateUpdateHashtagMeta(
              GQLOptionsMutationUpdateHashtagMeta options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateHashtagMeta>
      watchMutationUpdateHashtagMeta(
              GQLWatchOptionsMutationUpdateHashtagMeta options) =>
          this.watchMutation(options);
}

class GQLFOptionsMutationUpdateHashtagMeta
    extends graphql.MutationOptions<MutationUpdateHashtagMeta> {
  GQLFOptionsMutationUpdateHashtagMeta(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateHashtagMeta? onCompleted,
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
                        : MutationUpdateHashtagMeta.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_HASHTAG_META,
            parserFn: (data) => MutationUpdateHashtagMeta.fromJson(data));
}

typedef GQLFRunMutationMutationUpdateHashtagMeta = graphql
        .MultiSourceResult<MutationUpdateHashtagMeta>
    Function(VariablesMutationUpdateHashtagMeta, {Object? optimisticResult});
typedef GQLFBuilderMutationUpdateHashtagMeta = widgets.Widget Function(
    GQLFRunMutationMutationUpdateHashtagMeta,
    graphql.QueryResult<MutationUpdateHashtagMeta>?);

class GQLFMutationUpdateHashtagMeta
    extends graphql_flutter.Mutation<MutationUpdateHashtagMeta> {
  GQLFMutationUpdateHashtagMeta(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateHashtagMeta? options,
      required GQLFBuilderMutationUpdateHashtagMeta builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateHashtagMeta(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateHashtagMeta$updateHashtagMeta extends JsonSerializable {
  MutationUpdateHashtagMeta$updateHashtagMeta({this.hashtagMeta});

  @override
  factory MutationUpdateHashtagMeta$updateHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtagMeta$updateHashtagMetaFromJson(json);

  final List<MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta?>?
      hashtagMeta;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtagMeta$updateHashtagMetaToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta
    extends JsonSerializable implements FragmentHashtagMetaFragmentData {
  MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta(
      {required this.id,
      required this.metaName,
      this.iconName,
      this.blessed,
      this.hashtagVariants});

  @override
  factory MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMetaFromJson(json);

  final String id;

  final String metaName;

  final String? iconName;

  final bool? blessed;

  final List<
          MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMetaToJson(this);
}

@JsonSerializable()
class MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants(
      {required this.id,
      required this.variantName,
      this.skillsAggregate,
      this.requestsAggregate});

  @override
  factory MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariantsFromJson(
          json);

  final String id;

  final String variantName;

  final MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate?
      skillsAggregate;

  final MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate?
      requestsAggregate;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariantsToJson(
          this);
}

@JsonSerializable()
class MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate(
      {this.count});

  @override
  factory MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateToJson(
          this);
}

@JsonSerializable()
class MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagMetaFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate(
      {this.count});

  @override
  factory MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateToJson(
          this);
}

@JsonSerializable()
class VariablesMutationDeleteHashtagMeta extends JsonSerializable {
  VariablesMutationDeleteHashtagMeta({required this.hashtagMetaFilter});

  @override
  factory VariablesMutationDeleteHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationDeleteHashtagMetaFromJson(json);

  final InputHashtagMetaFilter hashtagMetaFilter;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationDeleteHashtagMetaToJson(this);
}

@JsonSerializable()
class MutationDeleteHashtagMeta extends JsonSerializable {
  MutationDeleteHashtagMeta({this.deleteHashtagMeta});

  @override
  factory MutationDeleteHashtagMeta.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteHashtagMetaFromJson(json);

  final MutationDeleteHashtagMeta$deleteHashtagMeta? deleteHashtagMeta;

  @override
  Map<String, dynamic> toJson() => _$MutationDeleteHashtagMetaToJson(this);
}

const MUTATION_DELETE_HASHTAG_META = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteHashtagMeta'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hashtagMetaFilter')),
            type: NamedTypeNode(
                name: NameNode(value: 'HashtagMetaFilter'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value:
                      VariableNode(name: NameNode(value: 'hashtagMetaFilter')))
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
                  name: NameNode(value: 'hashtagMeta'),
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
typedef GQLOnMutationCompletedMutationDeleteHashtagMeta = FutureOr<void>
    Function(dynamic, MutationDeleteHashtagMeta?);

class GQLOptionsMutationDeleteHashtagMeta
    extends graphql.MutationOptions<MutationDeleteHashtagMeta> {
  GQLOptionsMutationDeleteHashtagMeta(
      {String? operationName,
      required VariablesMutationDeleteHashtagMeta variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationDeleteHashtagMeta? onCompleted,
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
                        : MutationDeleteHashtagMeta.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG_META,
            parserFn: (data) => MutationDeleteHashtagMeta.fromJson(data));
}

class GQLWatchOptionsMutationDeleteHashtagMeta
    extends graphql.WatchQueryOptions<MutationDeleteHashtagMeta> {
  GQLWatchOptionsMutationDeleteHashtagMeta(
      {String? operationName,
      required VariablesMutationDeleteHashtagMeta variables,
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
            document: MUTATION_DELETE_HASHTAG_META,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationDeleteHashtagMeta.fromJson(data));
}

extension GQLExtensionMutationDeleteHashtagMeta on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationDeleteHashtagMeta>>
      mutateDeleteHashtagMeta(
              GQLOptionsMutationDeleteHashtagMeta options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationDeleteHashtagMeta>
      watchMutationDeleteHashtagMeta(
              GQLWatchOptionsMutationDeleteHashtagMeta options) =>
          this.watchMutation(options);
}

class GQLFOptionsMutationDeleteHashtagMeta
    extends graphql.MutationOptions<MutationDeleteHashtagMeta> {
  GQLFOptionsMutationDeleteHashtagMeta(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationDeleteHashtagMeta? onCompleted,
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
                        : MutationDeleteHashtagMeta.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG_META,
            parserFn: (data) => MutationDeleteHashtagMeta.fromJson(data));
}

typedef GQLFRunMutationMutationDeleteHashtagMeta = graphql
        .MultiSourceResult<MutationDeleteHashtagMeta>
    Function(VariablesMutationDeleteHashtagMeta, {Object? optimisticResult});
typedef GQLFBuilderMutationDeleteHashtagMeta = widgets.Widget Function(
    GQLFRunMutationMutationDeleteHashtagMeta,
    graphql.QueryResult<MutationDeleteHashtagMeta>?);

class GQLFMutationDeleteHashtagMeta
    extends graphql_flutter.Mutation<MutationDeleteHashtagMeta> {
  GQLFMutationDeleteHashtagMeta(
      {widgets.Key? key,
      GQLFOptionsMutationDeleteHashtagMeta? options,
      required GQLFBuilderMutationDeleteHashtagMeta builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationDeleteHashtagMeta(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationDeleteHashtagMeta$deleteHashtagMeta extends JsonSerializable {
  MutationDeleteHashtagMeta$deleteHashtagMeta(
      {this.msg, this.numUids, this.hashtagMeta});

  @override
  factory MutationDeleteHashtagMeta$deleteHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtagMeta$deleteHashtagMetaFromJson(json);

  final String? msg;

  final int? numUids;

  final List<MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta?>?
      hashtagMeta;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtagMeta$deleteHashtagMetaToJson(this);
}

@JsonSerializable()
class MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta
    extends JsonSerializable {
  MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta(
      {this.hashtagVariants});

  @override
  factory MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMetaFromJson(json);

  final List<
          MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants?>?
      hashtagVariants;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMetaToJson(this);
}

@JsonSerializable()
class MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants
    extends JsonSerializable {
  MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants(
      {required this.id});

  @override
  factory MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariantsFromJson(
          json);

  final String id;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariantsToJson(
          this);
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
      {required this.addHashtagMetaInputList, required this.addSkillInput});

  @override
  factory VariablesMutationCreateSkill.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateSkillFromJson(json);

  final List<InputAddHashtagMetaInput> addHashtagMetaInputList;

  final InputAddSkillInput addSkillInput;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationCreateSkillToJson(this);
}

@JsonSerializable()
class MutationCreateSkill extends JsonSerializable {
  MutationCreateSkill({this.addHashtagMeta, this.addSkill});

  @override
  factory MutationCreateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateSkillFromJson(json);

  final MutationCreateSkill$addHashtagMeta? addHashtagMeta;

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
                VariableNode(name: NameNode(value: 'addHashtagMetaInputList')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'AddHashtagMetaInput'),
                    isNonNull: true),
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
            name: NameNode(value: 'addHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'upsert'),
                  value: BooleanValueNode(value: true)),
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(
                      name: NameNode(value: 'addHashtagMetaInputList')))
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
class MutationCreateSkill$addHashtagMeta extends JsonSerializable {
  MutationCreateSkill$addHashtagMeta({this.numUids});

  @override
  factory MutationCreateSkill$addHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateSkill$addHashtagMetaFromJson(json);

  final int? numUids;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateSkill$addHashtagMetaToJson(this);
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
      required this.addHashtagMetaInputList,
      required this.title,
      required this.message,
      required this.isAvailable,
      required this.hashtagsToSave,
      required this.hashtagsToDelete});

  @override
  factory VariablesMutationUpdateSkill.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationUpdateSkillFromJson(json);

  final String skillId;

  final List<InputAddHashtagMetaInput> addHashtagMetaInputList;

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
  MutationUpdateSkill({this.addHashtagMeta, this.updateSkill});

  @override
  factory MutationUpdateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkillFromJson(json);

  final MutationUpdateSkill$addHashtagMeta? addHashtagMeta;

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
                VariableNode(name: NameNode(value: 'addHashtagMetaInputList')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'AddHashtagMetaInput'),
                    isNonNull: true),
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
            name: NameNode(value: 'addHashtagMeta'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'upsert'),
                  value: BooleanValueNode(value: true)),
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(
                      name: NameNode(value: 'addHashtagMetaInputList')))
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
class MutationUpdateSkill$addHashtagMeta extends JsonSerializable {
  MutationUpdateSkill$addHashtagMeta({this.numUids});

  @override
  factory MutationUpdateSkill$addHashtagMeta.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateSkill$addHashtagMetaFromJson(json);

  final int? numUids;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkill$addHashtagMetaToJson(this);
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
