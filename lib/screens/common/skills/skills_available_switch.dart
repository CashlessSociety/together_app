import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:together_app/graphql/mutation/mutation.graphql.dart';

class SkillAvailableSwitch extends StatefulWidget {
  final String skillId;
  final bool isAvailable;
  final ValueChanged<bool> onChanged;
  const SkillAvailableSwitch({
    Key? key,
    required this.skillId,
    required this.isAvailable,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<SkillAvailableSwitch> createState() => _SkillAvailableSwitchState();
}

class _SkillAvailableSwitchState extends State<SkillAvailableSwitch> {
  bool isAvailable = false;
  GraphQLClient? gqlClient;

  void onUpdateSkillAvailable(bool value) {
    gqlClient!.mutateUpdateSkillAvailable(
      GQLOptionsMutationUpdateSkillAvailable(
          variables: VariablesMutationUpdateSkillAvailable(
            isAvailable: value,
            skillId: widget.skillId,
          ),
          onCompleted: (result, MutationUpdateSkillAvailable? data) {
            bool? isAvailable = data?.updateSkill?.skill?[0]?.isAvailable;
            if (isAvailable != null) {
              showToast('Availablity updated');
              widget.onChanged(isAvailable);
            } else {
              showToast('Unable to update');
            }
          }),
    );
  }

  @override
  void initState() {
    isAvailable = widget.isAvailable;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final GraphQLClient client = GraphQLProvider.of(context).value;
    if (client != gqlClient) {
      gqlClient = client;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 40.w,
          child: Switch(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Colors.green,
            splashRadius: 0,
            value: isAvailable,
            onChanged: (value) {
              setState(() {
                isAvailable = value;
              });
              onUpdateSkillAvailable(value);
            },
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          "Available",
          style: TextStyle(fontSize: 14.sp),
        )
      ],
    );
  }
}
