import 'package:get/get.dart';

import 'register_page_controller.dart';

///@FileName register_binding
///@Date 2022/1/13  15:38
///@author zf
///@Description TODO 注册页面绑定控制器
class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterPageController());
  }
}