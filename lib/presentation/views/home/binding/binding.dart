import 'package:get/get.dart';
import 'package:rimo_tech/presentation/views/home/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
