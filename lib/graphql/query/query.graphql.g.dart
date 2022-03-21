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
    bio: json['bio'] as String?,
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
      'bio': instance.bio,
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
    bio: json['bio'] as String?,
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
      'bio': instance.bio,
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
    name: json['name'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagByName$getHashtag$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagByName$getHashtagToJson(
        QueryGetHashtagByName$getHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetHashtagByName$getHashtag$hashtagVariants
    _$QueryGetHashtagByName$getHashtag$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagByName$getHashtag$hashtagVariants(
    id: json['id'] as String,
    variant: json['variant'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagByName$getHashtag$hashtagVariantsToJson(
        QueryGetHashtagByName$getHashtag$hashtagVariants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant': instance.variant,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate
    _$QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregateToJson(
            QueryGetHashtagByName$getHashtag$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate
    _$QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregateToJson(
            QueryGetHashtagByName$getHashtag$hashtagVariants$requestsAggregate
                instance) =>
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
    name: json['name'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagById$getHashtag$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagById$getHashtagToJson(
        QueryGetHashtagById$getHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetHashtagById$getHashtag$hashtagVariants
    _$QueryGetHashtagById$getHashtag$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagById$getHashtag$hashtagVariants(
    id: json['id'] as String,
    variant: json['variant'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagById$getHashtag$hashtagVariantsToJson(
        QueryGetHashtagById$getHashtag$hashtagVariants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant': instance.variant,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate
    _$QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregateToJson(
            QueryGetHashtagById$getHashtag$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate
    _$QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregateToJson(
            QueryGetHashtagById$getHashtag$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagList _$QueryGetHashtagListFromJson(Map<String, dynamic> json) {
  return QueryGetHashtagList(
    queryHashtag: (json['queryHashtag'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagList$queryHashtag.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagListToJson(
        QueryGetHashtagList instance) =>
    <String, dynamic>{
      'queryHashtag': instance.queryHashtag,
    };

QueryGetHashtagList$queryHashtag _$QueryGetHashtagList$queryHashtagFromJson(
    Map<String, dynamic> json) {
  return QueryGetHashtagList$queryHashtag(
    id: json['id'] as String,
    name: json['name'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetHashtagList$queryHashtag$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetHashtagList$queryHashtagToJson(
        QueryGetHashtagList$queryHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetHashtagList$queryHashtag$hashtagVariants
    _$QueryGetHashtagList$queryHashtag$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagList$queryHashtag$hashtagVariants(
    id: json['id'] as String,
    variant: json['variant'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetHashtagList$queryHashtag$hashtagVariantsToJson(
        QueryGetHashtagList$queryHashtag$hashtagVariants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant': instance.variant,
      'skillsAggregate': instance.skillsAggregate,
      'requestsAggregate': instance.requestsAggregate,
    };

QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate
    _$QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregateToJson(
            QueryGetHashtagList$queryHashtag$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate
    _$QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregateToJson(
            QueryGetHashtagList$queryHashtag$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetBlessedHashtagList _$QueryGetBlessedHashtagListFromJson(
    Map<String, dynamic> json) {
  return QueryGetBlessedHashtagList(
    queryHashtag: (json['queryHashtag'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetBlessedHashtagList$queryHashtag.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetBlessedHashtagListToJson(
        QueryGetBlessedHashtagList instance) =>
    <String, dynamic>{
      'queryHashtag': instance.queryHashtag,
    };

QueryGetBlessedHashtagList$queryHashtag
    _$QueryGetBlessedHashtagList$queryHashtagFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagList$queryHashtag(
    id: json['id'] as String,
    name: json['name'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetBlessedHashtagList$queryHashtag$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetBlessedHashtagList$queryHashtagToJson(
        QueryGetBlessedHashtagList$queryHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetBlessedHashtagList$queryHashtag$hashtagVariants
    _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagList$queryHashtag$hashtagVariants(
    id: json['id'] as String,
    variant: json['variant'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariantsToJson(
            QueryGetBlessedHashtagList$queryHashtag$hashtagVariants instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variant': instance.variant,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate
    _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregateToJson(
            QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate
    _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregateToJson(
            QueryGetBlessedHashtagList$queryHashtag$hashtagVariants$requestsAggregate
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
    variant: json['variant'] as String,
    hashtag:
        QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag.fromJson(
            json['hashtag'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetSkillsByUserId$getUser$skills$hashtagVariantsToJson(
            QueryGetSkillsByUserId$getUser$skills$hashtagVariants instance) =>
        <String, dynamic>{
          'variant': instance.variant,
          'hashtag': instance.hashtag,
        };

QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag
    _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag(
    id: json['id'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtagToJson(
            QueryGetSkillsByUserId$getUser$skills$hashtagVariants$hashtag
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
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
    queryHashtag: (json['queryHashtag'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetSkillsPageData$queryHashtag.fromJson(
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
      'queryHashtag': instance.queryHashtag,
      'getUser': instance.getUser,
    };

QueryGetSkillsPageData$queryHashtag
    _$QueryGetSkillsPageData$queryHashtagFromJson(Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtag(
    id: json['id'] as String,
    name: json['name'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetSkillsPageData$queryHashtag$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryGetSkillsPageData$queryHashtagToJson(
        QueryGetSkillsPageData$queryHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

QueryGetSkillsPageData$queryHashtag$hashtagVariants
    _$QueryGetSkillsPageData$queryHashtag$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtag$hashtagVariants(
    id: json['id'] as String,
    variant: json['variant'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$queryHashtag$hashtagVariantsToJson(
            QueryGetSkillsPageData$queryHashtag$hashtagVariants instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variant': instance.variant,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate
    _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregateToJson(
            QueryGetSkillsPageData$queryHashtag$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate
    _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregateToJson(
            QueryGetSkillsPageData$queryHashtag$hashtagVariants$requestsAggregate
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
    hashtag:
        QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag.fromJson(
            json['hashtag'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$getUser$skills$hashtagVariantsToJson(
            QueryGetSkillsPageData$getUser$skills$hashtagVariants instance) =>
        <String, dynamic>{
          'hashtag': instance.hashtag,
        };

QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag
    _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagFromJson(
        Map<String, dynamic> json) {
  return QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag(
    id: json['id'] as String,
    name: json['name'] as String,
    iconName: json['iconName'] as String?,
  );
}

Map<String, dynamic>
    _$QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtagToJson(
            QueryGetSkillsPageData$getUser$skills$hashtagVariants$hashtag
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'iconName': instance.iconName,
        };

VariablesQuerySearchTopRequestHashtag
    _$VariablesQuerySearchTopRequestHashtagFromJson(Map<String, dynamic> json) {
  return VariablesQuerySearchTopRequestHashtag(
    keywordRegex: json['keywordRegex'] as String,
    hashtagOrder: InputHashtagOrder.fromJson(
        json['hashtagOrder'] as Map<String, dynamic>),
    limit: json['limit'] as int?,
  );
}

Map<String, dynamic> _$VariablesQuerySearchTopRequestHashtagToJson(
        VariablesQuerySearchTopRequestHashtag instance) =>
    <String, dynamic>{
      'keywordRegex': instance.keywordRegex,
      'hashtagOrder': instance.hashtagOrder,
      'limit': instance.limit,
    };

QuerySearchTopRequestHashtag _$QuerySearchTopRequestHashtagFromJson(
    Map<String, dynamic> json) {
  return QuerySearchTopRequestHashtag(
    queryHashtag: (json['queryHashtag'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QuerySearchTopRequestHashtag$queryHashtag.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QuerySearchTopRequestHashtagToJson(
        QuerySearchTopRequestHashtag instance) =>
    <String, dynamic>{
      'queryHashtag': instance.queryHashtag,
    };

QuerySearchTopRequestHashtag$queryHashtag
    _$QuerySearchTopRequestHashtag$queryHashtagFromJson(
        Map<String, dynamic> json) {
  return QuerySearchTopRequestHashtag$queryHashtag(
    id: json['id'] as String,
    iconName: json['iconName'] as String?,
    name: json['name'] as String,
    blessed: json['blessed'] as bool?,
    skillCountAllTime: json['skillCountAllTime'] as int?,
    skillCountLast1w: json['skillCountLast1w'] as int?,
    skillCountLast24h: json['skillCountLast24h'] as int?,
    requestCountAllTime: json['requestCountAllTime'] as int?,
    requestCountLast1w: json['requestCountLast1w'] as int?,
    requestCountLast24h: json['requestCountLast24h'] as int?,
  );
}

Map<String, dynamic> _$QuerySearchTopRequestHashtag$queryHashtagToJson(
        QuerySearchTopRequestHashtag$queryHashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iconName': instance.iconName,
      'name': instance.name,
      'blessed': instance.blessed,
      'skillCountAllTime': instance.skillCountAllTime,
      'skillCountLast1w': instance.skillCountLast1w,
      'skillCountLast24h': instance.skillCountLast24h,
      'requestCountAllTime': instance.requestCountAllTime,
      'requestCountLast1w': instance.requestCountLast1w,
      'requestCountLast24h': instance.requestCountLast24h,
    };
