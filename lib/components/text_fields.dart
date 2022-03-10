import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:detectable_text_field/widgets/detectable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineTextField extends StatelessWidget {
  final Widget? label;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final int? minLines;
  final int? maxLines;

  const OutlineTextField({
    Key? key,
    this.label,
    this.onChanged,
    this.style,
    this.textInputAction,
    this.contentPadding,
    this.minLines,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      minLines: minLines,
      maxLines: maxLines,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        label: label,
        alignLabelWithHint: true,
        contentPadding: contentPadding,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: const BorderSide(color: Colors.blue, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
      ),
      onChanged: onChanged,
    );
  }
}

class OutlineDetectableTextField extends StatelessWidget {
  final Widget? label;
  final TextStyle? basicStyle;
  final TextStyle? decoratedStyle;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final int? minLines;
  final int? maxLines;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onDetectionTyped;
  final GestureTapCallback? onTap;

  const OutlineDetectableTextField({
    Key? key,
    this.label,
    this.basicStyle,
    this.decoratedStyle,
    this.textInputAction,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.onDetectionTyped,
    this.onChanged,
    this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetectableTextField(
      controller: controller,
      detectionRegExp: hashTagRegExp,
      basicStyle: basicStyle,
      decoratedStyle: decoratedStyle,
      minLines: minLines,
      maxLines: maxLines,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        label: label,
        alignLabelWithHint: true,
        contentPadding: contentPadding,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: const BorderSide(color: Colors.blue, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
      ),
      onChanged: onChanged,
      onDetectionTyped: onDetectionTyped,
      onTap: onTap,
    );
  }
}
