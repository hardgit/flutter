import 'package:flutter_wanandroid_app/page/webview_page/web_controller.dart';
import 'package:get/get.dart';

///@FileName webview_binding
///@Date 2021/12/29  14:22
///@author zf
///@Description TODO webview绑定

class WebBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => WebController());
  }

}