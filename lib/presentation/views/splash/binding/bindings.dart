import 'package:get/get.dart';
import 'package:rimo_tech/presentation/views/splash/controller/cplash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashCOntroller());
  }
}
