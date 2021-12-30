import 'package:flutter_wanandroid_app/base/get/controller/base_page_controller.dart';
import 'package:flutter_wanandroid_app/base/get/getx_controller_inject.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_ask_page/home_ask_controller.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_square_page/home_square_controller.dart';
import 'package:get/get.dart';

import 'home_page/home_main_page/home_main_controller.dart';

///@FileName home_binding
///@Date 2021/12/17  11:21
///@author zf
///@Description 首页binding

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeMainController());
    Get.lazyPut(() => HomeSquareController());
    Get.lazyPut(() => HomeASKController());
  }

}