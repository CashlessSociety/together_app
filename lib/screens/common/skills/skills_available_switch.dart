import 'package:flutter/material.dart';

class SkillAvailableSwitch extends StatefulWidget {
  final String skillId;
  final bool isAvailable;
  const SkillAvailableSwitch({
    Key? key,
    required this.skillId,
    required this.isAvailable,
  }) : super(key: key);

  @override
  State<SkillAvailableSwitch> createState() => _SkillAvailableSwitchState();
}

class _SkillAvailableSwitchState extends State<SkillAvailableSwitch> {
  bool isAvailable = false;

  @override
  void initState() {
    isAvailable = widget.isAvailable;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Switch(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: Colors.green,
          value: isAvailable,
          onChanged: (value) {
            setState(() {
              isAvailable = value;
            });
          },
        ),
        Text("Available")
      ],
    );
  }
}
