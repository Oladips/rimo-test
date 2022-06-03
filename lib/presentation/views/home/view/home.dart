import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
import 'package:rimo_tech/presentation/helpers/customImages.dart';
import 'package:rimo_tech/presentation/views/home/controller/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rimo_tech/presentation/widget/custom_button.dart';
import 'package:rimo_tech/presentation/widget/custom_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) => Stack(
          children: [
            GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: HomeController.kGooglePlex,
              // onMapCreated: (GoogleMapController controller) {
              //   _controller.complete(controller);
              // },
            ),
            Positioned(
              top: 27.h,
              left: 15.w,
              child: Container(
                width: 43.w,
                height: 43.h,
                child: Image(
                  image: AssetImage(CustomImages.sound),
                ),
              ),
            ),
            Positioned(
              top: 27.h,
              left: 147.w,
              right: 147.w,
              child: Container(
                  width: 43.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.black,
                  ),
                  child: customText(
                    '${controller.text}',
                    16.sp,
                    FontWeight.w500,
                    AppColors.white,
                  )),
            ),
            Positioned(
              top: 27.h,
              right: 15.w,
              child: Container(
                width: 43.w,
                height: 43.h,
                child: Image(
                  image: AssetImage(CustomImages.options),
                ),
              ),
            ),
            Positioned(
              top: 437.h,
              left: 25.w,
              child: GestureDetector(
                onTap: () {
                  controller.navigateToOrder();
                },
                child: Container(
                  width: 69.w,
                  height: 65.h,
                  child: Image(
                    image: AssetImage(CustomImages.box),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 605.h,
              right: 14.w,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50.w,
                  height: 50.h,
                  child: Image(
                    image: AssetImage(CustomImages.arrow),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.h,
              top: 745.h,
              child: Container(
                color: Colors.white,
                width: 414.w,
                height: 168.h,
              ),
            ),
            Positioned(
              left: 25.w,
              top: 770.h,
              child: Container(
                color: Colors.white,
                // width: 110.w,
                height: 35.h,
                child: customText(
                  'Hi ${controller.test}',
                  21.sp,
                  FontWeight.w600,
                  AppColors.black,
                ),
                // child: Image(
                //   image: AssetImage(CustomImages.arrow),
                // ),
              ),
            ),
            Positioned(
              left: 25.w,
              top: 801.h,
              child: Container(
                color: Colors.white,
                // width: 110.w,
                height: 35.h,
                child: customText(
                  'You are offline',
                  18.sp,
                  FontWeight.w400,
                  AppColors.black,
                ),
                // child: Image(
                //   image: AssetImage(CustomImages.arrow),
                // ),
              ),
            ),
            Positioned(
              right: 25.w,
              top: 775.h,
              child: Container(
                color: Colors.white,
                width: 135.w,
                height: 45.h,
                child: customButton(
                  'Go online',
                  () {},
                  backgroundColor: AppColors.green,
                  fontColor: AppColors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
