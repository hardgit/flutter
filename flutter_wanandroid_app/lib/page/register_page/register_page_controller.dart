import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/base/get/getx_controller_inject.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/utils/ToastUtils.dart';
import 'package:get/get.dart';

///@FileName register_page_controller
///@Date 2022/1/13  15:36
///@author zf
///@Description TODO 注册页面控制器
class RegisterPageController extends BaseGetController{

  String account = "";/*账号*/
  String password = "";/*密码*/
  String confirmPassword = "";/*确认密码*/

  final textAccountController = TextEditingController();/*账号控制器*/
  final textPwdController = TextEditingController();/*密码控制器*/
  final textConfirmPwdController = TextEditingController();/*确认密码控制器*/


  void register(){
    if (account.isEmpty || account.length < 6) {
      ToastUtils.showTopGetDialog(account.isEmpty ? StringStyles.theAccountCannotBeEmpty : StringStyles.accountLengthNoSix);
      return;
    }
    if (password.isEmpty || password.length < 6) {
      ToastUtils.showTopGetDialog(password.isEmpty ? StringStyles.thePasswordCannotBeEmpty : StringStyles.pwdLengthNoSix);
      return;
    }
    if (confirmPassword.isEmpty || confirmPassword.length < 6) {
      ToastUtils.showTopGetDialog(confirmPassword.isEmpty ? StringStyles.theConfirmPwdPasswordCannotBeEmpty : StringStyles.confirmPwdLengthNoSix);
      return;
    }
    if(password!=confirmPassword){
      ToastUtils.showTopGetDialog("两次密码不一致！");
      return;
    }

     request.register(account, password, confirmPassword,success: (data){
       ToastUtils.show(StringStyles.registerSuccessToLogin);
       Get.offAndToNamed(CommonRoutes.login);
     },fail: (code,msg){
         ToastUtils.showTopGetDialog("code：$code,$msg");
     });
  }

}