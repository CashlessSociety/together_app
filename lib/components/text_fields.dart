import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:detectable_text_field/widgets/detectable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineTextField extends StatelessWidget {
  final Widget? label;
  final String? hintText;
  final String? helperText;
  final int? helperMaxLines;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final TextEditingController? controller;

  const OutlineTextField({
    Key? key,
    this.label,
    this.hintText,
    this.helperText,
    this.helperMaxLines,
    this.hintStyle,
    this.onChanged,
    this.style,
    this.textInputAction,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      controller: controller,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        label: label,
        alignLabelWithHint: true,
        hintText: hintText,
        hintStyle: hintStyle,
        helperText: helperText,
        helperMaxLines: helperMaxLines,
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
  final FocusNode? focusNode;
  final Widget? label;
  final TextStyle? basicStyle;
  final TextStyle? decoratedStyle;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onDetectionTyped;
  final GestureTapCallback? onTap;

  const OutlineDetectableTextField({
    Key? key,
    this.focusNode,
    this.label,
    this.basicStyle,
    this.decoratedStyle,
    this.textInputAction,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.onDetectionTyped,
    this.onChanged,
    this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetectableTextField(
      focusNode: focusNode,
      controller: controller,
      detectionRegExp: hashTagRegExp,
      basicStyle: basicStyle,
      decoratedStyle: decoratedStyle,
      minLines: minLines,
      maxLines: maxLines,
      textInputAction: textInputAction,
      maxLength: maxLength,
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
