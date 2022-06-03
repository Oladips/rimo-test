import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rimo_tech/routes/app_routes.dart';
import 'package:rimo_tech/services/storage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  MyApp({Key? key, required this.appRouter}) : super(key: key);
  final localStorage = Get.put(LocalSharedPreferences());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(414, 896),
        builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              getPages: appRouter.getpages,
              title: 'handova',
              initialRoute: '/splash',
            ));
  }
}
