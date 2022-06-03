import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
import 'package:rimo_tech/presentation/helpers/customImages.dart';
import 'package:rimo_tech/presentation/views/onboarding/controller/onboarding_controller.dart';
import 'package:rimo_tech/presentation/widget/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<OnboardingController>(
      builder: (controller) => Column(
        children: [
          SizedBox(
            height: 65.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 140.w),
            child: Container(
              height: 20.h,
              width: 133.w,
              child: Image(
                image: AssetImage(
                  CustomImages.appname,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 79.h,
          ),
          Container(
            height: 336.h,
            width: 500.w,
            child: Image(
              image: AssetImage(
                CustomImages.onboarding,
              ),
              height: 500,
            ),
          ),
          SizedBox(
            height: 136.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38.w),
            child: customButton(
              'New Driver',
              () {},
              backgroundColor: AppColors.blue,
              fontColor: AppColors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 27.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38.w),
            child: customButton(
              'Login',
              () {
                controller.navigateToLogin();
              },
              backgroundColor: AppColors.blue,
              fontColor: AppColors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              outlined: true,
            ),
          ),
        ],
      ),
    ));
  }
}
