import 'package:get/get.dart';
import 'package:rimo_tech/presentation/views/login/controller/login_controller.dart';
import 'package:rimo_tech/services/storage.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => LocalSharedPreferences());
  }
}
