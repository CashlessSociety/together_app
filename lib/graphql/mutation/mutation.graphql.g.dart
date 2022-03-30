// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationCreateUser _$VariablesMutationCreateUserFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationCreateUser(
      email: json['email'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      createdTimestamp: json['createdTimestamp'] as String,
    );

Map<String, dynamic> _$VariablesMutationCreateUserToJson(
        VariablesMutationCreateUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'createdTimestamp': instance.createdTimestamp,
    };

MutationCreateUser _$MutationCreateUserFromJson(Map<String, dynamic> json) =>
    MutationCreateUser(
      addUser: json['addUser'] == null
          ? null
          : MutationCreateUser$addUser.fromJson(
              json['addUser'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateUserToJson(MutationCreateUser instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
      '__typename': instance.$__typename,
    };

MutationCreateUser$addUser _$MutationCreateUser$addUserFromJson(
        Map<String, dynamic> json) =>
    MutationCreateUser$addUser(
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationCreateUser$addUser$user.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateUser$addUserToJson(
        MutationCreateUser$addUser instance) =>
    <String, dynamic>{
      'user': instance.user,
      '__typename': instance.$__typename,
    };

MutationCreateUser$addUser$user _$MutationCreateUser$addUser$userFromJson(
        Map<String, dynamic> json) =>
    MutationCreateUser$addUser$user(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      isAdmin: json['isAdmin'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateUser$addUser$userToJson(
        MutationCreateUser$addUser$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'createdTimestamp': instance.createdTimestamp,
      '__typename': instance.$__typename,
    };

VariablesMutationCreateTester _$VariablesMutationCreateTesterFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationCreateTester(
      testerInfo: (json['testerInfo'] as List<dynamic>)
          .map((e) => InputAddUserInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VariablesMutationCreateTesterToJson(
        VariablesMutationCreateTester instance) =>
    <String, dynamic>{
      'testerInfo': instance.testerInfo,
    };

MutationCreateTester _$MutationCreateTesterFromJson(
        Map<String, dynamic> json) =>
    MutationCreateTester(
      addUser: json['addUser'] == null
          ? null
          : MutationCreateTester$addUser.fromJson(
              json['addUser'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateTesterToJson(
        MutationCreateTester instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
      '__typename': instance.$__typename,
    };

MutationCreateTester$addUser _$MutationCreateTester$addUserFromJson(
        Map<String, dynamic> json) =>
    MutationCreateTester$addUser(
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationCreateTester$addUser$user.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateTester$addUserToJson(
        MutationCreateTester$addUser instance) =>
    <String, dynamic>{
      'user': instance.user,
      '__typename': instance.$__typename,
    };

MutationCreateTester$addUser$user _$MutationCreateTester$addUser$userFromJson(
        Map<String, dynamic> json) =>
    MutationCreateTester$addUser$user(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      isAdmin: json['isAdmin'] as bool?,
      isTest: json['isTest'] as bool?,
      createdTimestamp: json['createdTimestamp'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateTester$addUser$userToJson(
        MutationCreateTester$addUser$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'isTest': instance.isTest,
      'createdTimestamp': instance.createdTimestamp,
      '__typename': instance.$__typename,
    };

MutationDeleteTester _$MutationDeleteTesterFromJson(
        Map<String, dynamic> json) =>
    MutationDeleteTester(
      deleteUser: json['deleteUser'] == null
          ? null
          : MutationDeleteTester$deleteUser.fromJson(
              json['deleteUser'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationDeleteTesterToJson(
        MutationDeleteTester instance) =>
    <String, dynamic>{
      'deleteUser': instance.deleteUser,
      '__typename': instance.$__typename,
    };

MutationDeleteTester$deleteUser _$MutationDeleteTester$deleteUserFromJson(
        Map<String, dynamic> json) =>
    MutationDeleteTester$deleteUser(
      numUids: json['numUids'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationDeleteTester$deleteUserToJson(
        MutationDeleteTester$deleteUser instance) =>
    <String, dynamic>{
      'numUids': instance.numUids,
      '__typename': instance.$__typename,
    };

VariablesMutationUpdateUser _$VariablesMutationUpdateUserFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationUpdateUser(
      id: json['id'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$VariablesMutationUpdateUserToJson(
        VariablesMutationUpdateUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bio': instance.bio,
      'avatar': instance.avatar,
    };

MutationUpdateUser _$MutationUpdateUserFromJson(Map<String, dynamic> json) =>
    MutationUpdateUser(
      updateUser: json['updateUser'] == null
          ? null
          : MutationUpdateUser$updateUser.fromJson(
              json['updateUser'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateUserToJson(MutationUpdateUser instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser,
      '__typename': instance.$__typename,
    };

MutationUpdateUser$updateUser _$MutationUpdateUser$updateUserFromJson(
        Map<String, dynamic> json) =>
    MutationUpdateUser$updateUser(
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationUpdateUser$updateUser$user.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateUser$updateUserToJson(
        MutationUpdateUser$updateUser instance) =>
    <String, dynamic>{
      'user': instance.user,
      '__typename': instance.$__typename,
    };

MutationUpdateUser$updateUser$user _$MutationUpdateUser$updateUser$userFromJson(
        Map<String, dynamic> json) =>
    MutationUpdateUser$updateUser$user(
      id: json['id'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateUser$updateUser$userToJson(
        MutationUpdateUser$updateUser$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bio': instance.bio,
      '__typename': instance.$__typename,
    };

VariablesMutationAddHashtag _$VariablesMutationAddHashtagFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationAddHashtag(
      name: json['name'] as String,
      iconName: json['iconName'] as String?,
      blessed: json['blessed'] as bool?,
      blessedInt: json['blessedInt'] as int?,
      defaultHashtagVariant: json['defaultHashtagVariant'] == null
          ? null
          : InputHashtagVariantRef.fromJson(
              json['defaultHashtagVariant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VariablesMutationAddHashtagToJson(
        VariablesMutationAddHashtag instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'blessedInt': instance.blessedInt,
      'defaultHashtagVariant': instance.defaultHashtagVariant,
    };

MutationAddHashtag _$MutationAddHashtagFromJson(Map<String, dynamic> json) =>
    MutationAddHashtag(
      addHashtag: json['addHashtag'] == null
          ? null
          : MutationAddHashtag$addHashtag.fromJson(
              json['addHashtag'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationAddHashtagToJson(MutationAddHashtag instance) =>
    <String, dynamic>{
      'addHashtag': instance.addHashtag,
      '__typename': instance.$__typename,
    };

MutationAddHashtag$addHashtag _$MutationAddHashtag$addHashtagFromJson(
        Map<String, dynamic> json) =>
    MutationAddHashtag$addHashtag(
      hashtag: (json['hashtag'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationAddHashtag$addHashtag$hashtag.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationAddHashtag$addHashtagToJson(
        MutationAddHashtag$addHashtag instance) =>
    <String, dynamic>{
      'hashtag': instance.hashtag,
      '__typename': instance.$__typename,
    };

MutationAddHashtag$addHashtag$hashtag
    _$MutationAddHashtag$addHashtag$hashtagFromJson(
            Map<String, dynamic> json) =>
        MutationAddHashtag$addHashtag$hashtag(
          id: json['id'] as String,
          name: json['name'] as String,
          iconName: json['iconName'] as String?,
          blessed: json['blessed'] as bool?,
          hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MutationAddHashtag$addHashtag$hashtag$hashtagVariants
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationAddHashtag$addHashtag$hashtagToJson(
        MutationAddHashtag$addHashtag$hashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
      '__typename': instance.$__typename,
    };

MutationAddHashtag$addHashtag$hashtag$hashtagVariants
    _$MutationAddHashtag$addHashtag$hashtag$hashtagVariantsFromJson(
            Map<String, dynamic> json) =>
        MutationAddHashtag$addHashtag$hashtag$hashtagVariants(
          id: json['id'] as String,
          variant: json['variant'] as String,
          skillsAggregate: json['skillsAggregate'] == null
              ? null
              : MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate
                  .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
          requestsAggregate: json['requestsAggregate'] == null
              ? null
              : MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate
                  .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationAddHashtag$addHashtag$hashtag$hashtagVariantsToJson(
            MutationAddHashtag$addHashtag$hashtag$hashtagVariants instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variant': instance.variant,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
          '__typename': instance.$__typename,
        };

MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate
    _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregateFromJson(
            Map<String, dynamic> json) =>
        MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate(
          count: json['count'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregateToJson(
            MutationAddHashtag$addHashtag$hashtag$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };

MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate
    _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregateFromJson(
            Map<String, dynamic> json) =>
        MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate(
          count: json['count'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregateToJson(
            MutationAddHashtag$addHashtag$hashtag$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };

VariablesMutationUpdateHashtag _$VariablesMutationUpdateHashtagFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationUpdateHashtag(
      hashtagInput: InputUpdateHashtagInput.fromJson(
          json['hashtagInput'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VariablesMutationUpdateHashtagToJson(
        VariablesMutationUpdateHashtag instance) =>
    <String, dynamic>{
      'hashtagInput': instance.hashtagInput,
    };

MutationUpdateHashtag _$MutationUpdateHashtagFromJson(
        Map<String, dynamic> json) =>
    MutationUpdateHashtag(
      updateHashtag: json['updateHashtag'] == null
          ? null
          : MutationUpdateHashtag$updateHashtag.fromJson(
              json['updateHashtag'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateHashtagToJson(
        MutationUpdateHashtag instance) =>
    <String, dynamic>{
      'updateHashtag': instance.updateHashtag,
      '__typename': instance.$__typename,
    };

MutationUpdateHashtag$updateHashtag
    _$MutationUpdateHashtag$updateHashtagFromJson(Map<String, dynamic> json) =>
        MutationUpdateHashtag$updateHashtag(
          hashtag: (json['hashtag'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MutationUpdateHashtag$updateHashtag$hashtag.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationUpdateHashtag$updateHashtagToJson(
        MutationUpdateHashtag$updateHashtag instance) =>
    <String, dynamic>{
      'hashtag': instance.hashtag,
      '__typename': instance.$__typename,
    };

MutationUpdateHashtag$updateHashtag$hashtag
    _$MutationUpdateHashtag$updateHashtag$hashtagFromJson(
            Map<String, dynamic> json) =>
        MutationUpdateHashtag$updateHashtag$hashtag(
          id: json['id'] as String,
          name: json['name'] as String,
          iconName: json['iconName'] as String?,
          blessed: json['blessed'] as bool?,
          hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationUpdateHashtag$updateHashtag$hashtagToJson(
        MutationUpdateHashtag$updateHashtag$hashtag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
      'blessed': instance.blessed,
      'hashtagVariants': instance.hashtagVariants,
      '__typename': instance.$__typename,
    };

MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants
    _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariantsFromJson(
            Map<String, dynamic> json) =>
        MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants(
          id: json['id'] as String,
          variant: json['variant'] as String,
          skillsAggregate: json['skillsAggregate'] == null
              ? null
              : MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate
                  .fromJson(json['skillsAggregate'] as Map<String, dynamic>),
          requestsAggregate: json['requestsAggregate'] == null
              ? null
              : MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate
                  .fromJson(json['requestsAggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariantsToJson(
            MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'variant': instance.variant,
          'skillsAggregate': instance.skillsAggregate,
          'requestsAggregate': instance.requestsAggregate,
          '__typename': instance.$__typename,
        };

MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate
    _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregateFromJson(
            Map<String, dynamic> json) =>
        MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate(
          count: json['count'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregateToJson(
            MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$skillsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };

MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate
    _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregateFromJson(
            Map<String, dynamic> json) =>
        MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate(
          count: json['count'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregateToJson(
            MutationUpdateHashtag$updateHashtag$hashtag$hashtagVariants$requestsAggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };

VariablesMutationDeleteHashtag _$VariablesMutationDeleteHashtagFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationDeleteHashtag(
      hashtagFilter: InputHashtagFilter.fromJson(
          json['hashtagFilter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VariablesMutationDeleteHashtagToJson(
        VariablesMutationDeleteHashtag instance) =>
    <String, dynamic>{
      'hashtagFilter': instance.hashtagFilter,
    };

MutationDeleteHashtag _$MutationDeleteHashtagFromJson(
        Map<String, dynamic> json) =>
    MutationDeleteHashtag(
      deleteHashtag: json['deleteHashtag'] == null
          ? null
          : MutationDeleteHashtag$deleteHashtag.fromJson(
              json['deleteHashtag'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationDeleteHashtagToJson(
        MutationDeleteHashtag instance) =>
    <String, dynamic>{
      'deleteHashtag': instance.deleteHashtag,
      '__typename': instance.$__typename,
    };

MutationDeleteHashtag$deleteHashtag
    _$MutationDeleteHashtag$deleteHashtagFromJson(Map<String, dynamic> json) =>
        MutationDeleteHashtag$deleteHashtag(
          msg: json['msg'] as String?,
          numUids: json['numUids'] as int?,
          hashtag: (json['hashtag'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MutationDeleteHashtag$deleteHashtag$hashtag.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationDeleteHashtag$deleteHashtagToJson(
        MutationDeleteHashtag$deleteHashtag instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'numUids': instance.numUids,
      'hashtag': instance.hashtag,
      '__typename': instance.$__typename,
    };

MutationDeleteHashtag$deleteHashtag$hashtag
    _$MutationDeleteHashtag$deleteHashtag$hashtagFromJson(
            Map<String, dynamic> json) =>
        MutationDeleteHashtag$deleteHashtag$hashtag(
          hashtagVariants: (json['hashtagVariants'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationDeleteHashtag$deleteHashtag$hashtagToJson(
        MutationDeleteHashtag$deleteHashtag$hashtag instance) =>
    <String, dynamic>{
      'hashtagVariants': instance.hashtagVariants,
      '__typename': instance.$__typename,
    };

MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants
    _$MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariantsFromJson(
            Map<String, dynamic> json) =>
        MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants(
          id: json['id'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariantsToJson(
            MutationDeleteHashtag$deleteHashtag$hashtag$hashtagVariants
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          '__typename': instance.$__typename,
        };

VariablesMutationDeleteHashtagVariant
    _$VariablesMutationDeleteHashtagVariantFromJson(
            Map<String, dynamic> json) =>
        VariablesMutationDeleteHashtagVariant(
          hashtagVariantFilter: InputHashtagVariantFilter.fromJson(
              json['hashtagVariantFilter'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VariablesMutationDeleteHashtagVariantToJson(
        VariablesMutationDeleteHashtagVariant instance) =>
    <String, dynamic>{
      'hashtagVariantFilter': instance.hashtagVariantFilter,
    };

MutationDeleteHashtagVariant _$MutationDeleteHashtagVariantFromJson(
        Map<String, dynamic> json) =>
    MutationDeleteHashtagVariant(
      deleteHashtagVariant: json['deleteHashtagVariant'] == null
          ? null
          : MutationDeleteHashtagVariant$deleteHashtagVariant.fromJson(
              json['deleteHashtagVariant'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationDeleteHashtagVariantToJson(
        MutationDeleteHashtagVariant instance) =>
    <String, dynamic>{
      'deleteHashtagVariant': instance.deleteHashtagVariant,
      '__typename': instance.$__typename,
    };

MutationDeleteHashtagVariant$deleteHashtagVariant
    _$MutationDeleteHashtagVariant$deleteHashtagVariantFromJson(
            Map<String, dynamic> json) =>
        MutationDeleteHashtagVariant$deleteHashtagVariant(
          msg: json['msg'] as String?,
          numUids: json['numUids'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationDeleteHashtagVariant$deleteHashtagVariantToJson(
        MutationDeleteHashtagVariant$deleteHashtagVariant instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'numUids': instance.numUids,
      '__typename': instance.$__typename,
    };

VariablesMutationCreateSkill _$VariablesMutationCreateSkillFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationCreateSkill(
      addHashtagInputList: (json['addHashtagInputList'] as List<dynamic>)
          .map((e) => InputAddHashtagInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      addSkillInput: InputAddSkillInput.fromJson(
          json['addSkillInput'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VariablesMutationCreateSkillToJson(
        VariablesMutationCreateSkill instance) =>
    <String, dynamic>{
      'addHashtagInputList': instance.addHashtagInputList,
      'addSkillInput': instance.addSkillInput,
    };

MutationCreateSkill _$MutationCreateSkillFromJson(Map<String, dynamic> json) =>
    MutationCreateSkill(
      addHashtag: json['addHashtag'] == null
          ? null
          : MutationCreateSkill$addHashtag.fromJson(
              json['addHashtag'] as Map<String, dynamic>),
      addSkill: json['addSkill'] == null
          ? null
          : MutationCreateSkill$addSkill.fromJson(
              json['addSkill'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateSkillToJson(
        MutationCreateSkill instance) =>
    <String, dynamic>{
      'addHashtag': instance.addHashtag,
      'addSkill': instance.addSkill,
      '__typename': instance.$__typename,
    };

MutationCreateSkill$addHashtag _$MutationCreateSkill$addHashtagFromJson(
        Map<String, dynamic> json) =>
    MutationCreateSkill$addHashtag(
      numUids: json['numUids'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateSkill$addHashtagToJson(
        MutationCreateSkill$addHashtag instance) =>
    <String, dynamic>{
      'numUids': instance.numUids,
      '__typename': instance.$__typename,
    };

MutationCreateSkill$addSkill _$MutationCreateSkill$addSkillFromJson(
        Map<String, dynamic> json) =>
    MutationCreateSkill$addSkill(
      skill: (json['skill'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationCreateSkill$addSkill$skill.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateSkill$addSkillToJson(
        MutationCreateSkill$addSkill instance) =>
    <String, dynamic>{
      'skill': instance.skill,
      '__typename': instance.$__typename,
    };

MutationCreateSkill$addSkill$skill _$MutationCreateSkill$addSkill$skillFromJson(
        Map<String, dynamic> json) =>
    MutationCreateSkill$addSkill$skill(
      id: json['id'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateSkill$addSkill$skillToJson(
        MutationCreateSkill$addSkill$skill instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };

VariablesMutationUpdateSkill _$VariablesMutationUpdateSkillFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationUpdateSkill(
      skillId: json['skillId'] as String,
      addHashtagInputList: (json['addHashtagInputList'] as List<dynamic>)
          .map((e) => InputAddHashtagInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      message: json['message'] as String,
      isAvailable: json['isAvailable'] as bool,
      hashtagsToSave: (json['hashtagsToSave'] as List<dynamic>)
          .map(
              (e) => InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      hashtagsToDelete: (json['hashtagsToDelete'] as List<dynamic>)
          .map(
              (e) => InputHashtagVariantRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VariablesMutationUpdateSkillToJson(
        VariablesMutationUpdateSkill instance) =>
    <String, dynamic>{
      'skillId': instance.skillId,
      'addHashtagInputList': instance.addHashtagInputList,
      'title': instance.title,
      'message': instance.message,
      'isAvailable': instance.isAvailable,
      'hashtagsToSave': instance.hashtagsToSave,
      'hashtagsToDelete': instance.hashtagsToDelete,
    };

MutationUpdateSkill _$MutationUpdateSkillFromJson(Map<String, dynamic> json) =>
    MutationUpdateSkill(
      addHashtag: json['addHashtag'] == null
          ? null
          : MutationUpdateSkill$addHashtag.fromJson(
              json['addHashtag'] as Map<String, dynamic>),
      updateSkill: json['updateSkill'] == null
          ? null
          : MutationUpdateSkill$updateSkill.fromJson(
              json['updateSkill'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateSkillToJson(
        MutationUpdateSkill instance) =>
    <String, dynamic>{
      'addHashtag': instance.addHashtag,
      'updateSkill': instance.updateSkill,
      '__typename': instance.$__typename,
    };

MutationUpdateSkill$addHashtag _$MutationUpdateSkill$addHashtagFromJson(
        Map<String, dynamic> json) =>
    MutationUpdateSkill$addHashtag(
      numUids: json['numUids'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateSkill$addHashtagToJson(
        MutationUpdateSkill$addHashtag instance) =>
    <String, dynamic>{
      'numUids': instance.numUids,
      '__typename': instance.$__typename,
    };

MutationUpdateSkill$updateSkill _$MutationUpdateSkill$updateSkillFromJson(
        Map<String, dynamic> json) =>
    MutationUpdateSkill$updateSkill(
      skill: (json['skill'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationUpdateSkill$updateSkill$skill.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateSkill$updateSkillToJson(
        MutationUpdateSkill$updateSkill instance) =>
    <String, dynamic>{
      'skill': instance.skill,
      '__typename': instance.$__typename,
    };

MutationUpdateSkill$updateSkill$skill
    _$MutationUpdateSkill$updateSkill$skillFromJson(
            Map<String, dynamic> json) =>
        MutationUpdateSkill$updateSkill$skill(
          id: json['id'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationUpdateSkill$updateSkill$skillToJson(
        MutationUpdateSkill$updateSkill$skill instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };

VariablesMutationUpdateSkillAvailable
    _$VariablesMutationUpdateSkillAvailableFromJson(
            Map<String, dynamic> json) =>
        VariablesMutationUpdateSkillAvailable(
          skillId: json['skillId'] as String,
          isAvailable: json['isAvailable'] as bool,
        );

Map<String, dynamic> _$VariablesMutationUpdateSkillAvailableToJson(
        VariablesMutationUpdateSkillAvailable instance) =>
    <String, dynamic>{
      'skillId': instance.skillId,
      'isAvailable': instance.isAvailable,
    };

MutationUpdateSkillAvailable _$MutationUpdateSkillAvailableFromJson(
        Map<String, dynamic> json) =>
    MutationUpdateSkillAvailable(
      updateSkill: json['updateSkill'] == null
          ? null
          : MutationUpdateSkillAvailable$updateSkill.fromJson(
              json['updateSkill'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationUpdateSkillAvailableToJson(
        MutationUpdateSkillAvailable instance) =>
    <String, dynamic>{
      'updateSkill': instance.updateSkill,
      '__typename': instance.$__typename,
    };

MutationUpdateSkillAvailable$updateSkill
    _$MutationUpdateSkillAvailable$updateSkillFromJson(
            Map<String, dynamic> json) =>
        MutationUpdateSkillAvailable$updateSkill(
          skill: (json['skill'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MutationUpdateSkillAvailable$updateSkill$skill.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationUpdateSkillAvailable$updateSkillToJson(
        MutationUpdateSkillAvailable$updateSkill instance) =>
    <String, dynamic>{
      'skill': instance.skill,
      '__typename': instance.$__typename,
    };

MutationUpdateSkillAvailable$updateSkill$skill
    _$MutationUpdateSkillAvailable$updateSkill$skillFromJson(
            Map<String, dynamic> json) =>
        MutationUpdateSkillAvailable$updateSkill$skill(
          isAvailable: json['isAvailable'] as bool?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationUpdateSkillAvailable$updateSkill$skillToJson(
        MutationUpdateSkillAvailable$updateSkill$skill instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      '__typename': instance.$__typename,
    };

VariablesMutationRemoveSkill _$VariablesMutationRemoveSkillFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationRemoveSkill(
      skillId: json['skillId'] as String,
    );

Map<String, dynamic> _$VariablesMutationRemoveSkillToJson(
        VariablesMutationRemoveSkill instance) =>
    <String, dynamic>{
      'skillId': instance.skillId,
    };

MutationRemoveSkill _$MutationRemoveSkillFromJson(Map<String, dynamic> json) =>
    MutationRemoveSkill(
      deleteSkill: json['deleteSkill'] == null
          ? null
          : MutationRemoveSkill$deleteSkill.fromJson(
              json['deleteSkill'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationRemoveSkillToJson(
        MutationRemoveSkill instance) =>
    <String, dynamic>{
      'deleteSkill': instance.deleteSkill,
      '__typename': instance.$__typename,
    };

MutationRemoveSkill$deleteSkill _$MutationRemoveSkill$deleteSkillFromJson(
        Map<String, dynamic> json) =>
    MutationRemoveSkill$deleteSkill(
      skill: (json['skill'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationRemoveSkill$deleteSkill$skill.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationRemoveSkill$deleteSkillToJson(
        MutationRemoveSkill$deleteSkill instance) =>
    <String, dynamic>{
      'skill': instance.skill,
      '__typename': instance.$__typename,
    };

MutationRemoveSkill$deleteSkill$skill
    _$MutationRemoveSkill$deleteSkill$skillFromJson(
            Map<String, dynamic> json) =>
        MutationRemoveSkill$deleteSkill$skill(
          id: json['id'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationRemoveSkill$deleteSkill$skillToJson(
        MutationRemoveSkill$deleteSkill$skill instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };

VariablesMutationCreateTestGratitude
    _$VariablesMutationCreateTestGratitudeFromJson(Map<String, dynamic> json) =>
        VariablesMutationCreateTestGratitude(
          info: (json['info'] as List<dynamic>)
              .map((e) =>
                  InputAddGratitudeInput.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$VariablesMutationCreateTestGratitudeToJson(
        VariablesMutationCreateTestGratitude instance) =>
    <String, dynamic>{
      'info': instance.info,
    };

MutationCreateTestGratitude _$MutationCreateTestGratitudeFromJson(
        Map<String, dynamic> json) =>
    MutationCreateTestGratitude(
      addGratitude: json['addGratitude'] == null
          ? null
          : MutationCreateTestGratitude$addGratitude.fromJson(
              json['addGratitude'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateTestGratitudeToJson(
        MutationCreateTestGratitude instance) =>
    <String, dynamic>{
      'addGratitude': instance.addGratitude,
      '__typename': instance.$__typename,
    };

MutationCreateTestGratitude$addGratitude
    _$MutationCreateTestGratitude$addGratitudeFromJson(
            Map<String, dynamic> json) =>
        MutationCreateTestGratitude$addGratitude(
          numUids: json['numUids'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationCreateTestGratitude$addGratitudeToJson(
        MutationCreateTestGratitude$addGratitude instance) =>
    <String, dynamic>{
      'numUids': instance.numUids,
      '__typename': instance.$__typename,
    };

MutationDeleteTestGratitude _$MutationDeleteTestGratitudeFromJson(
        Map<String, dynamic> json) =>
    MutationDeleteTestGratitude(
      deleteGratitude: json['deleteGratitude'] == null
          ? null
          : MutationDeleteTestGratitude$deleteGratitude.fromJson(
              json['deleteGratitude'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationDeleteTestGratitudeToJson(
        MutationDeleteTestGratitude instance) =>
    <String, dynamic>{
      'deleteGratitude': instance.deleteGratitude,
      '__typename': instance.$__typename,
    };

MutationDeleteTestGratitude$deleteGratitude
    _$MutationDeleteTestGratitude$deleteGratitudeFromJson(
            Map<String, dynamic> json) =>
        MutationDeleteTestGratitude$deleteGratitude(
          numUids: json['numUids'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationDeleteTestGratitude$deleteGratitudeToJson(
        MutationDeleteTestGratitude$deleteGratitude instance) =>
    <String, dynamic>{
      'numUids': instance.numUids,
      '__typename': instance.$__typename,
    };
