// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryGetAllUsers _$QueryGetAllUsersFromJson(Map<String, dynamic> json) {
  return QueryGetAllUsers(
    queryUser: (json['queryUser'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetAllUsers$queryUser.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetAllUsersToJson(QueryGetAllUsers instance) =>
    <String, dynamic>{
      'queryUser': instance.queryUser,
    };

QueryGetAllUsers$queryUser _$QueryGetAllUsers$queryUserFromJson(
    Map<String, dynamic> json) {
  return QueryGetAllUsers$queryUser(
    id: json['id'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    age: json['age'] as int?,
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$QueryGetAllUsers$queryUserToJson(
        QueryGetAllUsers$queryUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'createdTimestamp': instance.createdTimestamp,
    };

VariablesQueryGetUserWithEmail _$VariablesQueryGetUserWithEmailFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetUserWithEmail(
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetUserWithEmailToJson(
        VariablesQueryGetUserWithEmail instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

QueryGetUserWithEmail _$QueryGetUserWithEmailFromJson(
    Map<String, dynamic> json) {
  return QueryGetUserWithEmail(
    getUser: json['getUser'] == null
        ? null
        : QueryGetUserWithEmail$getUser.fromJson(
            json['getUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetUserWithEmailToJson(
        QueryGetUserWithEmail instance) =>
    <String, dynamic>{
      'getUser': instance.getUser,
    };

QueryGetUserWithEmail$getUser _$QueryGetUserWithEmail$getUserFromJson(
    Map<String, dynamic> json) {
  return QueryGetUserWithEmail$getUser(
    id: json['id'] as String,
    name: json['name'] as String,
    age: json['age'] as int?,
    email: json['email'] as String,
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$QueryGetUserWithEmail$getUserToJson(
        QueryGetUserWithEmail$getUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'email': instance.email,
      'createdTimestamp': instance.createdTimestamp,
    };

VariablesQueryGetUserWithId _$VariablesQueryGetUserWithIdFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetUserWithId(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetUserWithIdToJson(
        VariablesQueryGetUserWithId instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryGetUserWithId _$QueryGetUserWithIdFromJson(Map<String, dynamic> json) {
  return QueryGetUserWithId(
    getUser: json['getUser'] == null
        ? null
        : QueryGetUserWithId$getUser.fromJson(
            json['getUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetUserWithIdToJson(QueryGetUserWithId instance) =>
    <String, dynamic>{
      'getUser': instance.getUser,
    };

QueryGetUserWithId$getUser _$QueryGetUserWithId$getUserFromJson(
    Map<String, dynamic> json) {
  return QueryGetUserWithId$getUser(
    id: json['id'] as String,
    name: json['name'] as String,
    age: json['age'] as int?,
    email: json['email'] as String,
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$QueryGetUserWithId$getUserToJson(
        QueryGetUserWithId$getUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'email': instance.email,
      'createdTimestamp': instance.createdTimestamp,
    };

VariablesMutationCreateUser _$VariablesMutationCreateUserFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationCreateUser(
    email: json['email'] as String,
    name: json['name'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$VariablesMutationCreateUserToJson(
        VariablesMutationCreateUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
    };

MutationCreateUser _$MutationCreateUserFromJson(Map<String, dynamic> json) {
  return MutationCreateUser(
    addUser: json['addUser'] == null
        ? null
        : MutationCreateUser$addUser.fromJson(
            json['addUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationCreateUserToJson(MutationCreateUser instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
    };

MutationCreateUser$addUser _$MutationCreateUser$addUserFromJson(
    Map<String, dynamic> json) {
  return MutationCreateUser$addUser(
    user: (json['user'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationCreateUser$addUser$user.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationCreateUser$addUserToJson(
        MutationCreateUser$addUser instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

MutationCreateUser$addUser$user _$MutationCreateUser$addUser$userFromJson(
    Map<String, dynamic> json) {
  return MutationCreateUser$addUser$user(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$MutationCreateUser$addUser$userToJson(
        MutationCreateUser$addUser$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

VariablesMutationCreateRequest _$VariablesMutationCreateRequestFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationCreateRequest(
    owner: InputUserRef.fromJson(json['owner'] as Map<String, dynamic>),
    title: json['title'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$VariablesMutationCreateRequestToJson(
        VariablesMutationCreateRequest instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
    };

MutationCreateRequest _$MutationCreateRequestFromJson(
    Map<String, dynamic> json) {
  return MutationCreateRequest(
    addRequest: json['addRequest'] == null
        ? null
        : MutationCreateRequest$addRequest.fromJson(
            json['addRequest'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationCreateRequestToJson(
        MutationCreateRequest instance) =>
    <String, dynamic>{
      'addRequest': instance.addRequest,
    };

MutationCreateRequest$addRequest _$MutationCreateRequest$addRequestFromJson(
    Map<String, dynamic> json) {
  return MutationCreateRequest$addRequest(
    request: (json['request'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationCreateRequest$addRequest$request.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationCreateRequest$addRequestToJson(
        MutationCreateRequest$addRequest instance) =>
    <String, dynamic>{
      'request': instance.request,
    };

MutationCreateRequest$addRequest$request
    _$MutationCreateRequest$addRequest$requestFromJson(
        Map<String, dynamic> json) {
  return MutationCreateRequest$addRequest$request(
    id: json['id'] as String,
    title: json['title'] as String,
    message: json['message'] as String,
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$MutationCreateRequest$addRequest$requestToJson(
        MutationCreateRequest$addRequest$request instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'createdTimestamp': instance.createdTimestamp,
    };

QueryGetAllRequests _$QueryGetAllRequestsFromJson(Map<String, dynamic> json) {
  return QueryGetAllRequests(
    queryRequest: (json['queryRequest'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetAllRequests$queryRequest.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetAllRequestsToJson(
        QueryGetAllRequests instance) =>
    <String, dynamic>{
      'queryRequest': instance.queryRequest,
    };

QueryGetAllRequests$queryRequest _$QueryGetAllRequests$queryRequestFromJson(
    Map<String, dynamic> json) {
  return QueryGetAllRequests$queryRequest(
    id: json['id'] as String,
    owner: QueryGetAllRequests$queryRequest$owner.fromJson(
        json['owner'] as Map<String, dynamic>),
    title: json['title'] as String,
    message: json['message'] as String,
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$QueryGetAllRequests$queryRequestToJson(
        QueryGetAllRequests$queryRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'title': instance.title,
      'message': instance.message,
      'createdTimestamp': instance.createdTimestamp,
    };

QueryGetAllRequests$queryRequest$owner
    _$QueryGetAllRequests$queryRequest$ownerFromJson(
        Map<String, dynamic> json) {
  return QueryGetAllRequests$queryRequest$owner(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$QueryGetAllRequests$queryRequest$ownerToJson(
        QueryGetAllRequests$queryRequest$owner instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
