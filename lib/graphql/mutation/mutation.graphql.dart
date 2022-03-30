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
  int get hashCode {
    final l$email = email;
    final l$name = name;
    final l$age = age;
    final l$createdTimestamp = createdTimestamp;
    return Object.hashAll([l$email, l$name, l$age, l$createdTimestamp]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationCreateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$createdTimestamp = createdTimestamp;
    final lOther$createdTimestamp = other.createdTimestamp;
    if (l$createdTimestamp != lOther$createdTimestamp) return false;
    return true;
  }
}

@JsonSerializable()
class MutationCreateUser extends JsonSerializable {
  MutationCreateUser({this.addUser, required this.$__typename});

  @override
  factory MutationCreateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUserFromJson(json);

  final MutationCreateUser$addUser? addUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateUserToJson(this);
  int get hashCode {
    final l$addUser = addUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateUser) || runtimeType != other.runtimeType)
      return false;
    final l$addUser = addUser;
    final lOther$addUser = other.addUser;
    if (l$addUser != lOther$addUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
                        name: NameNode(value: 'isTest'),
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
MutationCreateUser _parserFnMutationCreateUser(Map<String, dynamic> data) =>
    MutationCreateUser.fromJson(data);
typedef OnMutationCompletedMutationCreateUser = FutureOr<void> Function(
    dynamic, MutationCreateUser?);

class OptionsMutationCreateUser
    extends graphql.MutationOptions<MutationCreateUser> {
  OptionsMutationCreateUser(
      {String? operationName,
      required VariablesMutationCreateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateUser? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationCreateUser(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_USER,
            parserFn: _parserFnMutationCreateUser);

  final OnMutationCompletedMutationCreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationCreateUser
    extends graphql.WatchQueryOptions<MutationCreateUser> {
  WatchOptionsMutationCreateUser(
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
            parserFn: _parserFnMutationCreateUser);
}

extension ClientExtensionMutationCreateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateUser>> mutateCreateUser(
          OptionsMutationCreateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateUser> watchMutationCreateUser(
          WatchOptionsMutationCreateUser options) =>
      this.watchMutation(options);
}

class MutationCreateUserHookResult {
  MutationCreateUserHookResult(this.runMutation, this.result);

  final RunMutationMutationCreateUser runMutation;

  final graphql.QueryResult<MutationCreateUser> result;
}

MutationCreateUserHookResult useMutationCreateUser(
    [WidgetOptionsMutationCreateUser? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptionsMutationCreateUser());
  return MutationCreateUserHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationCreateUser> useWatchMutationCreateUser(
        WatchOptionsMutationCreateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationCreateUser
    extends graphql.MutationOptions<MutationCreateUser> {
  WidgetOptionsMutationCreateUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateUser? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationCreateUser(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_USER,
            parserFn: _parserFnMutationCreateUser);

  final OnMutationCompletedMutationCreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationCreateUser
    = graphql.MultiSourceResult<MutationCreateUser>
        Function(VariablesMutationCreateUser, {Object? optimisticResult});
typedef BuilderMutationCreateUser = widgets.Widget Function(
    RunMutationMutationCreateUser, graphql.QueryResult<MutationCreateUser>?);

class MutationCreateUserWidget
    extends graphql_flutter.Mutation<MutationCreateUser> {
  MutationCreateUserWidget(
      {widgets.Key? key,
      WidgetOptionsMutationCreateUser? options,
      required BuilderMutationCreateUser builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationCreateUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationCreateUser$addUser extends JsonSerializable {
  MutationCreateUser$addUser({this.user, required this.$__typename});

  @override
  factory MutationCreateUser$addUser.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUser$addUserFromJson(json);

  final List<MutationCreateUser$addUser$user?>? user;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateUser$addUserToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user == null ? null : Object.hashAll(l$user.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateUser$addUser) ||
        runtimeType != other.runtimeType) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != null && lOther$user != null) {
      if (l$user.length != lOther$user.length) return false;
      for (int i = 0; i < l$user.length; i++) {
        final l$user$entry = l$user[i];
        final lOther$user$entry = lOther$user[i];
        if (l$user$entry != lOther$user$entry) return false;
      }
    } else if (l$user != lOther$user) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationCreateUser$addUser$user extends JsonSerializable {
  MutationCreateUser$addUser$user(
      {required this.id,
      required this.name,
      required this.email,
      this.isAdmin,
      this.createdTimestamp,
      required this.$__typename});

  @override
  factory MutationCreateUser$addUser$user.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUser$addUser$userFromJson(json);

  final String id;

  final String name;

  final String email;

  final bool? isAdmin;

  final String? createdTimestamp;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateUser$addUser$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$isAdmin = isAdmin;
    final l$createdTimestamp = createdTimestamp;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$name, l$email, l$isAdmin, l$createdTimestamp, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateUser$addUser$user) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
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
class VariablesMutationCreateTester extends JsonSerializable {
  VariablesMutationCreateTester({required this.testerInfo});

  @override
  factory VariablesMutationCreateTester.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateTesterFromJson(json);

  final List<InputAddUserInput> testerInfo;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationCreateTesterToJson(this);
  int get hashCode {
    final l$testerInfo = testerInfo;
    return Object.hashAll([Object.hashAll(l$testerInfo.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationCreateTester) ||
        runtimeType != other.runtimeType) return false;
    final l$testerInfo = testerInfo;
    final lOther$testerInfo = other.testerInfo;
    if (l$testerInfo.length != lOther$testerInfo.length) return false;
    for (int i = 0; i < l$testerInfo.length; i++) {
      final l$testerInfo$entry = l$testerInfo[i];
      final lOther$testerInfo$entry = lOther$testerInfo[i];
      if (l$testerInfo$entry != lOther$testerInfo$entry) return false;
    }

    return true;
  }
}

@JsonSerializable()
class MutationCreateTester extends JsonSerializable {
  MutationCreateTester({this.addUser, required this.$__typename});

  @override
  factory MutationCreateTester.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateTesterFromJson(json);

  final MutationCreateTester$addUser? addUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateTesterToJson(this);
  int get hashCode {
    final l$addUser = addUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateTester) || runtimeType != other.runtimeType)
      return false;
    final l$addUser = addUser;
    final lOther$addUser = other.addUser;
    if (l$addUser != lOther$addUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const MUTATION_CREATE_TESTER = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateTester'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'testerInfo')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'AddUserInput'), isNonNull: true),
                isNonNull: true),
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
                  value: VariableNode(name: NameNode(value: 'testerInfo')))
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
                        name: NameNode(value: 'isTest'),
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
MutationCreateTester _parserFnMutationCreateTester(Map<String, dynamic> data) =>
    MutationCreateTester.fromJson(data);
typedef OnMutationCompletedMutationCreateTester = FutureOr<void> Function(
    dynamic, MutationCreateTester?);

class OptionsMutationCreateTester
    extends graphql.MutationOptions<MutationCreateTester> {
  OptionsMutationCreateTester(
      {String? operationName,
      required VariablesMutationCreateTester variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateTester? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationCreateTester(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_TESTER,
            parserFn: _parserFnMutationCreateTester);

  final OnMutationCompletedMutationCreateTester? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationCreateTester
    extends graphql.WatchQueryOptions<MutationCreateTester> {
  WatchOptionsMutationCreateTester(
      {String? operationName,
      required VariablesMutationCreateTester variables,
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
            document: MUTATION_CREATE_TESTER,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationCreateTester);
}

extension ClientExtensionMutationCreateTester on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateTester>> mutateCreateTester(
          OptionsMutationCreateTester options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateTester> watchMutationCreateTester(
          WatchOptionsMutationCreateTester options) =>
      this.watchMutation(options);
}

class MutationCreateTesterHookResult {
  MutationCreateTesterHookResult(this.runMutation, this.result);

  final RunMutationMutationCreateTester runMutation;

  final graphql.QueryResult<MutationCreateTester> result;
}

MutationCreateTesterHookResult useMutationCreateTester(
    [WidgetOptionsMutationCreateTester? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationCreateTester());
  return MutationCreateTesterHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationCreateTester> useWatchMutationCreateTester(
        WatchOptionsMutationCreateTester options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationCreateTester
    extends graphql.MutationOptions<MutationCreateTester> {
  WidgetOptionsMutationCreateTester(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateTester? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationCreateTester(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_TESTER,
            parserFn: _parserFnMutationCreateTester);

  final OnMutationCompletedMutationCreateTester? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationCreateTester
    = graphql.MultiSourceResult<MutationCreateTester>
        Function(VariablesMutationCreateTester, {Object? optimisticResult});
typedef BuilderMutationCreateTester = widgets.Widget Function(
    RunMutationMutationCreateTester,
    graphql.QueryResult<MutationCreateTester>?);

class MutationCreateTesterWidget
    extends graphql_flutter.Mutation<MutationCreateTester> {
  MutationCreateTesterWidget(
      {widgets.Key? key,
      WidgetOptionsMutationCreateTester? options,
      required BuilderMutationCreateTester builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationCreateTester(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationCreateTester$addUser extends JsonSerializable {
  MutationCreateTester$addUser({this.user, required this.$__typename});

  @override
  factory MutationCreateTester$addUser.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateTester$addUserFromJson(json);

  final List<MutationCreateTester$addUser$user?>? user;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateTester$addUserToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user == null ? null : Object.hashAll(l$user.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateTester$addUser) ||
        runtimeType != other.runtimeType) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != null && lOther$user != null) {
      if (l$user.length != lOther$user.length) return false;
      for (int i = 0; i < l$user.length; i++) {
        final l$user$entry = l$user[i];
        final lOther$user$entry = lOther$user[i];
        if (l$user$entry != lOther$user$entry) return false;
      }
    } else if (l$user != lOther$user) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationCreateTester$addUser$user extends JsonSerializable {
  MutationCreateTester$addUser$user(
      {required this.id,
      required this.name,
      required this.email,
      this.isAdmin,
      this.isTest,
      this.createdTimestamp,
      required this.$__typename});

  @override
  factory MutationCreateTester$addUser$user.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateTester$addUser$userFromJson(json);

  final String id;

  final String name;

  final String email;

  final bool? isAdmin;

  final bool? isTest;

  final String? createdTimestamp;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateTester$addUser$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$isAdmin = isAdmin;
    final l$isTest = isTest;
    final l$createdTimestamp = createdTimestamp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$isAdmin,
      l$isTest,
      l$createdTimestamp,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateTester$addUser$user) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) return false;
    final l$isTest = isTest;
    final lOther$isTest = other.isTest;
    if (l$isTest != lOther$isTest) return false;
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
class MutationDeleteTester extends JsonSerializable {
  MutationDeleteTester({this.deleteUser, required this.$__typename});

  @override
  factory MutationDeleteTester.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteTesterFromJson(json);

  final MutationDeleteTester$deleteUser? deleteUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationDeleteTesterToJson(this);
  int get hashCode {
    final l$deleteUser = deleteUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteTester) || runtimeType != other.runtimeType)
      return false;
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const MUTATION_DELETE_TESTER = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteTester'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'isTest'),
                        value: BooleanValueNode(value: true))
                  ]))
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationDeleteTester _parserFnMutationDeleteTester(Map<String, dynamic> data) =>
    MutationDeleteTester.fromJson(data);
typedef OnMutationCompletedMutationDeleteTester = FutureOr<void> Function(
    dynamic, MutationDeleteTester?);

class OptionsMutationDeleteTester
    extends graphql.MutationOptions<MutationDeleteTester> {
  OptionsMutationDeleteTester(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteTester? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationDeleteTester(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_TESTER,
            parserFn: _parserFnMutationDeleteTester);

  final OnMutationCompletedMutationDeleteTester? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationDeleteTester
    extends graphql.WatchQueryOptions<MutationDeleteTester> {
  WatchOptionsMutationDeleteTester(
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
            document: MUTATION_DELETE_TESTER,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationDeleteTester);
}

extension ClientExtensionMutationDeleteTester on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationDeleteTester>> mutateDeleteTester(
          [OptionsMutationDeleteTester? options]) async =>
      await this.mutate(options ?? OptionsMutationDeleteTester());
  graphql.ObservableQuery<MutationDeleteTester> watchMutationDeleteTester(
          [WatchOptionsMutationDeleteTester? options]) =>
      this.watchMutation(options ?? WatchOptionsMutationDeleteTester());
}

class MutationDeleteTesterHookResult {
  MutationDeleteTesterHookResult(this.runMutation, this.result);

  final RunMutationMutationDeleteTester runMutation;

  final graphql.QueryResult<MutationDeleteTester> result;
}

MutationDeleteTesterHookResult useMutationDeleteTester(
    [WidgetOptionsMutationDeleteTester? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationDeleteTester());
  return MutationDeleteTesterHookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationDeleteTester> useWatchMutationDeleteTester(
        [WatchOptionsMutationDeleteTester? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptionsMutationDeleteTester());

class WidgetOptionsMutationDeleteTester
    extends graphql.MutationOptions<MutationDeleteTester> {
  WidgetOptionsMutationDeleteTester(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteTester? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationDeleteTester(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_TESTER,
            parserFn: _parserFnMutationDeleteTester);

  final OnMutationCompletedMutationDeleteTester? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationDeleteTester
    = graphql.MultiSourceResult<MutationDeleteTester> Function(
        {Object? optimisticResult});
typedef BuilderMutationDeleteTester = widgets.Widget Function(
    RunMutationMutationDeleteTester,
    graphql.QueryResult<MutationDeleteTester>?);

class MutationDeleteTesterWidget
    extends graphql_flutter.Mutation<MutationDeleteTester> {
  MutationDeleteTesterWidget(
      {widgets.Key? key,
      WidgetOptionsMutationDeleteTester? options,
      required BuilderMutationDeleteTester builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationDeleteTester(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run(const {}, optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationDeleteTester$deleteUser extends JsonSerializable {
  MutationDeleteTester$deleteUser({this.numUids, required this.$__typename});

  @override
  factory MutationDeleteTester$deleteUser.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteTester$deleteUserFromJson(json);

  final int? numUids;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteTester$deleteUserToJson(this);
  int get hashCode {
    final l$numUids = numUids;
    final l$$__typename = $__typename;
    return Object.hashAll([l$numUids, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteTester$deleteUser) ||
        runtimeType != other.runtimeType) return false;
    final l$numUids = numUids;
    final lOther$numUids = other.numUids;
    if (l$numUids != lOther$numUids) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesMutationUpdateUser extends JsonSerializable {
  VariablesMutationUpdateUser(
      {required this.id,
      required this.name,
      required this.bio,
      required this.avatar});

  @override
  factory VariablesMutationUpdateUser.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationUpdateUserFromJson(json);

  final String id;

  final String name;

  final String bio;

  final String avatar;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationUpdateUserToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$bio = bio;
    final l$avatar = avatar;
    return Object.hashAll([l$id, l$name, l$bio, l$avatar]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateUser extends JsonSerializable {
  MutationUpdateUser({this.updateUser, required this.$__typename});

  @override
  factory MutationUpdateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateUserFromJson(json);

  final MutationUpdateUser$updateUser? updateUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateUserToJson(this);
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateUser) || runtimeType != other.runtimeType)
      return false;
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'avatar')),
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
                              value:
                                  VariableNode(name: NameNode(value: 'bio'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'avatar'),
                              value:
                                  VariableNode(name: NameNode(value: 'avatar')))
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
MutationUpdateUser _parserFnMutationUpdateUser(Map<String, dynamic> data) =>
    MutationUpdateUser.fromJson(data);
typedef OnMutationCompletedMutationUpdateUser = FutureOr<void> Function(
    dynamic, MutationUpdateUser?);

class OptionsMutationUpdateUser
    extends graphql.MutationOptions<MutationUpdateUser> {
  OptionsMutationUpdateUser(
      {String? operationName,
      required VariablesMutationUpdateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateUser? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationUpdateUser(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_USER,
            parserFn: _parserFnMutationUpdateUser);

  final OnMutationCompletedMutationUpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateUser
    extends graphql.WatchQueryOptions<MutationUpdateUser> {
  WatchOptionsMutationUpdateUser(
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
            parserFn: _parserFnMutationUpdateUser);
}

extension ClientExtensionMutationUpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateUser>> mutateUpdateUser(
          OptionsMutationUpdateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateUser> watchMutationUpdateUser(
          WatchOptionsMutationUpdateUser options) =>
      this.watchMutation(options);
}

class MutationUpdateUserHookResult {
  MutationUpdateUserHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdateUser runMutation;

  final graphql.QueryResult<MutationUpdateUser> result;
}

MutationUpdateUserHookResult useMutationUpdateUser(
    [WidgetOptionsMutationUpdateUser? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptionsMutationUpdateUser());
  return MutationUpdateUserHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationUpdateUser> useWatchMutationUpdateUser(
        WatchOptionsMutationUpdateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationUpdateUser
    extends graphql.MutationOptions<MutationUpdateUser> {
  WidgetOptionsMutationUpdateUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateUser? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationUpdateUser(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_USER,
            parserFn: _parserFnMutationUpdateUser);

  final OnMutationCompletedMutationUpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdateUser
    = graphql.MultiSourceResult<MutationUpdateUser>
        Function(VariablesMutationUpdateUser, {Object? optimisticResult});
typedef BuilderMutationUpdateUser = widgets.Widget Function(
    RunMutationMutationUpdateUser, graphql.QueryResult<MutationUpdateUser>?);

class MutationUpdateUserWidget
    extends graphql_flutter.Mutation<MutationUpdateUser> {
  MutationUpdateUserWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdateUser? options,
      required BuilderMutationUpdateUser builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdateUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateUser$updateUser extends JsonSerializable {
  MutationUpdateUser$updateUser({this.user, required this.$__typename});

  @override
  factory MutationUpdateUser$updateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateUser$updateUserFromJson(json);

  final List<MutationUpdateUser$updateUser$user?>? user;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateUser$updateUserToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user == null ? null : Object.hashAll(l$user.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateUser$updateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != null && lOther$user != null) {
      if (l$user.length != lOther$user.length) return false;
      for (int i = 0; i < l$user.length; i++) {
        final l$user$entry = l$user[i];
        final lOther$user$entry = lOther$user[i];
        if (l$user$entry != lOther$user$entry) return false;
      }
    } else if (l$user != lOther$user) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateUser$updateUser$user extends JsonSerializable {
  MutationUpdateUser$updateUser$user(
      {required this.id,
      required this.name,
      this.bio,
      required this.$__typename});

  @override
  factory MutationUpdateUser$updateUser$user.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateUser$updateUser$userFromJson(json);

  final String id;

  final String name;

  final String? bio;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateUser$updateUser$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$bio = bio;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$bio, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateUser$updateUser$user) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$name = name;
    final l$iconName = iconName;
    final l$blessed = blessed;
    final l$blessedInt = blessedInt;
    final l$defaultHashtagVariant = defaultHashtagVariant;
    return Object.hashAll(
        [l$name, l$iconName, l$blessed, l$blessedInt, l$defaultHashtagVariant]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationAddHashtag) ||
        runtimeType != other.runtimeType) return false;
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
    final l$defaultHashtagVariant = defaultHashtagVariant;
    final lOther$defaultHashtagVariant = other.defaultHashtagVariant;
    if (l$defaultHashtagVariant != lOther$defaultHashtagVariant) return false;
    return true;
  }
}

@JsonSerializable()
class MutationAddHashtag extends JsonSerializable {
  MutationAddHashtag({this.addHashtag, required this.$__typename});

  @override
  factory MutationAddHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationAddHashtagFromJson(json);

  final MutationAddHashtag$addHashtag? addHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationAddHashtagToJson(this);
  int get hashCode {
    final l$addHashtag = addHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addHashtag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationAddHashtag) || runtimeType != other.runtimeType)
      return false;
    final l$addHashtag = addHashtag;
    final lOther$addHashtag = other.addHashtag;
    if (l$addHashtag != lOther$addHashtag) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationAddHashtag _parserFnMutationAddHashtag(Map<String, dynamic> data) =>
    MutationAddHashtag.fromJson(data);
typedef OnMutationCompletedMutationAddHashtag = FutureOr<void> Function(
    dynamic, MutationAddHashtag?);

class OptionsMutationAddHashtag
    extends graphql.MutationOptions<MutationAddHashtag> {
  OptionsMutationAddHashtag(
      {String? operationName,
      required VariablesMutationAddHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationAddHashtag? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationAddHashtag(data)),
            update: update,
            onError: onError,
            document: MUTATION_ADD_HASHTAG,
            parserFn: _parserFnMutationAddHashtag);

  final OnMutationCompletedMutationAddHashtag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationAddHashtag
    extends graphql.WatchQueryOptions<MutationAddHashtag> {
  WatchOptionsMutationAddHashtag(
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
            parserFn: _parserFnMutationAddHashtag);
}

extension ClientExtensionMutationAddHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationAddHashtag>> mutateAddHashtag(
          OptionsMutationAddHashtag options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationAddHashtag> watchMutationAddHashtag(
          WatchOptionsMutationAddHashtag options) =>
      this.watchMutation(options);
}

class MutationAddHashtagHookResult {
  MutationAddHashtagHookResult(this.runMutation, this.result);

  final RunMutationMutationAddHashtag runMutation;

  final graphql.QueryResult<MutationAddHashtag> result;
}

MutationAddHashtagHookResult useMutationAddHashtag(
    [WidgetOptionsMutationAddHashtag? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptionsMutationAddHashtag());
  return MutationAddHashtagHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationAddHashtag> useWatchMutationAddHashtag(
        WatchOptionsMutationAddHashtag options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationAddHashtag
    extends graphql.MutationOptions<MutationAddHashtag> {
  WidgetOptionsMutationAddHashtag(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationAddHashtag? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationAddHashtag(data)),
            update: update,
            onError: onError,
            document: MUTATION_ADD_HASHTAG,
            parserFn: _parserFnMutationAddHashtag);

  final OnMutationCompletedMutationAddHashtag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationAddHashtag
    = graphql.MultiSourceResult<MutationAddHashtag>
        Function(VariablesMutationAddHashtag, {Object? optimisticResult});
typedef BuilderMutationAddHashtag = widgets.Widget Function(
    RunMutationMutationAddHashtag, graphql.QueryResult<MutationAddHashtag>?);

class MutationAddHashtagWidget
    extends graphql_flutter.Mutation<MutationAddHashtag> {
  MutationAddHashtagWidget(
      {widgets.Key? key,
      WidgetOptionsMutationAddHashtag? options,
      required BuilderMutationAddHashtag builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationAddHashtag(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationAddHashtag$addHashtag extends JsonSerializable {
  MutationAddHashtag$addHashtag({this.hashtag, required this.$__typename});

  @override
  factory MutationAddHashtag$addHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtagFromJson(json);

  final List<MutationAddHashtag$addHashtag$hashtag?>? hashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationAddHashtag$addHashtagToJson(this);
  int get hashCode {
    final l$hashtag = hashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hashtag == null ? null : Object.hashAll(l$hashtag.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationAddHashtag$addHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != null && lOther$hashtag != null) {
      if (l$hashtag.length != lOther$hashtag.length) return false;
      for (int i = 0; i < l$hashtag.length; i++) {
        final l$hashtag$entry = l$hashtag[i];
        final lOther$hashtag$entry = lOther$hashtag[i];
        if (l$hashtag$entry != lOther$hashtag$entry) return false;
      }
    } else if (l$hashtag != lOther$hashtag) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationAddHashtag$addHashtag$hashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  MutationAddHashtag$addHashtag$hashtag(
      {required this.id,
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants,
      required this.$__typename});

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

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtagToJson(this);
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
    if (!(other is MutationAddHashtag$addHashtag$hashtag) ||
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
class MutationAddHashtag$addHashtag$hashtag$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  MutationAddHashtag$addHashtag$hashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate,
      required this.$__typename});

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

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariantsToJson(this);
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
    if (!(other is MutationAddHashtag$addHashtag$hashtag$hashtagVariants) ||
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
class MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregateToJson(
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
            is MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate) ||
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
class MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate(
      {this.count, required this.$__typename});

  @override
  factory MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregateToJson(
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
            is MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate) ||
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
class VariablesMutationUpdateHashtag extends JsonSerializable {
  VariablesMutationUpdateHashtag({required this.hashtagInput});

  @override
  factory VariablesMutationUpdateHashtag.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationUpdateHashtagFromJson(json);

  final InputUpdateHashtagInput hashtagInput;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationUpdateHashtagToJson(this);
  int get hashCode {
    final l$hashtagInput = hashtagInput;
    return Object.hashAll([l$hashtagInput]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtagInput = hashtagInput;
    final lOther$hashtagInput = other.hashtagInput;
    if (l$hashtagInput != lOther$hashtagInput) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateHashtag extends JsonSerializable {
  MutationUpdateHashtag({this.updateHashtag, required this.$__typename});

  @override
  factory MutationUpdateHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateHashtagFromJson(json);

  final MutationUpdateHashtag$updateHashtag? updateHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateHashtagToJson(this);
  int get hashCode {
    final l$updateHashtag = updateHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateHashtag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateHashtag) || runtimeType != other.runtimeType)
      return false;
    final l$updateHashtag = updateHashtag;
    final lOther$updateHashtag = other.updateHashtag;
    if (l$updateHashtag != lOther$updateHashtag) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationUpdateHashtag _parserFnMutationUpdateHashtag(
        Map<String, dynamic> data) =>
    MutationUpdateHashtag.fromJson(data);
typedef OnMutationCompletedMutationUpdateHashtag = FutureOr<void> Function(
    dynamic, MutationUpdateHashtag?);

class OptionsMutationUpdateHashtag
    extends graphql.MutationOptions<MutationUpdateHashtag> {
  OptionsMutationUpdateHashtag(
      {String? operationName,
      required VariablesMutationUpdateHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateHashtag? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationUpdateHashtag(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_HASHTAG,
            parserFn: _parserFnMutationUpdateHashtag);

  final OnMutationCompletedMutationUpdateHashtag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateHashtag
    extends graphql.WatchQueryOptions<MutationUpdateHashtag> {
  WatchOptionsMutationUpdateHashtag(
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
            parserFn: _parserFnMutationUpdateHashtag);
}

extension ClientExtensionMutationUpdateHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateHashtag>> mutateUpdateHashtag(
          OptionsMutationUpdateHashtag options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateHashtag> watchMutationUpdateHashtag(
          WatchOptionsMutationUpdateHashtag options) =>
      this.watchMutation(options);
}

class MutationUpdateHashtagHookResult {
  MutationUpdateHashtagHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdateHashtag runMutation;

  final graphql.QueryResult<MutationUpdateHashtag> result;
}

MutationUpdateHashtagHookResult useMutationUpdateHashtag(
    [WidgetOptionsMutationUpdateHashtag? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationUpdateHashtag());
  return MutationUpdateHashtagHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationUpdateHashtag> useWatchMutationUpdateHashtag(
        WatchOptionsMutationUpdateHashtag options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationUpdateHashtag
    extends graphql.MutationOptions<MutationUpdateHashtag> {
  WidgetOptionsMutationUpdateHashtag(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateHashtag? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationUpdateHashtag(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_HASHTAG,
            parserFn: _parserFnMutationUpdateHashtag);

  final OnMutationCompletedMutationUpdateHashtag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdateHashtag
    = graphql.MultiSourceResult<MutationUpdateHashtag>
        Function(VariablesMutationUpdateHashtag, {Object? optimisticResult});
typedef BuilderMutationUpdateHashtag = widgets.Widget Function(
    RunMutationMutationUpdateHashtag,
    graphql.QueryResult<MutationUpdateHashtag>?);

class MutationUpdateHashtagWidget
    extends graphql_flutter.Mutation<MutationUpdateHashtag> {
  MutationUpdateHashtagWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdateHashtag? options,
      required BuilderMutationUpdateHashtag builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdateHashtag(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag extends JsonSerializable {
  MutationUpdateHashtag$updateHashtag(
      {this.hashtag, required this.$__typename});

  @override
  factory MutationUpdateHashtag$updateHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtagFromJson(json);

  final List<MutationUpdateHashtag$updateHashtag$hashtag?>? hashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtagToJson(this);
  int get hashCode {
    final l$hashtag = hashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hashtag == null ? null : Object.hashAll(l$hashtag.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateHashtag$updateHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != null && lOther$hashtag != null) {
      if (l$hashtag.length != lOther$hashtag.length) return false;
      for (int i = 0; i < l$hashtag.length; i++) {
        final l$hashtag$entry = l$hashtag[i];
        final lOther$hashtag$entry = lOther$hashtag[i];
        if (l$hashtag$entry != lOther$hashtag$entry) return false;
      }
    } else if (l$hashtag != lOther$hashtag) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateHashtag$updateHashtag$hashtag extends JsonSerializable
    implements FragmentHashtagFragmentData {
  MutationUpdateHashtag$updateHashtag$hashtag(
      {required this.id,
      required this.name,
      this.iconName,
      this.blessed,
      this.hashtagVariants,
      required this.$__typename});

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

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtagToJson(this);
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
    if (!(other is MutationUpdateHashtag$updateHashtag$hashtag) ||
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
class MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants,
        FragmentHashtagVariantFragmentData {
  MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants(
      {required this.id,
      required this.variant,
      this.skillsAggregate,
      this.requestsAggregate,
      required this.$__typename});

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

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariantsToJson(this);
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
    if (!(other
            is MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants) ||
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
class MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$skillsAggregate,
        FragmentHashtagVariantFragmentData$skillsAggregate {
  MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate(
      {this.count, required this.$__typename});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregateToJson(
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
            is MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate) ||
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
class MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate
    extends JsonSerializable
    implements
        FragmentHashtagFragmentData$hashtagVariants$requestsAggregate,
        FragmentHashtagVariantFragmentData$requestsAggregate {
  MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate(
      {this.count, required this.$__typename});

  @override
  factory MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregateFromJson(
          json);

  final int? count;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregateToJson(
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
            is MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate) ||
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
class VariablesMutationDeleteHashtag extends JsonSerializable {
  VariablesMutationDeleteHashtag({required this.hashtagFilter});

  @override
  factory VariablesMutationDeleteHashtag.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationDeleteHashtagFromJson(json);

  final InputHashtagFilter hashtagFilter;

  @override
  Map<String, dynamic> toJson() => _$VariablesMutationDeleteHashtagToJson(this);
  int get hashCode {
    final l$hashtagFilter = hashtagFilter;
    return Object.hashAll([l$hashtagFilter]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationDeleteHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtagFilter = hashtagFilter;
    final lOther$hashtagFilter = other.hashtagFilter;
    if (l$hashtagFilter != lOther$hashtagFilter) return false;
    return true;
  }
}

@JsonSerializable()
class MutationDeleteHashtag extends JsonSerializable {
  MutationDeleteHashtag({this.deleteHashtag, required this.$__typename});

  @override
  factory MutationDeleteHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteHashtagFromJson(json);

  final MutationDeleteHashtag$deleteHashtag? deleteHashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationDeleteHashtagToJson(this);
  int get hashCode {
    final l$deleteHashtag = deleteHashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteHashtag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteHashtag) || runtimeType != other.runtimeType)
      return false;
    final l$deleteHashtag = deleteHashtag;
    final lOther$deleteHashtag = other.deleteHashtag;
    if (l$deleteHashtag != lOther$deleteHashtag) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationDeleteHashtag _parserFnMutationDeleteHashtag(
        Map<String, dynamic> data) =>
    MutationDeleteHashtag.fromJson(data);
typedef OnMutationCompletedMutationDeleteHashtag = FutureOr<void> Function(
    dynamic, MutationDeleteHashtag?);

class OptionsMutationDeleteHashtag
    extends graphql.MutationOptions<MutationDeleteHashtag> {
  OptionsMutationDeleteHashtag(
      {String? operationName,
      required VariablesMutationDeleteHashtag variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteHashtag? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationDeleteHashtag(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG,
            parserFn: _parserFnMutationDeleteHashtag);

  final OnMutationCompletedMutationDeleteHashtag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationDeleteHashtag
    extends graphql.WatchQueryOptions<MutationDeleteHashtag> {
  WatchOptionsMutationDeleteHashtag(
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
            parserFn: _parserFnMutationDeleteHashtag);
}

extension ClientExtensionMutationDeleteHashtag on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationDeleteHashtag>> mutateDeleteHashtag(
          OptionsMutationDeleteHashtag options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationDeleteHashtag> watchMutationDeleteHashtag(
          WatchOptionsMutationDeleteHashtag options) =>
      this.watchMutation(options);
}

class MutationDeleteHashtagHookResult {
  MutationDeleteHashtagHookResult(this.runMutation, this.result);

  final RunMutationMutationDeleteHashtag runMutation;

  final graphql.QueryResult<MutationDeleteHashtag> result;
}

MutationDeleteHashtagHookResult useMutationDeleteHashtag(
    [WidgetOptionsMutationDeleteHashtag? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationDeleteHashtag());
  return MutationDeleteHashtagHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationDeleteHashtag> useWatchMutationDeleteHashtag(
        WatchOptionsMutationDeleteHashtag options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationDeleteHashtag
    extends graphql.MutationOptions<MutationDeleteHashtag> {
  WidgetOptionsMutationDeleteHashtag(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteHashtag? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationDeleteHashtag(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG,
            parserFn: _parserFnMutationDeleteHashtag);

  final OnMutationCompletedMutationDeleteHashtag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationDeleteHashtag
    = graphql.MultiSourceResult<MutationDeleteHashtag>
        Function(VariablesMutationDeleteHashtag, {Object? optimisticResult});
typedef BuilderMutationDeleteHashtag = widgets.Widget Function(
    RunMutationMutationDeleteHashtag,
    graphql.QueryResult<MutationDeleteHashtag>?);

class MutationDeleteHashtagWidget
    extends graphql_flutter.Mutation<MutationDeleteHashtag> {
  MutationDeleteHashtagWidget(
      {widgets.Key? key,
      WidgetOptionsMutationDeleteHashtag? options,
      required BuilderMutationDeleteHashtag builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationDeleteHashtag(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationDeleteHashtag$deleteHashtag extends JsonSerializable {
  MutationDeleteHashtag$deleteHashtag(
      {this.msg, this.numUids, this.hashtag, required this.$__typename});

  @override
  factory MutationDeleteHashtag$deleteHashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtag$deleteHashtagFromJson(json);

  final String? msg;

  final int? numUids;

  final List<MutationDeleteHashtag$deleteHashtag$hashtag?>? hashtag;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtag$deleteHashtagToJson(this);
  int get hashCode {
    final l$msg = msg;
    final l$numUids = numUids;
    final l$hashtag = hashtag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$msg,
      l$numUids,
      l$hashtag == null ? null : Object.hashAll(l$hashtag.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteHashtag$deleteHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$msg = msg;
    final lOther$msg = other.msg;
    if (l$msg != lOther$msg) return false;
    final l$numUids = numUids;
    final lOther$numUids = other.numUids;
    if (l$numUids != lOther$numUids) return false;
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != null && lOther$hashtag != null) {
      if (l$hashtag.length != lOther$hashtag.length) return false;
      for (int i = 0; i < l$hashtag.length; i++) {
        final l$hashtag$entry = l$hashtag[i];
        final lOther$hashtag$entry = lOther$hashtag[i];
        if (l$hashtag$entry != lOther$hashtag$entry) return false;
      }
    } else if (l$hashtag != lOther$hashtag) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationDeleteHashtag$deleteHashtag$hashtag extends JsonSerializable {
  MutationDeleteHashtag$deleteHashtag$hashtag(
      {this.hashtagVariants, required this.$__typename});

  @override
  factory MutationDeleteHashtag$deleteHashtag$hashtag.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtag$deleteHashtag$hashtagFromJson(json);

  final List<MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants?>?
      hashtagVariants;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtag$deleteHashtag$hashtagToJson(this);
  int get hashCode {
    final l$hashtagVariants = hashtagVariants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hashtagVariants == null
          ? null
          : Object.hashAll(l$hashtagVariants.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteHashtag$deleteHashtag$hashtag) ||
        runtimeType != other.runtimeType) return false;
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
class MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants
    extends JsonSerializable {
  MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants(
      {required this.id, required this.$__typename});

  @override
  factory MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariantsFromJson(
          json);

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$hashtagVariantFilter = hashtagVariantFilter;
    return Object.hashAll([l$hashtagVariantFilter]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationDeleteHashtagVariant) ||
        runtimeType != other.runtimeType) return false;
    final l$hashtagVariantFilter = hashtagVariantFilter;
    final lOther$hashtagVariantFilter = other.hashtagVariantFilter;
    if (l$hashtagVariantFilter != lOther$hashtagVariantFilter) return false;
    return true;
  }
}

@JsonSerializable()
class MutationDeleteHashtagVariant extends JsonSerializable {
  MutationDeleteHashtagVariant(
      {this.deleteHashtagVariant, required this.$__typename});

  @override
  factory MutationDeleteHashtagVariant.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteHashtagVariantFromJson(json);

  final MutationDeleteHashtagVariant$deleteHashtagVariant? deleteHashtagVariant;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationDeleteHashtagVariantToJson(this);
  int get hashCode {
    final l$deleteHashtagVariant = deleteHashtagVariant;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteHashtagVariant, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteHashtagVariant) ||
        runtimeType != other.runtimeType) return false;
    final l$deleteHashtagVariant = deleteHashtagVariant;
    final lOther$deleteHashtagVariant = other.deleteHashtagVariant;
    if (l$deleteHashtagVariant != lOther$deleteHashtagVariant) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationDeleteHashtagVariant _parserFnMutationDeleteHashtagVariant(
        Map<String, dynamic> data) =>
    MutationDeleteHashtagVariant.fromJson(data);
typedef OnMutationCompletedMutationDeleteHashtagVariant = FutureOr<void>
    Function(dynamic, MutationDeleteHashtagVariant?);

class OptionsMutationDeleteHashtagVariant
    extends graphql.MutationOptions<MutationDeleteHashtagVariant> {
  OptionsMutationDeleteHashtagVariant(
      {String? operationName,
      required VariablesMutationDeleteHashtagVariant variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteHashtagVariant? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationDeleteHashtagVariant(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG_VARIANT,
            parserFn: _parserFnMutationDeleteHashtagVariant);

  final OnMutationCompletedMutationDeleteHashtagVariant? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationDeleteHashtagVariant
    extends graphql.WatchQueryOptions<MutationDeleteHashtagVariant> {
  WatchOptionsMutationDeleteHashtagVariant(
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
            parserFn: _parserFnMutationDeleteHashtagVariant);
}

extension ClientExtensionMutationDeleteHashtagVariant on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationDeleteHashtagVariant>>
      mutateDeleteHashtagVariant(
              OptionsMutationDeleteHashtagVariant options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationDeleteHashtagVariant>
      watchMutationDeleteHashtagVariant(
              WatchOptionsMutationDeleteHashtagVariant options) =>
          this.watchMutation(options);
}

class MutationDeleteHashtagVariantHookResult {
  MutationDeleteHashtagVariantHookResult(this.runMutation, this.result);

  final RunMutationMutationDeleteHashtagVariant runMutation;

  final graphql.QueryResult<MutationDeleteHashtagVariant> result;
}

MutationDeleteHashtagVariantHookResult useMutationDeleteHashtagVariant(
    [WidgetOptionsMutationDeleteHashtagVariant? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationDeleteHashtagVariant());
  return MutationDeleteHashtagVariantHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationDeleteHashtagVariant>
    useWatchMutationDeleteHashtagVariant(
            WatchOptionsMutationDeleteHashtagVariant options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationDeleteHashtagVariant
    extends graphql.MutationOptions<MutationDeleteHashtagVariant> {
  WidgetOptionsMutationDeleteHashtagVariant(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteHashtagVariant? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationDeleteHashtagVariant(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_HASHTAG_VARIANT,
            parserFn: _parserFnMutationDeleteHashtagVariant);

  final OnMutationCompletedMutationDeleteHashtagVariant? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationDeleteHashtagVariant = graphql
        .MultiSourceResult<MutationDeleteHashtagVariant>
    Function(VariablesMutationDeleteHashtagVariant, {Object? optimisticResult});
typedef BuilderMutationDeleteHashtagVariant = widgets.Widget Function(
    RunMutationMutationDeleteHashtagVariant,
    graphql.QueryResult<MutationDeleteHashtagVariant>?);

class MutationDeleteHashtagVariantWidget
    extends graphql_flutter.Mutation<MutationDeleteHashtagVariant> {
  MutationDeleteHashtagVariantWidget(
      {widgets.Key? key,
      WidgetOptionsMutationDeleteHashtagVariant? options,
      required BuilderMutationDeleteHashtagVariant builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationDeleteHashtagVariant(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationDeleteHashtagVariant$deleteHashtagVariant
    extends JsonSerializable {
  MutationDeleteHashtagVariant$deleteHashtagVariant(
      {this.msg, this.numUids, required this.$__typename});

  @override
  factory MutationDeleteHashtagVariant$deleteHashtagVariant.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteHashtagVariant$deleteHashtagVariantFromJson(json);

  final String? msg;

  final int? numUids;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteHashtagVariant$deleteHashtagVariantToJson(this);
  int get hashCode {
    final l$msg = msg;
    final l$numUids = numUids;
    final l$$__typename = $__typename;
    return Object.hashAll([l$msg, l$numUids, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteHashtagVariant$deleteHashtagVariant) ||
        runtimeType != other.runtimeType) return false;
    final l$msg = msg;
    final lOther$msg = other.msg;
    if (l$msg != lOther$msg) return false;
    final l$numUids = numUids;
    final lOther$numUids = other.numUids;
    if (l$numUids != lOther$numUids) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$addHashtagInputList = addHashtagInputList;
    final l$addSkillInput = addSkillInput;
    return Object.hashAll(
        [Object.hashAll(l$addHashtagInputList.map((v) => v)), l$addSkillInput]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationCreateSkill) ||
        runtimeType != other.runtimeType) return false;
    final l$addHashtagInputList = addHashtagInputList;
    final lOther$addHashtagInputList = other.addHashtagInputList;
    if (l$addHashtagInputList.length != lOther$addHashtagInputList.length)
      return false;
    for (int i = 0; i < l$addHashtagInputList.length; i++) {
      final l$addHashtagInputList$entry = l$addHashtagInputList[i];
      final lOther$addHashtagInputList$entry = lOther$addHashtagInputList[i];
      if (l$addHashtagInputList$entry != lOther$addHashtagInputList$entry)
        return false;
    }

    final l$addSkillInput = addSkillInput;
    final lOther$addSkillInput = other.addSkillInput;
    if (l$addSkillInput != lOther$addSkillInput) return false;
    return true;
  }
}

@JsonSerializable()
class MutationCreateSkill extends JsonSerializable {
  MutationCreateSkill(
      {this.addHashtag, this.addSkill, required this.$__typename});

  @override
  factory MutationCreateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateSkillFromJson(json);

  final MutationCreateSkill$addHashtag? addHashtag;

  final MutationCreateSkill$addSkill? addSkill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateSkillToJson(this);
  int get hashCode {
    final l$addHashtag = addHashtag;
    final l$addSkill = addSkill;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addHashtag, l$addSkill, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateSkill) || runtimeType != other.runtimeType)
      return false;
    final l$addHashtag = addHashtag;
    final lOther$addHashtag = other.addHashtag;
    if (l$addHashtag != lOther$addHashtag) return false;
    final l$addSkill = addSkill;
    final lOther$addSkill = other.addSkill;
    if (l$addSkill != lOther$addSkill) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationCreateSkill _parserFnMutationCreateSkill(Map<String, dynamic> data) =>
    MutationCreateSkill.fromJson(data);
typedef OnMutationCompletedMutationCreateSkill = FutureOr<void> Function(
    dynamic, MutationCreateSkill?);

class OptionsMutationCreateSkill
    extends graphql.MutationOptions<MutationCreateSkill> {
  OptionsMutationCreateSkill(
      {String? operationName,
      required VariablesMutationCreateSkill variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateSkill? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationCreateSkill(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_SKILL,
            parserFn: _parserFnMutationCreateSkill);

  final OnMutationCompletedMutationCreateSkill? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationCreateSkill
    extends graphql.WatchQueryOptions<MutationCreateSkill> {
  WatchOptionsMutationCreateSkill(
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
            parserFn: _parserFnMutationCreateSkill);
}

extension ClientExtensionMutationCreateSkill on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateSkill>> mutateCreateSkill(
          OptionsMutationCreateSkill options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateSkill> watchMutationCreateSkill(
          WatchOptionsMutationCreateSkill options) =>
      this.watchMutation(options);
}

class MutationCreateSkillHookResult {
  MutationCreateSkillHookResult(this.runMutation, this.result);

  final RunMutationMutationCreateSkill runMutation;

  final graphql.QueryResult<MutationCreateSkill> result;
}

MutationCreateSkillHookResult useMutationCreateSkill(
    [WidgetOptionsMutationCreateSkill? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationCreateSkill());
  return MutationCreateSkillHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationCreateSkill> useWatchMutationCreateSkill(
        WatchOptionsMutationCreateSkill options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationCreateSkill
    extends graphql.MutationOptions<MutationCreateSkill> {
  WidgetOptionsMutationCreateSkill(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateSkill? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationCreateSkill(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_SKILL,
            parserFn: _parserFnMutationCreateSkill);

  final OnMutationCompletedMutationCreateSkill? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationCreateSkill
    = graphql.MultiSourceResult<MutationCreateSkill>
        Function(VariablesMutationCreateSkill, {Object? optimisticResult});
typedef BuilderMutationCreateSkill = widgets.Widget Function(
    RunMutationMutationCreateSkill, graphql.QueryResult<MutationCreateSkill>?);

class MutationCreateSkillWidget
    extends graphql_flutter.Mutation<MutationCreateSkill> {
  MutationCreateSkillWidget(
      {widgets.Key? key,
      WidgetOptionsMutationCreateSkill? options,
      required BuilderMutationCreateSkill builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationCreateSkill(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationCreateSkill$addHashtag extends JsonSerializable {
  MutationCreateSkill$addHashtag({this.numUids, required this.$__typename});

  @override
  factory MutationCreateSkill$addHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateSkill$addHashtagFromJson(json);

  final int? numUids;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateSkill$addHashtagToJson(this);
  int get hashCode {
    final l$numUids = numUids;
    final l$$__typename = $__typename;
    return Object.hashAll([l$numUids, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateSkill$addHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$numUids = numUids;
    final lOther$numUids = other.numUids;
    if (l$numUids != lOther$numUids) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationCreateSkill$addSkill extends JsonSerializable {
  MutationCreateSkill$addSkill({this.skill, required this.$__typename});

  @override
  factory MutationCreateSkill$addSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateSkill$addSkillFromJson(json);

  final List<MutationCreateSkill$addSkill$skill?>? skill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateSkill$addSkillToJson(this);
  int get hashCode {
    final l$skill = skill;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skill == null ? null : Object.hashAll(l$skill.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateSkill$addSkill) ||
        runtimeType != other.runtimeType) return false;
    final l$skill = skill;
    final lOther$skill = other.skill;
    if (l$skill != null && lOther$skill != null) {
      if (l$skill.length != lOther$skill.length) return false;
      for (int i = 0; i < l$skill.length; i++) {
        final l$skill$entry = l$skill[i];
        final lOther$skill$entry = lOther$skill[i];
        if (l$skill$entry != lOther$skill$entry) return false;
      }
    } else if (l$skill != lOther$skill) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationCreateSkill$addSkill$skill extends JsonSerializable {
  MutationCreateSkill$addSkill$skill(
      {required this.id, required this.$__typename});

  @override
  factory MutationCreateSkill$addSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateSkill$addSkill$skillFromJson(json);

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateSkill$addSkill$skillToJson(this);
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateSkill$addSkill$skill) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$skillId = skillId;
    final l$addHashtagInputList = addHashtagInputList;
    final l$title = title;
    final l$message = message;
    final l$isAvailable = isAvailable;
    final l$hashtagsToSave = hashtagsToSave;
    final l$hashtagsToDelete = hashtagsToDelete;
    return Object.hashAll([
      l$skillId,
      Object.hashAll(l$addHashtagInputList.map((v) => v)),
      l$title,
      l$message,
      l$isAvailable,
      Object.hashAll(l$hashtagsToSave.map((v) => v)),
      Object.hashAll(l$hashtagsToDelete.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateSkill) ||
        runtimeType != other.runtimeType) return false;
    final l$skillId = skillId;
    final lOther$skillId = other.skillId;
    if (l$skillId != lOther$skillId) return false;
    final l$addHashtagInputList = addHashtagInputList;
    final lOther$addHashtagInputList = other.addHashtagInputList;
    if (l$addHashtagInputList.length != lOther$addHashtagInputList.length)
      return false;
    for (int i = 0; i < l$addHashtagInputList.length; i++) {
      final l$addHashtagInputList$entry = l$addHashtagInputList[i];
      final lOther$addHashtagInputList$entry = lOther$addHashtagInputList[i];
      if (l$addHashtagInputList$entry != lOther$addHashtagInputList$entry)
        return false;
    }

    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) return false;
    final l$hashtagsToSave = hashtagsToSave;
    final lOther$hashtagsToSave = other.hashtagsToSave;
    if (l$hashtagsToSave.length != lOther$hashtagsToSave.length) return false;
    for (int i = 0; i < l$hashtagsToSave.length; i++) {
      final l$hashtagsToSave$entry = l$hashtagsToSave[i];
      final lOther$hashtagsToSave$entry = lOther$hashtagsToSave[i];
      if (l$hashtagsToSave$entry != lOther$hashtagsToSave$entry) return false;
    }

    final l$hashtagsToDelete = hashtagsToDelete;
    final lOther$hashtagsToDelete = other.hashtagsToDelete;
    if (l$hashtagsToDelete.length != lOther$hashtagsToDelete.length)
      return false;
    for (int i = 0; i < l$hashtagsToDelete.length; i++) {
      final l$hashtagsToDelete$entry = l$hashtagsToDelete[i];
      final lOther$hashtagsToDelete$entry = lOther$hashtagsToDelete[i];
      if (l$hashtagsToDelete$entry != lOther$hashtagsToDelete$entry)
        return false;
    }

    return true;
  }
}

@JsonSerializable()
class MutationUpdateSkill extends JsonSerializable {
  MutationUpdateSkill(
      {this.addHashtag, this.updateSkill, required this.$__typename});

  @override
  factory MutationUpdateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkillFromJson(json);

  final MutationUpdateSkill$addHashtag? addHashtag;

  final MutationUpdateSkill$updateSkill? updateSkill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSkillToJson(this);
  int get hashCode {
    final l$addHashtag = addHashtag;
    final l$updateSkill = updateSkill;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addHashtag, l$updateSkill, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSkill) || runtimeType != other.runtimeType)
      return false;
    final l$addHashtag = addHashtag;
    final lOther$addHashtag = other.addHashtag;
    if (l$addHashtag != lOther$addHashtag) return false;
    final l$updateSkill = updateSkill;
    final lOther$updateSkill = other.updateSkill;
    if (l$updateSkill != lOther$updateSkill) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationUpdateSkill _parserFnMutationUpdateSkill(Map<String, dynamic> data) =>
    MutationUpdateSkill.fromJson(data);
typedef OnMutationCompletedMutationUpdateSkill = FutureOr<void> Function(
    dynamic, MutationUpdateSkill?);

class OptionsMutationUpdateSkill
    extends graphql.MutationOptions<MutationUpdateSkill> {
  OptionsMutationUpdateSkill(
      {String? operationName,
      required VariablesMutationUpdateSkill variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSkill? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationUpdateSkill(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL,
            parserFn: _parserFnMutationUpdateSkill);

  final OnMutationCompletedMutationUpdateSkill? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSkill
    extends graphql.WatchQueryOptions<MutationUpdateSkill> {
  WatchOptionsMutationUpdateSkill(
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
            parserFn: _parserFnMutationUpdateSkill);
}

extension ClientExtensionMutationUpdateSkill on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSkill>> mutateUpdateSkill(
          OptionsMutationUpdateSkill options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateSkill> watchMutationUpdateSkill(
          WatchOptionsMutationUpdateSkill options) =>
      this.watchMutation(options);
}

class MutationUpdateSkillHookResult {
  MutationUpdateSkillHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdateSkill runMutation;

  final graphql.QueryResult<MutationUpdateSkill> result;
}

MutationUpdateSkillHookResult useMutationUpdateSkill(
    [WidgetOptionsMutationUpdateSkill? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationUpdateSkill());
  return MutationUpdateSkillHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationUpdateSkill> useWatchMutationUpdateSkill(
        WatchOptionsMutationUpdateSkill options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationUpdateSkill
    extends graphql.MutationOptions<MutationUpdateSkill> {
  WidgetOptionsMutationUpdateSkill(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSkill? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationUpdateSkill(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL,
            parserFn: _parserFnMutationUpdateSkill);

  final OnMutationCompletedMutationUpdateSkill? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdateSkill
    = graphql.MultiSourceResult<MutationUpdateSkill>
        Function(VariablesMutationUpdateSkill, {Object? optimisticResult});
typedef BuilderMutationUpdateSkill = widgets.Widget Function(
    RunMutationMutationUpdateSkill, graphql.QueryResult<MutationUpdateSkill>?);

class MutationUpdateSkillWidget
    extends graphql_flutter.Mutation<MutationUpdateSkill> {
  MutationUpdateSkillWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdateSkill? options,
      required BuilderMutationUpdateSkill builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdateSkill(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateSkill$addHashtag extends JsonSerializable {
  MutationUpdateSkill$addHashtag({this.numUids, required this.$__typename});

  @override
  factory MutationUpdateSkill$addHashtag.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkill$addHashtagFromJson(json);

  final int? numUids;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSkill$addHashtagToJson(this);
  int get hashCode {
    final l$numUids = numUids;
    final l$$__typename = $__typename;
    return Object.hashAll([l$numUids, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSkill$addHashtag) ||
        runtimeType != other.runtimeType) return false;
    final l$numUids = numUids;
    final lOther$numUids = other.numUids;
    if (l$numUids != lOther$numUids) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateSkill$updateSkill extends JsonSerializable {
  MutationUpdateSkill$updateSkill({this.skill, required this.$__typename});

  @override
  factory MutationUpdateSkill$updateSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkill$updateSkillFromJson(json);

  final List<MutationUpdateSkill$updateSkill$skill?>? skill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkill$updateSkillToJson(this);
  int get hashCode {
    final l$skill = skill;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skill == null ? null : Object.hashAll(l$skill.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSkill$updateSkill) ||
        runtimeType != other.runtimeType) return false;
    final l$skill = skill;
    final lOther$skill = other.skill;
    if (l$skill != null && lOther$skill != null) {
      if (l$skill.length != lOther$skill.length) return false;
      for (int i = 0; i < l$skill.length; i++) {
        final l$skill$entry = l$skill[i];
        final lOther$skill$entry = lOther$skill[i];
        if (l$skill$entry != lOther$skill$entry) return false;
      }
    } else if (l$skill != lOther$skill) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateSkill$updateSkill$skill extends JsonSerializable {
  MutationUpdateSkill$updateSkill$skill(
      {required this.id, required this.$__typename});

  @override
  factory MutationUpdateSkill$updateSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateSkill$updateSkill$skillFromJson(json);

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkill$updateSkill$skillToJson(this);
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSkill$updateSkill$skill) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$skillId = skillId;
    final l$isAvailable = isAvailable;
    return Object.hashAll([l$skillId, l$isAvailable]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationUpdateSkillAvailable) ||
        runtimeType != other.runtimeType) return false;
    final l$skillId = skillId;
    final lOther$skillId = other.skillId;
    if (l$skillId != lOther$skillId) return false;
    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateSkillAvailable extends JsonSerializable {
  MutationUpdateSkillAvailable({this.updateSkill, required this.$__typename});

  @override
  factory MutationUpdateSkillAvailable.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSkillAvailableFromJson(json);

  final MutationUpdateSkillAvailable$updateSkill? updateSkill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSkillAvailableToJson(this);
  int get hashCode {
    final l$updateSkill = updateSkill;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateSkill, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSkillAvailable) ||
        runtimeType != other.runtimeType) return false;
    final l$updateSkill = updateSkill;
    final lOther$updateSkill = other.updateSkill;
    if (l$updateSkill != lOther$updateSkill) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationUpdateSkillAvailable _parserFnMutationUpdateSkillAvailable(
        Map<String, dynamic> data) =>
    MutationUpdateSkillAvailable.fromJson(data);
typedef OnMutationCompletedMutationUpdateSkillAvailable = FutureOr<void>
    Function(dynamic, MutationUpdateSkillAvailable?);

class OptionsMutationUpdateSkillAvailable
    extends graphql.MutationOptions<MutationUpdateSkillAvailable> {
  OptionsMutationUpdateSkillAvailable(
      {String? operationName,
      required VariablesMutationUpdateSkillAvailable variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSkillAvailable? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationUpdateSkillAvailable(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL_AVAILABLE,
            parserFn: _parserFnMutationUpdateSkillAvailable);

  final OnMutationCompletedMutationUpdateSkillAvailable? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationUpdateSkillAvailable
    extends graphql.WatchQueryOptions<MutationUpdateSkillAvailable> {
  WatchOptionsMutationUpdateSkillAvailable(
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
            parserFn: _parserFnMutationUpdateSkillAvailable);
}

extension ClientExtensionMutationUpdateSkillAvailable on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSkillAvailable>>
      mutateUpdateSkillAvailable(
              OptionsMutationUpdateSkillAvailable options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationUpdateSkillAvailable>
      watchMutationUpdateSkillAvailable(
              WatchOptionsMutationUpdateSkillAvailable options) =>
          this.watchMutation(options);
}

class MutationUpdateSkillAvailableHookResult {
  MutationUpdateSkillAvailableHookResult(this.runMutation, this.result);

  final RunMutationMutationUpdateSkillAvailable runMutation;

  final graphql.QueryResult<MutationUpdateSkillAvailable> result;
}

MutationUpdateSkillAvailableHookResult useMutationUpdateSkillAvailable(
    [WidgetOptionsMutationUpdateSkillAvailable? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationUpdateSkillAvailable());
  return MutationUpdateSkillAvailableHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationUpdateSkillAvailable>
    useWatchMutationUpdateSkillAvailable(
            WatchOptionsMutationUpdateSkillAvailable options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationUpdateSkillAvailable
    extends graphql.MutationOptions<MutationUpdateSkillAvailable> {
  WidgetOptionsMutationUpdateSkillAvailable(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationUpdateSkillAvailable? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationUpdateSkillAvailable(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_SKILL_AVAILABLE,
            parserFn: _parserFnMutationUpdateSkillAvailable);

  final OnMutationCompletedMutationUpdateSkillAvailable? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationUpdateSkillAvailable = graphql
        .MultiSourceResult<MutationUpdateSkillAvailable>
    Function(VariablesMutationUpdateSkillAvailable, {Object? optimisticResult});
typedef BuilderMutationUpdateSkillAvailable = widgets.Widget Function(
    RunMutationMutationUpdateSkillAvailable,
    graphql.QueryResult<MutationUpdateSkillAvailable>?);

class MutationUpdateSkillAvailableWidget
    extends graphql_flutter.Mutation<MutationUpdateSkillAvailable> {
  MutationUpdateSkillAvailableWidget(
      {widgets.Key? key,
      WidgetOptionsMutationUpdateSkillAvailable? options,
      required BuilderMutationUpdateSkillAvailable builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationUpdateSkillAvailable(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationUpdateSkillAvailable$updateSkill extends JsonSerializable {
  MutationUpdateSkillAvailable$updateSkill(
      {this.skill, required this.$__typename});

  @override
  factory MutationUpdateSkillAvailable$updateSkill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateSkillAvailable$updateSkillFromJson(json);

  final List<MutationUpdateSkillAvailable$updateSkill$skill?>? skill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkillAvailable$updateSkillToJson(this);
  int get hashCode {
    final l$skill = skill;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skill == null ? null : Object.hashAll(l$skill.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSkillAvailable$updateSkill) ||
        runtimeType != other.runtimeType) return false;
    final l$skill = skill;
    final lOther$skill = other.skill;
    if (l$skill != null && lOther$skill != null) {
      if (l$skill.length != lOther$skill.length) return false;
      for (int i = 0; i < l$skill.length; i++) {
        final l$skill$entry = l$skill[i];
        final lOther$skill$entry = lOther$skill[i];
        if (l$skill$entry != lOther$skill$entry) return false;
      }
    } else if (l$skill != lOther$skill) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationUpdateSkillAvailable$updateSkill$skill extends JsonSerializable {
  MutationUpdateSkillAvailable$updateSkill$skill(
      {this.isAvailable, required this.$__typename});

  @override
  factory MutationUpdateSkillAvailable$updateSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationUpdateSkillAvailable$updateSkill$skillFromJson(json);

  final bool? isAvailable;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationUpdateSkillAvailable$updateSkill$skillToJson(this);
  int get hashCode {
    final l$isAvailable = isAvailable;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isAvailable, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationUpdateSkillAvailable$updateSkill$skill) ||
        runtimeType != other.runtimeType) return false;
    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
  int get hashCode {
    final l$skillId = skillId;
    return Object.hashAll([l$skillId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationRemoveSkill) ||
        runtimeType != other.runtimeType) return false;
    final l$skillId = skillId;
    final lOther$skillId = other.skillId;
    if (l$skillId != lOther$skillId) return false;
    return true;
  }
}

@JsonSerializable()
class MutationRemoveSkill extends JsonSerializable {
  MutationRemoveSkill({this.deleteSkill, required this.$__typename});

  @override
  factory MutationRemoveSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationRemoveSkillFromJson(json);

  final MutationRemoveSkill$deleteSkill? deleteSkill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationRemoveSkillToJson(this);
  int get hashCode {
    final l$deleteSkill = deleteSkill;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteSkill, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationRemoveSkill) || runtimeType != other.runtimeType)
      return false;
    final l$deleteSkill = deleteSkill;
    final lOther$deleteSkill = other.deleteSkill;
    if (l$deleteSkill != lOther$deleteSkill) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
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
MutationRemoveSkill _parserFnMutationRemoveSkill(Map<String, dynamic> data) =>
    MutationRemoveSkill.fromJson(data);
typedef OnMutationCompletedMutationRemoveSkill = FutureOr<void> Function(
    dynamic, MutationRemoveSkill?);

class OptionsMutationRemoveSkill
    extends graphql.MutationOptions<MutationRemoveSkill> {
  OptionsMutationRemoveSkill(
      {String? operationName,
      required VariablesMutationRemoveSkill variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationRemoveSkill? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFnMutationRemoveSkill(data)),
            update: update,
            onError: onError,
            document: MUTATION_REMOVE_SKILL,
            parserFn: _parserFnMutationRemoveSkill);

  final OnMutationCompletedMutationRemoveSkill? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationRemoveSkill
    extends graphql.WatchQueryOptions<MutationRemoveSkill> {
  WatchOptionsMutationRemoveSkill(
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
            parserFn: _parserFnMutationRemoveSkill);
}

extension ClientExtensionMutationRemoveSkill on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationRemoveSkill>> mutateRemoveSkill(
          OptionsMutationRemoveSkill options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationRemoveSkill> watchMutationRemoveSkill(
          WatchOptionsMutationRemoveSkill options) =>
      this.watchMutation(options);
}

class MutationRemoveSkillHookResult {
  MutationRemoveSkillHookResult(this.runMutation, this.result);

  final RunMutationMutationRemoveSkill runMutation;

  final graphql.QueryResult<MutationRemoveSkill> result;
}

MutationRemoveSkillHookResult useMutationRemoveSkill(
    [WidgetOptionsMutationRemoveSkill? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationRemoveSkill());
  return MutationRemoveSkillHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationRemoveSkill> useWatchMutationRemoveSkill(
        WatchOptionsMutationRemoveSkill options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationRemoveSkill
    extends graphql.MutationOptions<MutationRemoveSkill> {
  WidgetOptionsMutationRemoveSkill(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationRemoveSkill? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationRemoveSkill(data)),
            update: update,
            onError: onError,
            document: MUTATION_REMOVE_SKILL,
            parserFn: _parserFnMutationRemoveSkill);

  final OnMutationCompletedMutationRemoveSkill? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationRemoveSkill
    = graphql.MultiSourceResult<MutationRemoveSkill>
        Function(VariablesMutationRemoveSkill, {Object? optimisticResult});
typedef BuilderMutationRemoveSkill = widgets.Widget Function(
    RunMutationMutationRemoveSkill, graphql.QueryResult<MutationRemoveSkill>?);

class MutationRemoveSkillWidget
    extends graphql_flutter.Mutation<MutationRemoveSkill> {
  MutationRemoveSkillWidget(
      {widgets.Key? key,
      WidgetOptionsMutationRemoveSkill? options,
      required BuilderMutationRemoveSkill builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationRemoveSkill(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationRemoveSkill$deleteSkill extends JsonSerializable {
  MutationRemoveSkill$deleteSkill({this.skill, required this.$__typename});

  @override
  factory MutationRemoveSkill$deleteSkill.fromJson(Map<String, dynamic> json) =>
      _$MutationRemoveSkill$deleteSkillFromJson(json);

  final List<MutationRemoveSkill$deleteSkill$skill?>? skill;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationRemoveSkill$deleteSkillToJson(this);
  int get hashCode {
    final l$skill = skill;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skill == null ? null : Object.hashAll(l$skill.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationRemoveSkill$deleteSkill) ||
        runtimeType != other.runtimeType) return false;
    final l$skill = skill;
    final lOther$skill = other.skill;
    if (l$skill != null && lOther$skill != null) {
      if (l$skill.length != lOther$skill.length) return false;
      for (int i = 0; i < l$skill.length; i++) {
        final l$skill$entry = l$skill[i];
        final lOther$skill$entry = lOther$skill[i];
        if (l$skill$entry != lOther$skill$entry) return false;
      }
    } else if (l$skill != lOther$skill) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationRemoveSkill$deleteSkill$skill extends JsonSerializable {
  MutationRemoveSkill$deleteSkill$skill(
      {required this.id, required this.$__typename});

  @override
  factory MutationRemoveSkill$deleteSkill$skill.fromJson(
          Map<String, dynamic> json) =>
      _$MutationRemoveSkill$deleteSkill$skillFromJson(json);

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationRemoveSkill$deleteSkill$skillToJson(this);
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationRemoveSkill$deleteSkill$skill) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class VariablesMutationCreateTestGratitude extends JsonSerializable {
  VariablesMutationCreateTestGratitude({required this.info});

  @override
  factory VariablesMutationCreateTestGratitude.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesMutationCreateTestGratitudeFromJson(json);

  final List<InputAddGratitudeInput> info;

  @override
  Map<String, dynamic> toJson() =>
      _$VariablesMutationCreateTestGratitudeToJson(this);
  int get hashCode {
    final l$info = info;
    return Object.hashAll([Object.hashAll(l$info.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationCreateTestGratitude) ||
        runtimeType != other.runtimeType) return false;
    final l$info = info;
    final lOther$info = other.info;
    if (l$info.length != lOther$info.length) return false;
    for (int i = 0; i < l$info.length; i++) {
      final l$info$entry = l$info[i];
      final lOther$info$entry = lOther$info[i];
      if (l$info$entry != lOther$info$entry) return false;
    }

    return true;
  }
}

@JsonSerializable()
class MutationCreateTestGratitude extends JsonSerializable {
  MutationCreateTestGratitude({this.addGratitude, required this.$__typename});

  @override
  factory MutationCreateTestGratitude.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateTestGratitudeFromJson(json);

  final MutationCreateTestGratitude$addGratitude? addGratitude;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationCreateTestGratitudeToJson(this);
  int get hashCode {
    final l$addGratitude = addGratitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addGratitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateTestGratitude) ||
        runtimeType != other.runtimeType) return false;
    final l$addGratitude = addGratitude;
    final lOther$addGratitude = other.addGratitude;
    if (l$addGratitude != lOther$addGratitude) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const MUTATION_CREATE_TEST_GRATITUDE = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateTestGratitude'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'info')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'AddGratitudeInput'),
                    isNonNull: true),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addGratitude'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'info')))
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationCreateTestGratitude _parserFnMutationCreateTestGratitude(
        Map<String, dynamic> data) =>
    MutationCreateTestGratitude.fromJson(data);
typedef OnMutationCompletedMutationCreateTestGratitude = FutureOr<void>
    Function(dynamic, MutationCreateTestGratitude?);

class OptionsMutationCreateTestGratitude
    extends graphql.MutationOptions<MutationCreateTestGratitude> {
  OptionsMutationCreateTestGratitude(
      {String? operationName,
      required VariablesMutationCreateTestGratitude variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateTestGratitude? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationCreateTestGratitude(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_TEST_GRATITUDE,
            parserFn: _parserFnMutationCreateTestGratitude);

  final OnMutationCompletedMutationCreateTestGratitude? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationCreateTestGratitude
    extends graphql.WatchQueryOptions<MutationCreateTestGratitude> {
  WatchOptionsMutationCreateTestGratitude(
      {String? operationName,
      required VariablesMutationCreateTestGratitude variables,
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
            document: MUTATION_CREATE_TEST_GRATITUDE,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationCreateTestGratitude);
}

extension ClientExtensionMutationCreateTestGratitude on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateTestGratitude>>
      mutateCreateTestGratitude(
              OptionsMutationCreateTestGratitude options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationCreateTestGratitude>
      watchMutationCreateTestGratitude(
              WatchOptionsMutationCreateTestGratitude options) =>
          this.watchMutation(options);
}

class MutationCreateTestGratitudeHookResult {
  MutationCreateTestGratitudeHookResult(this.runMutation, this.result);

  final RunMutationMutationCreateTestGratitude runMutation;

  final graphql.QueryResult<MutationCreateTestGratitude> result;
}

MutationCreateTestGratitudeHookResult useMutationCreateTestGratitude(
    [WidgetOptionsMutationCreateTestGratitude? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationCreateTestGratitude());
  return MutationCreateTestGratitudeHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationCreateTestGratitude>
    useWatchMutationCreateTestGratitude(
            WatchOptionsMutationCreateTestGratitude options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationCreateTestGratitude
    extends graphql.MutationOptions<MutationCreateTestGratitude> {
  WidgetOptionsMutationCreateTestGratitude(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateTestGratitude? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationCreateTestGratitude(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_TEST_GRATITUDE,
            parserFn: _parserFnMutationCreateTestGratitude);

  final OnMutationCompletedMutationCreateTestGratitude? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationCreateTestGratitude = graphql
        .MultiSourceResult<MutationCreateTestGratitude>
    Function(VariablesMutationCreateTestGratitude, {Object? optimisticResult});
typedef BuilderMutationCreateTestGratitude = widgets.Widget Function(
    RunMutationMutationCreateTestGratitude,
    graphql.QueryResult<MutationCreateTestGratitude>?);

class MutationCreateTestGratitudeWidget
    extends graphql_flutter.Mutation<MutationCreateTestGratitude> {
  MutationCreateTestGratitudeWidget(
      {widgets.Key? key,
      WidgetOptionsMutationCreateTestGratitude? options,
      required BuilderMutationCreateTestGratitude builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationCreateTestGratitude(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationCreateTestGratitude$addGratitude extends JsonSerializable {
  MutationCreateTestGratitude$addGratitude(
      {this.numUids, required this.$__typename});

  @override
  factory MutationCreateTestGratitude$addGratitude.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateTestGratitude$addGratitudeFromJson(json);

  final int? numUids;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationCreateTestGratitude$addGratitudeToJson(this);
  int get hashCode {
    final l$numUids = numUids;
    final l$$__typename = $__typename;
    return Object.hashAll([l$numUids, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateTestGratitude$addGratitude) ||
        runtimeType != other.runtimeType) return false;
    final l$numUids = numUids;
    final lOther$numUids = other.numUids;
    if (l$numUids != lOther$numUids) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

@JsonSerializable()
class MutationDeleteTestGratitude extends JsonSerializable {
  MutationDeleteTestGratitude(
      {this.deleteGratitude, required this.$__typename});

  @override
  factory MutationDeleteTestGratitude.fromJson(Map<String, dynamic> json) =>
      _$MutationDeleteTestGratitudeFromJson(json);

  final MutationDeleteTestGratitude$deleteGratitude? deleteGratitude;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() => _$MutationDeleteTestGratitudeToJson(this);
  int get hashCode {
    final l$deleteGratitude = deleteGratitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteGratitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteTestGratitude) ||
        runtimeType != other.runtimeType) return false;
    final l$deleteGratitude = deleteGratitude;
    final lOther$deleteGratitude = other.deleteGratitude;
    if (l$deleteGratitude != lOther$deleteGratitude) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

const MUTATION_DELETE_TEST_GRATITUDE = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteTestGratitude'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteGratitude'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'isTest'),
                        value: BooleanValueNode(value: true))
                  ]))
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationDeleteTestGratitude _parserFnMutationDeleteTestGratitude(
        Map<String, dynamic> data) =>
    MutationDeleteTestGratitude.fromJson(data);
typedef OnMutationCompletedMutationDeleteTestGratitude = FutureOr<void>
    Function(dynamic, MutationDeleteTestGratitude?);

class OptionsMutationDeleteTestGratitude
    extends graphql.MutationOptions<MutationDeleteTestGratitude> {
  OptionsMutationDeleteTestGratitude(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteTestGratitude? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationDeleteTestGratitude(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_TEST_GRATITUDE,
            parserFn: _parserFnMutationDeleteTestGratitude);

  final OnMutationCompletedMutationDeleteTestGratitude? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationDeleteTestGratitude
    extends graphql.WatchQueryOptions<MutationDeleteTestGratitude> {
  WatchOptionsMutationDeleteTestGratitude(
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
            document: MUTATION_DELETE_TEST_GRATITUDE,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationDeleteTestGratitude);
}

extension ClientExtensionMutationDeleteTestGratitude on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationDeleteTestGratitude>>
      mutateDeleteTestGratitude(
              [OptionsMutationDeleteTestGratitude? options]) async =>
          await this.mutate(options ?? OptionsMutationDeleteTestGratitude());
  graphql.ObservableQuery<
      MutationDeleteTestGratitude> watchMutationDeleteTestGratitude(
          [WatchOptionsMutationDeleteTestGratitude? options]) =>
      this.watchMutation(options ?? WatchOptionsMutationDeleteTestGratitude());
}

class MutationDeleteTestGratitudeHookResult {
  MutationDeleteTestGratitudeHookResult(this.runMutation, this.result);

  final RunMutationMutationDeleteTestGratitude runMutation;

  final graphql.QueryResult<MutationDeleteTestGratitude> result;
}

MutationDeleteTestGratitudeHookResult useMutationDeleteTestGratitude(
    [WidgetOptionsMutationDeleteTestGratitude? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptionsMutationDeleteTestGratitude());
  return MutationDeleteTestGratitudeHookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationDeleteTestGratitude>
    useWatchMutationDeleteTestGratitude(
            [WatchOptionsMutationDeleteTestGratitude? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptionsMutationDeleteTestGratitude());

class WidgetOptionsMutationDeleteTestGratitude
    extends graphql.MutationOptions<MutationDeleteTestGratitude> {
  WidgetOptionsMutationDeleteTestGratitude(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationDeleteTestGratitude? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFnMutationDeleteTestGratitude(data)),
            update: update,
            onError: onError,
            document: MUTATION_DELETE_TEST_GRATITUDE,
            parserFn: _parserFnMutationDeleteTestGratitude);

  final OnMutationCompletedMutationDeleteTestGratitude? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationDeleteTestGratitude
    = graphql.MultiSourceResult<MutationDeleteTestGratitude> Function(
        {Object? optimisticResult});
typedef BuilderMutationDeleteTestGratitude = widgets.Widget Function(
    RunMutationMutationDeleteTestGratitude,
    graphql.QueryResult<MutationDeleteTestGratitude>?);

class MutationDeleteTestGratitudeWidget
    extends graphql_flutter.Mutation<MutationDeleteTestGratitude> {
  MutationDeleteTestGratitudeWidget(
      {widgets.Key? key,
      WidgetOptionsMutationDeleteTestGratitude? options,
      required BuilderMutationDeleteTestGratitude builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationDeleteTestGratitude(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run(const {}, optimisticResult: optimisticResult),
                result));
}

@JsonSerializable()
class MutationDeleteTestGratitude$deleteGratitude extends JsonSerializable {
  MutationDeleteTestGratitude$deleteGratitude(
      {this.numUids, required this.$__typename});

  @override
  factory MutationDeleteTestGratitude$deleteGratitude.fromJson(
          Map<String, dynamic> json) =>
      _$MutationDeleteTestGratitude$deleteGratitudeFromJson(json);

  final int? numUids;

  @JsonKey(name: '__typename')
  final String $__typename;

  @override
  Map<String, dynamic> toJson() =>
      _$MutationDeleteTestGratitude$deleteGratitudeToJson(this);
  int get hashCode {
    final l$numUids = numUids;
    final l$$__typename = $__typename;
    return Object.hashAll([l$numUids, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationDeleteTestGratitude$deleteGratitude) ||
        runtimeType != other.runtimeType) return false;
    final l$numUids = numUids;
    final lOther$numUids = other.numUids;
    if (l$numUids != lOther$numUids) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}
