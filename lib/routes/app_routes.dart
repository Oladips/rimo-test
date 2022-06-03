import 'package:get/get.dart';
import 'package:rimo_tech/presentation/order/order.dart';
import 'package:rimo_tech/presentation/views/home/binding/binding.dart';
import 'package:rimo_tech/presentation/views/home/view/home.dart';
import 'package:rimo_tech/presentation/views/login/binding/bindings.dart';
import 'package:rimo_tech/presentation/views/login/view/login_view.dart';
import 'package:rimo_tech/presentation/views/onboarding/binding/bindings.dart';
import 'package:rimo_tech/presentation/views/onboarding/view/onboarding.dart';
import 'package:rimo_tech/presentation/views/splash/binding/bindings.dart';
import 'package:rimo_tech/presentation/views/splash/view/splashview.dart';

class AppRouter {
  /// IMPLEMENTATION OF GETX FOR THE NAVIGATION OF THE APP
  List<GetPage<dynamic>> getpages = [
    GetPage(
      name: '/splash',
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: '/onboarding',
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/home',
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/order',
      page: () => Order(),
      binding: HomeBinding(),
    ),
  ];
}
