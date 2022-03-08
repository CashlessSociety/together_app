import 'package:gql/ast.dart';

abstract class FragmentHashtagVariantFragmentData {
  String get id;
  String get variantName;
  FragmentHashtagVariantFragmentData$skillsAggregate? get skillsAggregate;
  FragmentHashtagVariantFragmentData$requestsAggregate? get requestsAggregate;
}

const FRAGMENT_HASHTAG_VARIANT_FRAGMENT_DATA = const FragmentDefinitionNode(
    name: NameNode(value: 'HashtagVariantFragmentData'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'HashtagVariant'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'variantName'),
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

abstract class FragmentHashtagVariantFragmentData$skillsAggregate {
  int? get count;
}

abstract class FragmentHashtagVariantFragmentData$requestsAggregate {
  int? get count;
}

abstract class FragmentHashtagMetaFragmentData {
  String get id;
  String get metaName;
  String? get iconName;
  bool? get blessed;
  List<FragmentHashtagMetaFragmentData$hashtagVariants?>? get hashtagVariants;
}

const FRAGMENT_HASHTAG_META_FRAGMENT_DATA = const FragmentDefinitionNode(
    name: NameNode(value: 'HashtagMetaFragmentData'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'HashtagMeta'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'metaName'),
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
          name: NameNode(value: 'hashtagVariants'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
                name: NameNode(value: 'HashtagVariantFragmentData'),
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
    ]));

abstract class FragmentHashtagMetaFragmentData$hashtagVariants
    implements FragmentHashtagVariantFragmentData {
  String get id;
  String get variantName;
  FragmentHashtagMetaFragmentData$hashtagVariants$skillsAggregate?
      get skillsAggregate;
  FragmentHashtagMetaFragmentData$hashtagVariants$requestsAggregate?
      get requestsAggregate;
}

abstract class FragmentHashtagMetaFragmentData$hashtagVariants$skillsAggregate
    implements FragmentHashtagVariantFragmentData$skillsAggregate {
  int? get count;
}

abstract class FragmentHashtagMetaFragmentData$hashtagVariants$requestsAggregate
    implements FragmentHashtagVariantFragmentData$requestsAggregate {
  int? get count;
}
