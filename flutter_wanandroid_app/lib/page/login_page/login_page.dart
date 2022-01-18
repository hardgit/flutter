import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/base/get_common_view.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:flutter_wanandroid_app/page/login_page/remember_the_password.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/r.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:flutter_wanandroid_app/utils/keyboard_util.dart';
import 'package:flutter_wanandroid_app/utils/sp_util.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

///@FileName login_page
///@Date 2021/12/21  15:07
///@author zf
///@Description TODO 登录UI

class LoginPage extends GetCommonView<LoginController>{

  LoginPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.initWidget();
    return Scaffold(
      resizeToAvoidBottomInset: false,
       body: Container(
         width: double.infinity,
         height: double.infinity,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Image.asset(R.asset_login_logo_ic,width: double.infinity,height: 200.h),
             Padding(
                 padding: EdgeInsets.only(left: 20.w),
                 child: Text(StringStyles.welcomeToLogin,style: Styles.style_black_18_bold),
             ),
             SizedBox(height: 15.h),
             /*账号*/
             Padding(
               padding: EdgeInsets.only(left: 32.w,right: 32.w),
               child: TextField(
                 keyboardType: TextInputType.number,
                 maxLines: 1,
                 style: Styles.style_edit_17_FF333333,
                 decoration: InputDecoration(
                    hintText: StringStyles.pleaseEnterYourAccountNumber,
                    contentPadding: EdgeInsets.only(left: 10.w)
                 ),
                 controller: controller.textAccountController,
               )
             ),
             SizedBox(height: 15.h),
             /*密码*/
             Padding(
               padding: EdgeInsets.only(left: 32.w,right: 32.w),
               child: Stack(
                 children: [
                   TextField(
                     keyboardType: TextInputType.number,
                     maxLines: 1,
                     style: Styles.style_edit_17_FF333333,
                     decoration: InputDecoration(
                       hintText: StringStyles.enterYourPin,
                       contentPadding: EdgeInsets.only(left: 10.w),
                     ),
                     obscureText: !controller.isPwd,
                     controller: controller.textPwdController,
                   ),
                   Positioned(
                       right: 5,
                       child:Visibility(
                         visible: true,
                           child: IconButton(
                               onPressed: (){
                                  controller.isPwd = !controller.isPwd;
                                  controller.update();
                               },
                               icon: Icon(
                                   controller.isPwd?Icons.remove_red_eye:Icons.visibility_off,
                                   size: 24.w,
                               ),
                           )
                       )
                   )
                 ],
               )
             ),
             /*记住密码*/
             const RememberThePassword(),
             SizedBox(height: 20.h),
             /*登录按钮*/
             Padding(
               padding: EdgeInsets.only(left: 32.w,right: 32.w),
               child: ButtonTheme(
                 minWidth: double.infinity,
                height: 40.h,
                buttonColor:ColorStyle.color_FBE240,
                child: Center(
                 child:RaisedButton(
                     onPressed: (){
                       KeyboardUtils.hideKeyboard(context);
                       controller.account = controller.textAccountController.text.toString();
                       controller.password = controller.textPwdController.text.toString();
                       controller.update();
                       controller.login();
                     },child: Text(StringStyles.login,style: Styles.style_black_16)),
               )),
             ),
             Box.getSizeBoxH(10),
             /*注册*/
             GestureDetector(
               child: Center(
                  child: Text(StringStyles.noAccountRegister,
                   style: Styles.style_edit_14_FF333333),
                  ),
               onTap:()=>Get.toNamed(CommonRoutes.register),
             )
           ],
         ),
       ),
    );
  }

}
