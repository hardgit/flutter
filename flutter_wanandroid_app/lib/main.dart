import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/page/login_page/login_binding.dart';
import 'package:flutter_wanandroid_app/page/login_page/login_page.dart';
import 'package:flutter_wanandroid_app/page/main_binding.dart';
import 'package:flutter_wanandroid_app/page/main_page.dart';
import 'package:flutter_wanandroid_app/res/app_theme.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/widgets/color.dart';
import 'package:get/get.dart';

import 'base/injection_init.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  runApp(ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: () => GetMaterialApp(
        getPages: CommonRoutes.routePage,
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        title: 'wanAndroid',
        theme: appThemeData,
        initialBinding: LoginBinding(),
        home: LoginPage(),
      )));
}

