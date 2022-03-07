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
    isAdmin: json['isAdmin'] as bool?,
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
      'isAdmin': instance.isAdmin,
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
    isAdmin: json['isAdmin'] as bool?,
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
      'isAdmin': instance.isAdmin,
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
    isAdmin: json['isAdmin'] as bool?,
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
      'isAdmin': instance.isAdmin,
      'createdTimestamp': instance.createdTimestamp,
    };

VariablesMutationCreateUser _$VariablesMutationCreateUserFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationCreateUser(
    email: json['email'] as String,
    name: json['name'] as String,
    age: json['age'] as int,
    createdTimestamp: json['createdTimestamp'] as String,
  );
}

Map<String, dynamic> _$VariablesMutationCreateUserToJson(
        VariablesMutationCreateUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'createdTimestamp': instance.createdTimestamp,
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
    isAdmin: json['isAdmin'] as bool?,
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$MutationCreateUser$addUser$userToJson(
        MutationCreateUser$addUser$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'createdTimestamp': instance.createdTimestamp,
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

VariablesQueryGetHashtagByName _$VariablesQueryGetHashtagByNameFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetHashtagByName(
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetHashtagByNameToJson(
        VariablesQueryGetHashtagByName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

QueryGetHashtagByName _$QueryGetHashtagByNameFromJson(
    Map<String, dynamic> json) {
  return QueryGetHashtagByName(
    getHashtag: json['getHashtag'] == null
        ? null
        : QueryGetHashtagByName$getHashtag.fromJson(
            json['getHashtag'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagByNameToJson(
        QueryGetHashtagByName instance) =>
    <String, dynamic>{
      'getHashtag': instance.getHashtag,
    };

QueryGetHashtagByName$getHashtag _$QueryGetHashtagByName$getHashtagFromJson(
    Map<String, dynamic> json) {
  return QueryGetHashtagByName$getHashtag(
    id: json['id'] as String,
    hashtag: json['hashtag'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagByName$getHashtag$skillsAggregate.fromJson(
            json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagByName$getHashtag$requestsAggregate.fromJson(
            json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagByName$getHashtagToJson(
        QueryGetHashtagByName$getHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hashtag': instance.hashtag,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetHashtagByName$getHashtag$skillsAggregate
    _$QueryGetHashtagByName$getHashtag$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagByName$getHashtag$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetHashtagByName$getHashtag$skillsAggregateToJson(
        QueryGetHashtagByName$getHashtag$skillsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

QueryGetHashtagByName$getHashtag$requestsAggregate
    _$QueryGetHashtagByName$getHashtag$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagByName$getHashtag$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetHashtagByName$getHashtag$requestsAggregateToJson(
        QueryGetHashtagByName$getHashtag$requestsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

VariablesQueryGetHashtagById _$VariablesQueryGetHashtagByIdFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetHashtagById(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetHashtagByIdToJson(
        VariablesQueryGetHashtagById instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryGetHashtagById _$QueryGetHashtagByIdFromJson(Map<String, dynamic> json) {
  return QueryGetHashtagById(
    getHashtag: json['getHashtag'] == null
        ? null
        : QueryGetHashtagById$getHashtag.fromJson(
            json['getHashtag'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagByIdToJson(
        QueryGetHashtagById instance) =>
    <String, dynamic>{
      'getHashtag': instance.getHashtag,
    };

QueryGetHashtagById$getHashtag _$QueryGetHashtagById$getHashtagFromJson(
    Map<String, dynamic> json) {
  return QueryGetHashtagById$getHashtag(
    id: json['id'] as String,
    hashtag: json['hashtag'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagById$getHashtag$skillsAggregate.fromJson(
            json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagById$getHashtag$requestsAggregate.fromJson(
            json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagById$getHashtagToJson(
        QueryGetHashtagById$getHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hashtag': instance.hashtag,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetHashtagById$getHashtag$skillsAggregate
    _$QueryGetHashtagById$getHashtag$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagById$getHashtag$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetHashtagById$getHashtag$skillsAggregateToJson(
        QueryGetHashtagById$getHashtag$skillsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

QueryGetHashtagById$getHashtag$requestsAggregate
    _$QueryGetHashtagById$getHashtag$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagById$getHashtag$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetHashtagById$getHashtag$requestsAggregateToJson(
        QueryGetHashtagById$getHashtag$requestsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

QueryGetAllHashtags _$QueryGetAllHashtagsFromJson(Map<String, dynamic> json) {
  return QueryGetAllHashtags(
    queryHashtag: (json['queryHashtag'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetAllHashtags$queryHashtag.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetAllHashtagsToJson(
        QueryGetAllHashtags instance) =>
    <String, dynamic>{
      'queryHashtag': instance.queryHashtag,
    };

QueryGetAllHashtags$queryHashtag _$QueryGetAllHashtags$queryHashtagFromJson(
    Map<String, dynamic> json) {
  return QueryGetAllHashtags$queryHashtag(
    id: json['id'] as String,
    hashtag: json['hashtag'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetAllHashtags$queryHashtag$skillsAggregate.fromJson(
            json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetAllHashtags$queryHashtag$requestsAggregate.fromJson(
            json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetAllHashtags$queryHashtagToJson(
        QueryGetAllHashtags$queryHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hashtag': instance.hashtag,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetAllHashtags$queryHashtag$skillsAggregate
    _$QueryGetAllHashtags$queryHashtag$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetAllHashtags$queryHashtag$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetAllHashtags$queryHashtag$skillsAggregateToJson(
        QueryGetAllHashtags$queryHashtag$skillsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

QueryGetAllHashtags$queryHashtag$requestsAggregate
    _$QueryGetAllHashtags$queryHashtag$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetAllHashtags$queryHashtag$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetAllHashtags$queryHashtag$requestsAggregateToJson(
        QueryGetAllHashtags$queryHashtag$requestsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

VariablesMutationAddHashtag _$VariablesMutationAddHashtagFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationAddHashtag(
    name: json['name'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
  );
}

Map<String, dynamic> _$VariablesMutationAddHashtagToJson(
        VariablesMutationAddHashtag instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
    };

MutationAddHashtag _$MutationAddHashtagFromJson(Map<String, dynamic> json) {
  return MutationAddHashtag(
    addHashtag: json['addHashtag'] == null
        ? null
        : MutationAddHashtag$addHashtag.fromJson(
            json['addHashtag'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationAddHashtagToJson(MutationAddHashtag instance) =>
    <String, dynamic>{
      'addHashtag': instance.addHashtag,
    };

MutationAddHashtag$addHashtag _$MutationAddHashtag$addHashtagFromJson(
    Map<String, dynamic> json) {
  return MutationAddHashtag$addHashtag(
    hashtag: (json['hashtag'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationAddHashtag$addHashtag$hashtag.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationAddHashtag$addHashtagToJson(
        MutationAddHashtag$addHashtag instance) =>
    <String, dynamic>{
      'hashtag': instance.hashtag,
    };

MutationAddHashtag$addHashtag$hashtag
    _$MutationAddHashtag$addHashtag$hashtagFromJson(Map<String, dynamic> json) {
  return MutationAddHashtag$addHashtag$hashtag(
    id: json['id'] as String,
    hashtag: json['hashtag'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : MutationAddHashtag$addHashtag$hashtag$skillsAggregate.fromJson(
            json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : MutationAddHashtag$addHashtag$hashtag$requestsAggregate.fromJson(
            json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationAddHashtag$addHashtag$hashtagToJson(
        MutationAddHashtag$addHashtag$hashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hashtag': instance.hashtag,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

MutationAddHashtag$addHashtag$hashtag$skillsAggregate
    _$MutationAddHashtag$addHashtag$hashtag$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationAddHashtag$addHashtag$hashtag$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationAddHashtag$addHashtag$hashtag$skillsAggregateToJson(
            MutationAddHashtag$addHashtag$hashtag$skillsAggregate instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

MutationAddHashtag$addHashtag$hashtag$requestsAggregate
    _$MutationAddHashtag$addHashtag$hashtag$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationAddHashtag$addHashtag$hashtag$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationAddHashtag$addHashtag$hashtag$requestsAggregateToJson(
            MutationAddHashtag$addHashtag$hashtag$requestsAggregate instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

VariablesMutationUpdateHashtag _$VariablesMutationUpdateHashtagFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationUpdateHashtag(
    hashtagInput: InputUpdateHashtagInput.fromJson(
        json['hashtagInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariablesMutationUpdateHashtagToJson(
        VariablesMutationUpdateHashtag instance) =>
    <String, dynamic>{
      'hashtagInput': instance.hashtagInput,
    };

MutationUpdateHashtag _$MutationUpdateHashtagFromJson(
    Map<String, dynamic> json) {
  return MutationUpdateHashtag(
    updateHashtag: json['updateHashtag'] == null
        ? null
        : MutationUpdateHashtag$updateHashtag.fromJson(
            json['updateHashtag'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationUpdateHashtagToJson(
        MutationUpdateHashtag instance) =>
    <String, dynamic>{
      'updateHashtag': instance.updateHashtag,
    };

MutationUpdateHashtag$updateHashtag
    _$MutationUpdateHashtag$updateHashtagFromJson(Map<String, dynamic> json) {
  return MutationUpdateHashtag$updateHashtag(
    hashtag: (json['hashtag'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationUpdateHashtag$updateHashtag$hashtag.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationUpdateHashtag$updateHashtagToJson(
        MutationUpdateHashtag$updateHashtag instance) =>
    <String, dynamic>{
      'hashtag': instance.hashtag,
    };

MutationUpdateHashtag$updateHashtag$hashtag
    _$MutationUpdateHashtag$updateHashtag$hashtagFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtag$updateHashtag$hashtag(
    id: json['id'] as String,
    hashtag: json['hashtag'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate.fromJson(
            json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationUpdateHashtag$updateHashtag$hashtagToJson(
        MutationUpdateHashtag$updateHashtag$hashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hashtag': instance.hashtag,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate
    _$MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregateToJson(
            MutationUpdateHashtag$updateHashtag$hashtag$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate
    _$MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregateToJson(
            MutationUpdateHashtag$updateHashtag$hashtag$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };
