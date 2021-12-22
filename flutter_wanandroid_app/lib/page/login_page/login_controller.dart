import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/base/get/getx_controller_inject.dart';
import 'package:flutter_wanandroid_app/utils/ToastUtils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

///@FileName login_controller
///@Date 2021/12/21  15:10
///@author zf
///@Description TODO 登录控制器

class LoginController extends BaseGetController {

  ///账号
  String account = " ";
  ///密码
  String password = " ";

  ///是否勾选记住秘密
  bool isCheckPrivacy = true;

  updateCheckPrivacy(){
    isCheckPrivacy = !isCheckPrivacy;
    update(["isCheckPrivacy"]);
  }

  void login() {
    if (account.isEmpty || account.length < 6) {
      ToastUtils.showTopGetDialog(account.isEmpty ? "账号不能为空" : "账号不能小于6位");
      return;
    }

    if (password.isEmpty || password.length < 6) {
      ToastUtils.showTopGetDialog(password.isEmpty ? "密码不能为空" : "密码不能小于6位");
      return;
    }

    ///发起请求
    request.login(account, password, success: (data) {
      ToastUtils.showTopGetDialog("登录成功");
      Get.offAllNamed(CommonRoutes.main);
    });
  }
}
