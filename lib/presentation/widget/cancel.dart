import 'package:flutter/material.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget backButton({
  Function()? ontap,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: 40.h,
      width: 40.h,
      child: SizedBox(
        height: 35.h,
        width: 35.w,
        child: Icon(
          Icons.cancel_sharp,
          color: AppColors.black,
        ),
      ),
    ),
  );
}
