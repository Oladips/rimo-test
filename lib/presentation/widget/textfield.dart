import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
Widget customTextField({
  final String? hint,
  final String? label,
  final String? errorText,
  final bool? filled,
  final bool? obscureText,
  final Color? textcolor,
  final Color? baseDecorationColor,
  final Color? fillColor,
  final Color? errorColor,
  final double? fontsize,
  final double? writingFont,
  final TextInputAction? textInputAction,
  final Widget? suffixWidget,
  final FontWeight? fontWeight,
  final TextInputType? keyboardType,
  final TextEditingController? controller,
  final String? Function(String?)? validator,
  final Function(String)? onchanged,
}) {
  final _border = OutlineInputBorder(
    borderSide: BorderSide(
      width: 3,
      color: AppColors.blue,
    ),
    borderRadius: BorderRadius.all(Radius.circular(16.r)),
  );
  return TextField(
    keyboardType: keyboardType,
    textInputAction: textInputAction,
    textAlign: TextAlign.start,
    textAlignVertical: TextAlignVertical.center,
    cursorHeight: 20.h,
    cursorColor: AppColors.blue,
    style: TextStyle(
      fontFamily: 'SF Pro Text',
      fontSize: 16.sp,
      color: baseDecorationColor,
      fontWeight: FontWeight.w600,
    ),
    obscureText: obscureText!,
    controller: controller,
    onChanged: onchanged,
    decoration: InputDecoration(
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        borderSide: BorderSide(
          width: 3,
          color: AppColors.blue,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        borderSide: BorderSide(
          color: AppColors.blue,
          width: 3,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        borderSide: BorderSide(
          color: AppColors.blue,
          width: 3,
        ),
      ),
      contentPadding: EdgeInsets.only(top: 40.h, left: 16.w, bottom: 0.h),
      // helperText: 'help',
      filled: filled,
      fillColor: fillColor,
      focusColor: baseDecorationColor,
      border: _border,
      labelText: label,
      hintText: hint,
      errorText: errorText,
      suffix: suffixWidget,
      suffixStyle: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: fontsize,
        color: baseDecorationColor,
      ),
      labelStyle: TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: fontsize,
          color: baseDecorationColor,
          fontWeight: fontWeight),
      hintStyle: TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: fontsize,
          color: baseDecorationColor,
          fontWeight: fontWeight),
      errorStyle: TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: fontsize,
          color: errorColor,
          fontWeight: fontWeight),
    ),
  );
}
