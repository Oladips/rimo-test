import 'package:get/get.dart';
import 'package:rimo_tech/presentation/views/onboarding/controller/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
