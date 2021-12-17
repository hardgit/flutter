import 'package:flutter_wanandroid_app/page/home_page/home_page.dart';
import 'package:flutter_wanandroid_app/ui/dialog/home_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

///@FileName common_routes
///@Date 2021/12/17  11:01
///@author zf
///@Description TODO 统一路由管理

abstract class CommonRoutes {
  ///首页
  static const String home = '/home';


  ///页面合集
  static final routePage = [
    GetPage(
        name: home,
        page: () => const HomePage(),
        binding: HomeBinding()),

  ];
}