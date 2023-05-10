// ignore_for_file: sort_child_properties_last
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vivatech_interview/utills/AppColors.dart';
import 'package:vivatech_interview/utills/AppStrings.dart';
import 'package:vivatech_interview/utills/textStyles.dart';

Widget CommonTextFeild({
  TextEditingController? controller,
  required String hintText,
  TextStyle? hintStyle,
  TextStyle? textStyle,
  bool isPass = false,
  bool readOnly = false,
  GestureTapCallback? onTap,
  bool? filled,
  InputBorder? border,
  Color? borderColor,
  Color? filledColor,
  TextInputType? keyboardType,
  Widget? suffix,
  Widget? prefix,
  TextAlign textAlign = TextAlign.start,
  bool isDense = false,
  FormFieldValidator<String>? validator,
  ValueChanged<String>? onChanged,
  int? maxLength,
  int? maxLines = 1,
  List<TextInputFormatter>? inputFormatters,
}) {
  bool ispassVisible = true;
  return StatefulBuilder(builder: (context, newSetState) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 1),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textAlign: textAlign,
        onTap: onTap,
        controller: controller,
        cursorColor: colorPrimary,
        keyboardType: keyboardType,
        obscureText: isPass ? ispassVisible : isPass,
        style: textStyle ?? colorFFFFFFs18w700,
        onChanged: onChanged,
        readOnly: readOnly,
        maxLength: maxLength,
        textInputAction: TextInputAction.next,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          prefixIcon: prefix,
          hintText: hintText,
          counterText: "",
          hintStyle: hintStyle ??
              colorFFFFFFs18w700.copyWith(
                  color: colorFFFFFF.withOpacity(0.7),
                  fontWeight: FontWeight.w400),
          fillColor: filledColor ?? colorFFFFFF.withOpacity(0.1),
          filled: filled ?? true,
          errorStyle: const TextStyle(
            fontSize: 16.0,
          ),
          enabledBorder: border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: borderColor ?? color00B2FF),
              ),
          focusedBorder: border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: borderColor ?? color00B2FF),
              ),
          errorBorder: border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: red),
              ),
          focusedErrorBorder: border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: red),
              ),
          suffixIcon: isPass
              ? InkWell(
                  onTap: () {
                    newSetState(() {
                      ispassVisible = !ispassVisible;
                    });
                  },
                  child: Icon(
                      ispassVisible
                          ? Icons.visibility_off
                          : Icons.visibility_rounded,
                      color: color00B2FF),
                )
              : suffix,
        ),
        maxLines: maxLines,
        validator: validator,
      ),
    );
  });
}

Widget commonColorButton(
    {required GestureTapCallback onTap,
    required String name,
    double? width,
    double? height,
    TextStyle? style,
    List<Color>? gradientColor,
    Color? color,
    double? radius,
    Border? border}) {
  return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        height: height ?? 55,
        width: width ?? double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 50),
            color: color ?? color00B2FF,
            border: border),
        padding: const EdgeInsets.all(6),
        child: Center(
            child: Text(
          name,
          style: style ?? colorFFFFFFs18w700,
        )),
      ));
}

InkWell CommonIconButton(BuildContext context,
    {GestureTapCallback? onTap, required IconData icon, int? iconSize}) {
  return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color000000,
            boxShadow: [
              BoxShadow(
                color: color00B2FF.withOpacity(0.2),
                blurRadius: 3,
                spreadRadius: 3,
              )
            ]),
        padding: const EdgeInsets.all(8),
        child: Icon(icon, color: color00B2FF, size: 30),
      ));
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return Emailisrequired.tr;
  } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
    return InvalidEmailAddress.tr;
  }
  return null;
}

String? validatePassword(String? value) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.isEmpty) {
    return PasswordShouldContain.tr;
  } else if (!regExp.hasMatch(value)) {
    return PasswordShouldContain.tr;
  }
  return null;
}


