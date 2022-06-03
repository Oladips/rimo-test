import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
import 'package:rimo_tech/presentation/views/login/controller/login_controller.dart';
import 'package:rimo_tech/presentation/widget/cancel.dart';
import 'package:rimo_tech/presentation/widget/custom_text.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<LoginController>(
      builder: (controller) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 36.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: backButton(
                    ontap: () {},
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.w),
                  child: customText(
                    'MY ORDERS',
                    18.sp,
                    FontWeight.w700,
                    AppColors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 62.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 29.w),
              child: customText(
                'New order',
                16.sp,
                FontWeight.w700,
                AppColors.black,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 375.w,
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.grey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        children: [
                          customText(
                            'N2800',
                            16.sp,
                            FontWeight.w700,
                            AppColors.black,
                          ),
                          SizedBox(
                            width: 76.w,
                          ),
                          customText(
                            '5.3km',
                            16.sp,
                            FontWeight.w500,
                            AppColors.textgrey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          customText(
                            'Ojota New Garage, Ikorodu Road',
                            16.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                          SizedBox(
                            width: 72.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: SizedBox(
                              height: 16.h,
                              width: 8.w,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.darkgreen,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          customText(
                            'House 8, ikate lekki, lagos island',
                            16.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                          SizedBox(
                            width: 72.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: SizedBox(
                              height: 16.h,
                              width: 8.w,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 38.w,
                top: 9.h,
                right: 38.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 135.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.green,
                    ),
                    child: Center(
                      child: customText(
                        'Accept',
                        16.sp,
                        FontWeight.w700,
                        AppColors.darkgreen,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 67.w,
                  ),
                  Container(
                    width: 135.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.lightred,
                    ),
                    child: Center(
                      child: customText(
                        'Decline',
                        16.sp,
                        FontWeight.w700,
                        AppColors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 375.w,
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.grey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        children: [
                          customText(
                            'N1600',
                            16.sp,
                            FontWeight.w700,
                            AppColors.black,
                          ),
                          SizedBox(
                            width: 76.w,
                          ),
                          customText(
                            '8.3km',
                            16.sp,
                            FontWeight.w500,
                            AppColors.textgrey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          customText(
                            'Shop 9, Balogun, Ikeja Airport Road',
                            16.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                          SizedBox(
                            width: 72.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: SizedBox(
                              height: 16.h,
                              width: 8.w,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.darkgreen,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          customText(
                            'Ketu Tipper garage, Ikorodu road',
                            16.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                          SizedBox(
                            width: 72.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: SizedBox(
                              height: 16.h,
                              width: 8.w,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 38.w,
                top: 9.h,
                right: 38.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 135.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.green,
                    ),
                    child: Center(
                      child: customText(
                        'Accept',
                        16.sp,
                        FontWeight.w700,
                        AppColors.darkgreen,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 67.w,
                  ),
                  Container(
                    width: 135.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.lightred,
                    ),
                    child: Center(
                      child: customText(
                        'Decline',
                        16.sp,
                        FontWeight.w700,
                        AppColors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            Divider(
              thickness: 3,
            ),
            Padding(
              padding: EdgeInsets.only(left: 29.w),
              child: customText(
                'Active order',
                16.sp,
                FontWeight.w700,
                AppColors.black,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 49.w),
              child: customText(
                '3:43PM',
                16.sp,
                FontWeight.w700,
                AppColors.textgrey,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Container(
                width: 359.w,
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.green,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        children: [
                          customText(
                            'ORDER NO:',
                            12.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                          customText(
                            '7373',
                            17.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        children: [
                          Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          customText(
                            '2, Allen Avenue, Toyin Roundabout, Ikeja',
                            16.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 9.h),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.darkgreen,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          customText(
                            'Tipper Garage, Ketu Busstop, Ikd. Road',
                            16.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
