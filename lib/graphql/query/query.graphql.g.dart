// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

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

VariablesQueryGetHashtagMetaByName _$VariablesQueryGetHashtagMetaByNameFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetHashtagMetaByName(
    metaName: json['metaName'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetHashtagMetaByNameToJson(
        VariablesQueryGetHashtagMetaByName instance) =>
    <String, dynamic>{
      'metaName': instance.metaName,
    };

QueryGetHashtagMetaByName _$QueryGetHashtagMetaByNameFromJson(
    Map<String, dynamic> json) {
  return QueryGetHashtagMetaByName(
    getHashtagMeta: json['getHashtagMeta'] == null
        ? null
        : QueryGetHashtagMetaByName$getHashtagMeta.fromJson(
            json['getHashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagMetaByNameToJson(
        QueryGetHashtagMetaByName instance) =>
    <String, dynamic>{
      'getHashtagMeta': instance.getHashtagMeta,
    };

QueryGetHashtagMetaByName$getHashtagMeta
    _$QueryGetHashtagMetaByName$getHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaByName$getHashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagMetaByName$getHashtagMetaToJson(
        QueryGetHashtagMetaByName$getHashtagMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants
    _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants(
    id: json['id'] as String,
    variantName: json['variantName'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String,
    dynamic> _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariantsToJson(
        QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variantName': instance.variantName,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate
    _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregateToJson(
            QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate
    _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregateToJson(
            QueryGetHashtagMetaByName$getHashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

VariablesQueryGetHashtagMetaById _$VariablesQueryGetHashtagMetaByIdFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetHashtagMetaById(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetHashtagMetaByIdToJson(
        VariablesQueryGetHashtagMetaById instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryGetHashtagMetaById _$QueryGetHashtagMetaByIdFromJson(
    Map<String, dynamic> json) {
  return QueryGetHashtagMetaById(
    getHashtagMeta: json['getHashtagMeta'] == null
        ? null
        : QueryGetHashtagMetaById$getHashtagMeta.fromJson(
            json['getHashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagMetaByIdToJson(
        QueryGetHashtagMetaById instance) =>
    <String, dynamic>{
      'getHashtagMeta': instance.getHashtagMeta,
    };

QueryGetHashtagMetaById$getHashtagMeta
    _$QueryGetHashtagMetaById$getHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaById$getHashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagMetaById$getHashtagMetaToJson(
        QueryGetHashtagMetaById$getHashtagMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants
    _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants(
    id: json['id'] as String,
    variantName: json['variantName'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariantsToJson(
            QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variantName': instance.variantName,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate
    _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregateToJson(
            QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate
    _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregateToJson(
            QueryGetHashtagMetaById$getHashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagMetaList _$QueryGetHashtagMetaListFromJson(
    Map<String, dynamic> json) {
  return QueryGetHashtagMetaList(
    queryHashtagMeta: (json['queryHashtagMeta'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagMetaList$queryHashtagMeta.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagMetaListToJson(
        QueryGetHashtagMetaList instance) =>
    <String, dynamic>{
      'queryHashtagMeta': instance.queryHashtagMeta,
    };

QueryGetHashtagMetaList$queryHashtagMeta
    _$QueryGetHashtagMetaList$queryHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaList$queryHashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagMetaList$queryHashtagMetaToJson(
        QueryGetHashtagMetaList$queryHashtagMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants
    _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants(
    id: json['id'] as String,
    variantName: json['variantName'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String,
    dynamic> _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariantsToJson(
        QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variantName': instance.variantName,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate
    _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregateToJson(
            QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate
    _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregateToJson(
            QueryGetHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetBlessedHashtagMetaList _$QueryGetBlessedHashtagMetaListFromJson(
    Map<String, dynamic> json) {
  return QueryGetBlessedHashtagMetaList(
    queryHashtagMeta: (json['queryHashtagMeta'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetBlessedHashtagMetaList$queryHashtagMeta.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetBlessedHashtagMetaListToJson(
        QueryGetBlessedHashtagMetaList instance) =>
    <String, dynamic>{
      'queryHashtagMeta': instance.queryHashtagMeta,
    };

QueryGetBlessedHashtagMetaList$queryHashtagMeta
    _$QueryGetBlessedHashtagMetaList$queryHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagMetaList$queryHashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants
                .fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetBlessedHashtagMetaList$queryHashtagMetaToJson(
        QueryGetBlessedHashtagMetaList$queryHashtagMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants
    _$QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants(
    id: json['id'] as String,
    variantName: json['variantName'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariantsToJson(
            QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variantName': instance.variantName,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate
    _$QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregateToJson(
            QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate
    _$QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregateToJson(
            QueryGetBlessedHashtagMetaList$queryHashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

VariablesQueryGetSkillsByUserId _$VariablesQueryGetSkillsByUserIdFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetSkillsByUserId(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetSkillsByUserIdToJson(
        VariablesQueryGetSkillsByUserId instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryGetSkillsByUserId _$QueryGetSkillsByUserIdFromJson(
    Map<String, dynamic> json) {
  return QueryGetSkillsByUserId(
    getUser: json['getUser'] == null
        ? null
        : QueryGetSkillsByUserId$getUser.fromJson(
            json['getUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetSkillsByUserIdToJson(
        QueryGetSkillsByUserId instance) =>
    <String, dynamic>{
      'getUser': instance.getUser,
    };

QueryGetSkillsByUserId$getUser _$QueryGetSkillsByUserId$getUserFromJson(
    Map<String, dynamic> json) {
  return QueryGetSkillsByUserId$getUser(
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetSkillsByUserId$getUser$skillsAggregate.fromJson(
            json['skillsAggregate'] as Map<String, dynamic>),
    skills: (json['skills'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetSkillsByUserId$getUser$skills.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetSkillsByUserId$getUserToJson(
        QueryGetSkillsByUserId$getUser instance) =>
    <String, dynamic>{
      'skillsAggregate': instance.skillsAggregate,
      'skills': instance.skills,
    };

QueryGetSkillsByUserId$getUser$skillsAggregate
    _$QueryGetSkillsByUserId$getUser$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsByUserId$getUser$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetSkillsByUserId$getUser$skillsAggregateToJson(
        QueryGetSkillsByUserId$getUser$skillsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

QueryGetSkillsByUserId$getUser$skills
    _$QueryGetSkillsByUserId$getUser$skillsFromJson(Map<String, dynamic> json) {
  return QueryGetSkillsByUserId$getUser$skills(
    id: json['id'] as String,
    title: json['title'] as String?,
    message: json['message'] as String?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>)
        .map((e) => e == null
            ? null
            : QueryGetSkillsByUserId$getUser$skills$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
    isAvailable: json['isAvailable'] as bool?,
    createdTimestamp: json['createdTimestamp'] as String?,
  );
}

Map<String, dynamic> _$QueryGetSkillsByUserId$getUser$skillsToJson(
        QueryGetSkillsByUserId$getUser$skills instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
      'isAvailable': instance.isAvailable,
      'createdTimestamp': instance.createdTimestamp,
    };

QueryGetSkillsByUserId$getUser$skills$hashtagVariants
    _$QueryGetSkillsByUserId$getUser$skills$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsByUserId$getUser$skills$hashtagVariants(
    variantName: json['variantName'] as String,
    hashtagMeta:
        QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagMeta
            .fromJson(json['hashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetSkillsByUserId$getUser$skills$hashtagVariantsToJson(
            QueryGetSkillsByUserId$getUser$skills$hashtagVariants instance) =>
        <String, dynamic>{
          'variantName': instance.variantName,
          'hashtagMeta': instance.hashtagMeta,
        };

QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagMeta
    _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagMetaToJson(
            QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagMeta
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'metaName': instance.metaName,
        };

VariablesQueryGetSkillsPageData _$VariablesQueryGetSkillsPageDataFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetSkillsPageData(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$VariablesQueryGetSkillsPageDataToJson(
        VariablesQueryGetSkillsPageData instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryGetSkillsPageData _$QueryGetSkillsPageDataFromJson(
    Map<String, dynamic> json) {
  return QueryGetSkillsPageData(
    queryHashtagMeta: (json['queryHashtagMeta'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetSkillsPageData$queryHashtagMeta.fromJson(
                e as Map<String, dynamic>))
        .toList(),
    getUser: json['getUser'] == null
        ? null
        : QueryGetSkillsPageData$getUser.fromJson(
            json['getUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetSkillsPageDataToJson(
        QueryGetSkillsPageData instance) =>
    <String, dynamic>{
      'queryHashtagMeta': instance.queryHashtagMeta,
      'getUser': instance.getUser,
    };

QueryGetSkillsPageData$queryHashtagMeta
    _$QueryGetSkillsPageData$queryHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetSkillsPageData$queryHashtagMetaToJson(
        QueryGetSkillsPageData$queryHashtagMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants
    _$QueryGetSkillsPageData$queryHashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants(
    id: json['id'] as String,
    variantName: json['variantName'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$queryHashtagMeta$hashtagVariantsToJson(
            QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variantName': instance.variantName,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$skillsAggregate
    _$QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$skillsAggregateToJson(
            QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$requestsAggregate
    _$QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$requestsAggregateToJson(
            QueryGetSkillsPageData$queryHashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetSkillsPageData$getUser _$QueryGetSkillsPageData$getUserFromJson(
    Map<String, dynamic> json) {
  return QueryGetSkillsPageData$getUser(
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetSkillsPageData$getUser$skillsAggregate.fromJson(
            json['skillsAggregate'] as Map<String, dynamic>),
    skills: (json['skills'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetSkillsPageData$getUser$skills.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetSkillsPageData$getUserToJson(
        QueryGetSkillsPageData$getUser instance) =>
    <String, dynamic>{
      'skillsAggregate': instance.skillsAggregate,
      'skills': instance.skills,
    };

QueryGetSkillsPageData$getUser$skillsAggregate
    _$QueryGetSkillsPageData$getUser$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$getUser$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic> _$QueryGetSkillsPageData$getUser$skillsAggregateToJson(
        QueryGetSkillsPageData$getUser$skillsAggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

QueryGetSkillsPageData$getUser$skills
    _$QueryGetSkillsPageData$getUser$skillsFromJson(Map<String, dynamic> json) {
  return QueryGetSkillsPageData$getUser$skills(
    id: json['id'] as String,
    title: json['title'] as String?,
    message: json['message'] as String?,
    isAvailable: json['isAvailable'] as bool?,
    createdTimestamp: json['createdTimestamp'] as String?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>)
        .map((e) => e == null
            ? null
            : QueryGetSkillsPageData$getUser$skills$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetSkillsPageData$getUser$skillsToJson(
        QueryGetSkillsPageData$getUser$skills instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'isAvailable': instance.isAvailable,
      'createdTimestamp': instance.createdTimestamp,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetSkillsPageData$getUser$skills$hashtagVariants
    _$QueryGetSkillsPageData$getUser$skills$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$getUser$skills$hashtagVariants(
    hashtagMeta:
        QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagMeta
            .fromJson(json['hashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$getUser$skills$hashtagVariantsToJson(
            QueryGetSkillsPageData$getUser$skills$hashtagVariants instance) =>
        <String, dynamic>{
          'hashtagMeta': instance.hashtagMeta,
        };

QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagMeta
    _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagMetaToJson(
            QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagMeta
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'metaName': instance.metaName,
          'iconName': instance.iconName,
        };

VariablesQuerySearchTopRequestHashtag
    _$VariablesQuerySearchTopRequestHashtagFromJson(Map<String, dynamic> json) {
  return VariablesQuerySearchTopRequestHashtag(
    keywordRegex: json['keywordRegex'] as String,
    hashtagMetaOrder: InputHashtagMetaOrder.fromJson(
        json['hashtagMetaOrder'] as Map<String, dynamic>),
    limit: json['limit'] as int?,
  );
}

Map<String, dynamic> _$VariablesQuerySearchTopRequestHashtagToJson(
        VariablesQuerySearchTopRequestHashtag instance) =>
    <String, dynamic>{
      'keywordRegex': instance.keywordRegex,
      'hashtagMetaOrder': instance.hashtagMetaOrder,
      'limit': instance.limit,
    };

QuerySearchTopRequestHashtag _$QuerySearchTopRequestHashtagFromJson(
    Map<String, dynamic> json) {
  return QuerySearchTopRequestHashtag(
    queryHashtagMeta: (json['queryHashtagMeta'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QuerySearchTopRequestHashtag$queryHashtagMeta.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QuerySearchTopRequestHashtagToJson(
        QuerySearchTopRequestHashtag instance) =>
    <String, dynamic>{
      'queryHashtagMeta': instance.queryHashtagMeta,
    };

QuerySearchTopRequestHashtag$queryHashtagMeta
    _$QuerySearchTopRequestHashtag$queryHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return QuerySearchTopRequestHashtag$queryHashtagMeta(
    id: json['id'] as String,
    iconName: json['iconName'] as String?,
    metaName: json['metaName'] as String,
    blessed: json['blessed'] as bool?,
    skillCountAllTime: json['skillCountAllTime'] as int?,
    skillCountLast1w: json['skillCountLast1w'] as int?,
    skillCountLast24h: json['skillCountLast24h'] as int?,
    requestCountAllTime: json['requestCountAllTime'] as int?,
    requestCountLast1w: json['requestCountLast1w'] as int?,
    requestCountLast24h: json['requestCountLast24h'] as int?,
  );
}

Map<String, dynamic> _$QuerySearchTopRequestHashtag$queryHashtagMetaToJson(
        QuerySearchTopRequestHashtag$queryHashtagMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iconName': instance.iconName,
      'metaName': instance.metaName,
      'blessed': instance.blessed,
      'skillCountAllTime': instance.skillCountAllTime,
      'skillCountLast1w': instance.skillCountLast1w,
      'skillCountLast24h': instance.skillCountLast24h,
      'requestCountAllTime': instance.requestCountAllTime,
      'requestCountLast1w': instance.requestCountLast1w,
      'requestCountLast24h': instance.requestCountLast24h,
    };
