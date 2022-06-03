import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
import 'package:rimo_tech/presentation/widget/custom_text.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 47.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 122.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.transp,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: 122.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.transp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 134.w,
                ),
                Container(
                  width: 29.w,
                  height: 16.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.transp,
                  ),
                ),
                SizedBox(
                  width: 23.w,
                ),
                Container(
                  width: 46.w,
                  height: 46.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: AppColors.transp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 63.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Container(
              width: 378.w,
              height: 240.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: AppColors.transp,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Container(
              width: 367.w,
              height: 58.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: AppColors.transp,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Container(
              width: 367.w,
              height: 58.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: AppColors.transp,
              ),
            ),
          ),
          SizedBox(
            height: 34.h,
          ),
          Container(
            width: 43.w,
            height: 43.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: AppColors.transp,
            ),
            child: CircularProgressIndicator(
              color: AppColors.black,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          Container(
              width: 205.w,
              height: 35.h,
              child: customText(
                'Loading Dashboard',
                20.sp,
                FontWeight.w800,
                AppColors.black,
              )),
        ],
      ),
    );
  }
}
