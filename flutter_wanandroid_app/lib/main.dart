import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_page.dart';
import 'package:flutter_wanandroid_app/widgets/color.dart';
import 'package:get/get.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: () => GetMaterialApp(
        getPages: CommonRoutes.routePage,
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        title: 'wanAndroid',
        theme: ThemeData(
            primarySwatch:createMaterialColor(Color(0xFF247FF1)) ,
            splashColor: Colors.transparent/*去除点击效果*/
        ),
        home: HomePage(),
      )));
}

