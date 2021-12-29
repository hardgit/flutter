import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/base/get_common_view.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:flutter_wanandroid_app/page/login_page/remember_the_password.dart';
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

  final textAccountController = TextEditingController();/*账号控制器*/
  final textPwdController = TextEditingController();/*密码控制器*/

   @override
  void initState() {
      super.initState();
      UserEntity? userInfo = SpUtil.getUserInfo();
      if(userInfo!=null){
        textAccountController.text = userInfo.username;
        textPwdController.text = userInfo.password;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       body: Container(
         width: double.infinity,
         height: double.infinity,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Image.asset(R.login_logo_ic,width: double.infinity,height: 200.h),
             Padding(
                 padding: EdgeInsets.only(left: 20.w),
                 child: Text(StringStyles.welcomeToLogin,style: Styles.style_black_18_bold),
             ),
             SizedBox(height: 15.h),
             Padding(
               padding: EdgeInsets.only(left: 16.w,right: 16.w),
               child: TextField(
                 keyboardType: TextInputType.number,
                 maxLines: 1,
                 style: Styles.style_edit_17_FF333333,
                 decoration: InputDecoration(
                    hintText: StringStyles.pleaseEnterYourAccountNumber,
                    contentPadding: EdgeInsets.only(left: 10.w)
                 ),
                 controller: textAccountController,
               )
             ),
             SizedBox(height: 15.h),
             Padding(
               padding: EdgeInsets.only(left: 16.w,right: 16.w),
               child: TextField(
                 keyboardType: TextInputType.number,
                 maxLines: 1,
                 style: Styles.style_edit_17_FF333333,
                 decoration: InputDecoration(
                    hintText: StringStyles.enterYourPin,
                    contentPadding: EdgeInsets.only(left: 10.w),
                 ),
                 obscureText: true,
                 controller: textPwdController,
               )
             ),
             RememberThePassword(),
             SizedBox(height: 20.h),
             Padding(
               padding: EdgeInsets.only(left: 16.w,right: 16.w),
               child: ButtonTheme(
                 minWidth: double.infinity,
                height: 40.h,
                buttonColor:ColorStyle.color_FBE240,
                child: Center(
                 child:RaisedButton(
                     onPressed: (){
                       KeyboardUtils.hideKeyboard(context);
                       controller.account = textAccountController.text.toString();
                       controller.password = textPwdController.text.toString();
                       controller.update();
                       controller.login();
                     },child: Text(StringStyles.login,style: Styles.style_black_16)),
               )),
             ),
           ],
         ),
       ),
    );
  }

}