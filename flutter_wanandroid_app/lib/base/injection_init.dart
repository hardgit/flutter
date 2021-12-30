 import 'package:flutter_wanandroid_app/http/request_repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'get/controller/base_page_controller.dart';

/// @class : Injection
/// @date : 2021/08/19
/// @name : jhf
/// @description :初始化时进行依赖注入，可全局使用
class Injection{

  static Future<void> init() async {
    await Get.putAsync(() => SharedPreferences.getInstance());
    Get.lazyPut(() =>RequestRepository());
  }
}