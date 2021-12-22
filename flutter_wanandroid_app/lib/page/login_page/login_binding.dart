import 'package:get/get.dart';

import 'login_controller.dart';

///@FileName login_binding
///@Date 2021/12/21  15:12
///@author zf
///@Description 登录绑定

class LoginBinding extends Bindings{
  @override
  void dependencies() {
     Get.lazyPut(() => LoginController());
  }

}