import 'dart:async';

import 'package:get/get.dart';

class SplashCOntroller extends GetxController {
  void navigateToOnboarding() {
    Get.offNamed('/onboarding');
  }

  onReady() {
    super.onReady();
    Timer(
      const Duration(seconds: 6),
      () {
        navigateToOnboarding();
      },
    );
    update();
  }
}
