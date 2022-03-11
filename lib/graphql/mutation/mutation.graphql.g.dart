// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

VariablesMutationAddHashtagMeta _$VariablesMutationAddHashtagMetaFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationAddHashtagMeta(
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    defaultHashtagVariant: json['defaultHashtagVariant'] == null
        ? null
        : InputHashtagVariantRef.fromJson(
            json['defaultHashtagVariant'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariablesMutationAddHashtagMetaToJson(
        VariablesMutationAddHashtagMeta instance) =>
    <String, dynamic>{
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'defaultHashtagVariant': instance.defaultHashtagVariant,
    };

MutationAddHashtagMeta _$MutationAddHashtagMetaFromJson(
    Map<String, dynamic> json) {
  return MutationAddHashtagMeta(
    addHashtagMeta: json['addHashtagMeta'] == null
        ? null
        : MutationAddHashtagMeta$addHashtagMeta.fromJson(
            json['addHashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationAddHashtagMetaToJson(
        MutationAddHashtagMeta instance) =>
    <String, dynamic>{
      'addHashtagMeta': instance.addHashtagMeta,
    };

MutationAddHashtagMeta$addHashtagMeta
    _$MutationAddHashtagMeta$addHashtagMetaFromJson(Map<String, dynamic> json) {
  return MutationAddHashtagMeta$addHashtagMeta(
    hashtagMeta: (json['hashtagMeta'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationAddHashtagMeta$addHashtagMeta$hashtagMeta.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationAddHashtagMeta$addHashtagMetaToJson(
        MutationAddHashtagMeta$addHashtagMeta instance) =>
    <String, dynamic>{
      'hashtagMeta': instance.hashtagMeta,
    };

MutationAddHashtagMeta$addHashtagMeta$hashtagMeta
    _$MutationAddHashtagMeta$addHashtagMeta$hashtagMetaFromJson(
        Map<String, dynamic> json) {
  return MutationAddHashtagMeta$addHashtagMeta$hashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants
                .fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationAddHashtagMeta$addHashtagMeta$hashtagMetaToJson(
        MutationAddHashtagMeta$addHashtagMeta$hashtagMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaName': instance.metaName,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
    };

MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants
    _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants(
    id: json['id'] as String,
    variantName: json['variantName'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariantsToJson(
            MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variantName': instance.variantName,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
    _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateToJson(
            MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
    _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateToJson(
            MutationAddHashtagMeta$addHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

VariablesMutationUpdateHashtagMeta _$VariablesMutationUpdateHashtagMetaFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationUpdateHashtagMeta(
    hashtagMetaInput: InputUpdateHashtagMetaInput.fromJson(
        json['hashtagMetaInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariablesMutationUpdateHashtagMetaToJson(
        VariablesMutationUpdateHashtagMeta instance) =>
    <String, dynamic>{
      'hashtagMetaInput': instance.hashtagMetaInput,
    };

MutationUpdateHashtagMeta _$MutationUpdateHashtagMetaFromJson(
    Map<String, dynamic> json) {
  return MutationUpdateHashtagMeta(
    updateHashtagMeta: json['updateHashtagMeta'] == null
        ? null
        : MutationUpdateHashtagMeta$updateHashtagMeta.fromJson(
            json['updateHashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationUpdateHashtagMetaToJson(
        MutationUpdateHashtagMeta instance) =>
    <String, dynamic>{
      'updateHashtagMeta': instance.updateHashtagMeta,
    };

MutationUpdateHashtagMeta$updateHashtagMeta
    _$MutationUpdateHashtagMeta$updateHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtagMeta$updateHashtagMeta(
    hashtagMeta: (json['hashtagMeta'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationUpdateHashtagMeta$updateHashtagMetaToJson(
        MutationUpdateHashtagMeta$updateHashtagMeta instance) =>
    <String, dynamic>{
      'hashtagMeta': instance.hashtagMeta,
    };

MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMetaFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    blessed: json['blessed'] as bool?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants
                .fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic>
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMetaToJson(
            MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta instance) =>
        <String, dynamic>{
          'id': instance.id,
          'metaName': instance.metaName,
          'iconName': instance.iconName,
          'blessed': instance.blessed,
          'hashtagVariants': instance.hashtagVariants,
        };

MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants(
    id: json['id'] as String,
    variantName: json['variantName'] as String,
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariantsToJson(
            MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variantName': instance.variantName,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregateToJson(
            MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregateToJson(
            MutationUpdateHashtagMeta$updateHashtagMeta$hashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

VariablesMutationDeleteHashtagMeta _$VariablesMutationDeleteHashtagMetaFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationDeleteHashtagMeta(
    hashtagMetaFilter: InputHashtagMetaFilter.fromJson(
        json['hashtagMetaFilter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariablesMutationDeleteHashtagMetaToJson(
        VariablesMutationDeleteHashtagMeta instance) =>
    <String, dynamic>{
      'hashtagMetaFilter': instance.hashtagMetaFilter,
    };

MutationDeleteHashtagMeta _$MutationDeleteHashtagMetaFromJson(
    Map<String, dynamic> json) {
  return MutationDeleteHashtagMeta(
    deleteHashtagMeta: json['deleteHashtagMeta'] == null
        ? null
        : MutationDeleteHashtagMeta$deleteHashtagMeta.fromJson(
            json['deleteHashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationDeleteHashtagMetaToJson(
        MutationDeleteHashtagMeta instance) =>
    <String, dynamic>{
      'deleteHashtagMeta': instance.deleteHashtagMeta,
    };

MutationDeleteHashtagMeta$deleteHashtagMeta
    _$MutationDeleteHashtagMeta$deleteHashtagMetaFromJson(
        Map<String, dynamic> json) {
  return MutationDeleteHashtagMeta$deleteHashtagMeta(
    msg: json['msg'] as String?,
    numUids: json['numUids'] as int?,
    hashtagMeta: (json['hashtagMeta'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationDeleteHashtagMeta$deleteHashtagMetaToJson(
        MutationDeleteHashtagMeta$deleteHashtagMeta instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'numUids': instance.numUids,
      'hashtagMeta': instance.hashtagMeta,
    };

MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta
    _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMetaFromJson(
        Map<String, dynamic> json) {
  return MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta(
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants
                .fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic>
    _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMetaToJson(
            MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta instance) =>
        <String, dynamic>{
          'hashtagVariants': instance.hashtagVariants,
        };

MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants
    _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants(
    id: json['id'] as String,
  );
}

Map<String, dynamic>
    _$MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariantsToJson(
            MutationDeleteHashtagMeta$deleteHashtagMeta$hashtagMeta$hashtagVariants
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

VariablesMutationDeleteHashtagVariant
    _$VariablesMutationDeleteHashtagVariantFromJson(Map<String, dynamic> json) {
  return VariablesMutationDeleteHashtagVariant(
    hashtagVariantFilter: InputHashtagVariantFilter.fromJson(
        json['hashtagVariantFilter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariablesMutationDeleteHashtagVariantToJson(
        VariablesMutationDeleteHashtagVariant instance) =>
    <String, dynamic>{
      'hashtagVariantFilter': instance.hashtagVariantFilter,
    };

MutationDeleteHashtagVariant _$MutationDeleteHashtagVariantFromJson(
    Map<String, dynamic> json) {
  return MutationDeleteHashtagVariant(
    deleteHashtagVariant: json['deleteHashtagVariant'] == null
        ? null
        : MutationDeleteHashtagVariant$deleteHashtagVariant.fromJson(
            json['deleteHashtagVariant'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationDeleteHashtagVariantToJson(
        MutationDeleteHashtagVariant instance) =>
    <String, dynamic>{
      'deleteHashtagVariant': instance.deleteHashtagVariant,
    };

MutationDeleteHashtagVariant$deleteHashtagVariant
    _$MutationDeleteHashtagVariant$deleteHashtagVariantFromJson(
        Map<String, dynamic> json) {
  return MutationDeleteHashtagVariant$deleteHashtagVariant(
    msg: json['msg'] as String?,
    numUids: json['numUids'] as int?,
  );
}

Map<String, dynamic> _$MutationDeleteHashtagVariant$deleteHashtagVariantToJson(
        MutationDeleteHashtagVariant$deleteHashtagVariant instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'numUids': instance.numUids,
    };

VariablesMutationCreateSkill _$VariablesMutationCreateSkillFromJson(
    Map<String, dynamic> json) {
  return VariablesMutationCreateSkill(
    addHashtagMetaInputList: (json['addHashtagMetaInputList'] as List<dynamic>)
        .map(
            (e) => InputAddHashtagMetaInput.fromJson(e as Map<String, dynamic>))
        .toList(),
    addSkillInput: InputAddSkillInput.fromJson(
        json['addSkillInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariablesMutationCreateSkillToJson(
        VariablesMutationCreateSkill instance) =>
    <String, dynamic>{
      'addHashtagMetaInputList': instance.addHashtagMetaInputList,
      'addSkillInput': instance.addSkillInput,
    };

MutationCreateSkill _$MutationCreateSkillFromJson(Map<String, dynamic> json) {
  return MutationCreateSkill(
    addHashtagMeta: json['addHashtagMeta'] == null
        ? null
        : MutationCreateSkill$addHashtagMeta.fromJson(
            json['addHashtagMeta'] as Map<String, dynamic>),
    addSkill: json['addSkill'] == null
        ? null
        : MutationCreateSkill$addSkill.fromJson(
            json['addSkill'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationCreateSkillToJson(
        MutationCreateSkill instance) =>
    <String, dynamic>{
      'addHashtagMeta': instance.addHashtagMeta,
      'addSkill': instance.addSkill,
    };

MutationCreateSkill$addHashtagMeta _$MutationCreateSkill$addHashtagMetaFromJson(
    Map<String, dynamic> json) {
  return MutationCreateSkill$addHashtagMeta(
    numUids: json['numUids'] as int?,
  );
}

Map<String, dynamic> _$MutationCreateSkill$addHashtagMetaToJson(
        MutationCreateSkill$addHashtagMeta instance) =>
    <String, dynamic>{
      'numUids': instance.numUids,
    };

MutationCreateSkill$addSkill _$MutationCreateSkill$addSkillFromJson(
    Map<String, dynamic> json) {
  return MutationCreateSkill$addSkill(
    skill: (json['skill'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationCreateSkill$addSkill$skill.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationCreateSkill$addSkillToJson(
        MutationCreateSkill$addSkill instance) =>
    <String, dynamic>{
      'skill': instance.skill,
    };

MutationCreateSkill$addSkill$skill _$MutationCreateSkill$addSkill$skillFromJson(
    Map<String, dynamic> json) {
  return MutationCreateSkill$addSkill$skill(
    id: json['id'] as String,
    title: json['title'] as String?,
    message: json['message'] as String?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>)
        .map((e) => e == null
            ? null
            : MutationCreateSkill$addSkill$skill$hashtagVariants.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MutationCreateSkill$addSkill$skillToJson(
        MutationCreateSkill$addSkill$skill instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'hashtagVariants': instance.hashtagVariants,
    };

MutationCreateSkill$addSkill$skill$hashtagVariants
    _$MutationCreateSkill$addSkill$skill$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return MutationCreateSkill$addSkill$skill$hashtagVariants(
    hashtagMeta:
        MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta.fromJson(
            json['hashtagMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MutationCreateSkill$addSkill$skill$hashtagVariantsToJson(
        MutationCreateSkill$addSkill$skill$hashtagVariants instance) =>
    <String, dynamic>{
      'hashtagMeta': instance.hashtagMeta,
    };

MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMetaFromJson(
        Map<String, dynamic> json) {
  return MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta(
    id: json['id'] as String,
    metaName: json['metaName'] as String,
    iconName: json['iconName'] as String?,
    hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants
                .fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic>
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMetaToJson(
            MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'metaName': instance.metaName,
          'iconName': instance.iconName,
          'hashtagVariants': instance.hashtagVariants,
        };

MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariantsFromJson(
        Map<String, dynamic> json) {
  return MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants(
    skillsAggregate: json['skillsAggregate'] == null
        ? null
        : MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$skillsAggregate
            .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
    requestsAggregate: json['requestsAggregate'] == null
        ? null
        : MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$requestsAggregate
            .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariantsToJson(
            MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants
                instance) =>
        <String, dynamic>{
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
        };

MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$skillsAggregate
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$skillsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$skillsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$skillsAggregateToJson(
            MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };

MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$requestsAggregate
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$requestsAggregateFromJson(
        Map<String, dynamic> json) {
  return MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$requestsAggregate(
    count: json['count'] as int?,
  );
}

Map<String, dynamic>
    _$MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$requestsAggregateToJson(
            MutationCreateSkill$addSkill$skill$hashtagVariants$hashtagMeta$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
        };
