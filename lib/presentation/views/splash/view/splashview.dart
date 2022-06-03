import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
import 'package:rimo_tech/presentation/helpers/customImages.dart';
import 'package:rimo_tech/presentation/views/splash/controller/cplash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: GetBuilder<SplashCOntroller>(
        builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 262.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 120.w),
                child: Container(
                  height: 116.h,
                  width: 175.w,
                  child: Image(
                    image: AssetImage(CustomImages.logo),
                  ),
                ),
              ),
              SizedBox(
                height: 140.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.w),
                child: Container(
                  height: 237.h,
                  width: 237.w,
                  child: Lottie.network(
                      'https://assets7.lottiefiles.com/packages/lf20_JO4FIR.json'),
                ),
              )
            ]),
      ),
    );
  }
}
