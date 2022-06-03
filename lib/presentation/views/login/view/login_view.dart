import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rimo_tech/presentation/helpers/colors.dart';
import 'package:rimo_tech/presentation/helpers/customImages.dart';
import 'package:rimo_tech/presentation/views/login/controller/login_controller.dart';
import 'package:rimo_tech/presentation/widget/cancel.dart';
import 'package:rimo_tech/presentation/widget/custom_button.dart';
import 'package:rimo_tech/presentation/widget/custom_text.dart';
import 'package:rimo_tech/presentation/widget/loading.dart';
import 'package:rimo_tech/presentation/widget/textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<LoginController>(
      builder: (controller) => controller.isLoading.value == true
          ? Loading()
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 28.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: backButton(
                      ontap: () {},
                    ),
                  ),
                  SizedBox(
                    height: 93.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: customText(
                      'Enter Phone Number',
                      22.sp,
                      FontWeight.w800,
                      AppColors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: Column(
                      children: [
                        Container(
                          height: 42.h,
                          child: customText(
                            'Login with your registered phone nrumber',
                            14.sp,
                            FontWeight.w500,
                            AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 46.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.w),
                        child: GestureDetector(
                          onTap: () {
                            showCountryPicker(
                              showPhoneCode: true,
                              context: context,
                              onSelect: (Country country) {
                                controller.countryUpdate(
                                  country.name,
                                  country.phoneCode,
                                  country.countryCode,
                                );
                              },
                              countryListTheme: CountryListThemeData(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.r),
                                  topRight: Radius.circular(40.r),
                                ),
                                inputDecoration: InputDecoration(
                                    labelText: 'Search',
                                    hintText: 'Start typing to search',
                                    hintStyle: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    labelStyle: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    prefixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xFF8C98A8)
                                              .withOpacity(0.2),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.r))),
                                textStyle: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 60.h,
                            width: 110.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.blue,
                            ),
                            child: Container(
                              height: 50.h,
                              width: 90.w,
                              // margin: EdgeInsets.all(1),
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: AppColors.grey,
                              ),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: customText(
                                    controller.countryInit.value != ''
                                        ? '${controller.countryInit.value}(${controller.countryCode})'
                                        : '',
                                    15.sp,
                                    FontWeight.w600,
                                    AppColors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 25.w),
                        child: Container(
                          height: 60.h,
                          width: 234.w,
                          child: customTextField(
                            obscureText: false,
                            controller: controller.phone,
                            filled: true,
                            hint: 'Phone or Username',
                            fontsize: 16.sp,
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25.w, left: 25.w),
                    child: Container(
                      height: 60.h,
                      width: 355.w,
                      child: customTextField(
                        obscureText: true,
                        controller: controller.password,
                        filled: true,
                        hint: 'Password',
                        fontsize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 53.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: customButton(
                      'Login',
                      () {
                        FocusScope.of(context).unfocus();
                        controller.login();
                      },
                      backgroundColor: AppColors.blue,
                      fontColor: AppColors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  Center(
                    child: customText(
                      'Forgot Password?',
                      15.sp,
                      FontWeight.w600,
                      AppColors.black,
                    ),
                  ),
                  SizedBox(
                    height: 62.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 166.w),
                    child: Container(
                      height: 80.h,
                      width: 80.w,
                      child: Image(
                        image: AssetImage(
                          CustomImages.finger,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    ));
  }
}
