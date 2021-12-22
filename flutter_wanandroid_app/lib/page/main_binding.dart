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
  }

}