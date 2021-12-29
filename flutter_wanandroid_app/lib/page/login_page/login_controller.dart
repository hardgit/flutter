import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/base/get/getx_controller_inject.dart';
import 'package:flutter_wanandroid_app/res/r.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/utils/ToastUtils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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


  /*更新记住密码框的状态*/
  updateCheckPrivacy(){
    isCheckPrivacy = !isCheckPrivacy;
    Get.find<SharedPreferences>().setBool("isCheckPrivacy", isCheckPrivacy);
    update([StringStyles.isCheckPrivacy]);
  }

  /*登录*/
  void login() {
    if (account.isEmpty || account.length < 6) {
      ToastUtils.showTopGetDialog(account.isEmpty ? StringStyles.theAccountCannotBeEmpty : StringStyles.accountLengthNoSix);
      return;
    }

    if (password.isEmpty || password.length < 6) {
      ToastUtils.showTopGetDialog(password.isEmpty ? StringStyles.thePasswordCannotBeEmpty : StringStyles.pwdLengthNoSix);
      return;
    }

    ///发起请求
    request.login(account,isCheckPrivacy, password, success: (data) {
      ToastUtils.show(StringStyles.loginSuccess);
      Get.offAllNamed(CommonRoutes.main);
    });
  }
}
