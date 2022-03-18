import 'package:gql/ast.dart';

abstract class FragmentHashtagVariantFragmentData {
  String get id;
  String get variant;
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
          name: NameNode(value: 'variant'),
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

abstract class FragmentHashtagFragmentData {
  String get id;
  String get name;
  String? get iconName;
  bool? get blessed;
  List<FragmentHashtagFragmentData$hashtagVariants?>? get hashtagVariants;
}

const FRAGMENT_HASHTAG_FRAGMENT_DATA = const FragmentDefinitionNode(
    name: NameNode(value: 'HashtagFragmentData'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Hashtag'), isNonNull: false)),
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

abstract class FragmentHashtagFragmentData$hashtagVariants
    implements FragmentHashtagVariantFragmentData {
  String get id;
  String get variant;
  FragmentHashtagFragmentData$hashtagVariants$skillsAggregate?
      get skillsAggregate;
  FragmentHashtagFragmentData$hashtagVariants$requestsAggregate?
      get requestsAggregate;
}

abstract class FragmentHashtagFragmentData$hashtagVariants$skillsAggregate
    implements FragmentHashtagVariantFragmentData$skillsAggregate {
  int? get count;
}

abstract class FragmentHashtagFragmentData$hashtagVariants$requestsAggregate
    implements FragmentHashtagVariantFragmentData$requestsAggregate {
  int? get count;
}
