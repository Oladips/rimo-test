import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rimo_tech/presentation/model/login.dart';
import 'package:rimo_tech/presentation/widget/loading.dart';
import 'package:rimo_tech/services/api.dart';
import 'package:rimo_tech/services/keys.dart';
import 'package:rimo_tech/services/storage.dart';

class LoginController extends GetxController {
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  final prefs = Get.find<LocalSharedPreferences>();
  late String phoneNum;
  var isLoading = false.obs;

  loading(bool value) {
    isLoading.value = value;
    update();
  }

  var country = ''.obs;
  var countryCode = ''.obs;
  var countryInit = ''.obs;

  void countryUpdate(
    String value,
    String code,
    String init,
  ) {
    country.value = value;
    countryCode.value = code;
    countryInit.value = init;
    update();
  }

  void navigateToHome() {
    Get.toNamed('/home');
  }

  Future login() async {
    loading(true);
    await Future.delayed(Duration(seconds: 5));
    phoneNum = '+${countryCode.value}${phone.text}';
    final response = await Auth().login(
      password: password.text,
      phone: phoneNum,
      deviceIdentification: 'yttttggt',
      token: 'yycuud',
    );
    loading(false);
    if (response?.statusCode == 200) {
      print('success');
      final jsonrespon = json.decode(response.data);
      Login.fromJson(jsonrespon);
      prefs.setString(StorageKeys.dashToken, jsonrespon['data']['token']);
      prefs.setString(
          StorageKeys.firstname, jsonrespon['data']['user']['first_name']);
      prefs.setString(
          StorageKeys.lastname, jsonrespon['data']['user']['last_name']);
      prefs.setString(StorageKeys.balance,
          jsonrespon['data']['user']['available_balance'].toString());
      print(prefs.getString(StorageKeys.lastname));
      print(prefs.getString(StorageKeys.balance));
      navigateToHome();
    } else {
      Get.snackbar(
        'Error',
        'Authentication error',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
