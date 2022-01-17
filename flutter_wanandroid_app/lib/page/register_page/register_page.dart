import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/base/get_common_view.dart';
 import 'package:flutter_wanandroid_app/page/register_page/register_page_controller.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:flutter_wanandroid_app/utils/keyboard_util.dart';

///@FileName register_page
///@Date 2022/1/13  14:37
///@author zf
///@Description TODO 注册
class RegisterPage extends GetCommonView<RegisterPageController>{

   RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(StringStyles.register),
         centerTitle: true
       ),
       body: Container(
         padding: EdgeInsets.only(top: 100.h),
         child: Column(
           children: [
             /*账号*/
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
                   controller: controller.textAccountController,
                 )
             ),
             /*密码*/
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
                   controller: controller.textPwdController,
                 )
             ),
             /*确认密码*/
             Padding(
                 padding: EdgeInsets.only(left: 16.w,right: 16.w),
                 child: TextField(
                   keyboardType: TextInputType.number,
                   maxLines: 1,
                   style: Styles.style_edit_17_FF333333,
                   decoration: InputDecoration(
                     hintText: StringStyles.confirmPwd,
                     contentPadding: EdgeInsets.only(left: 10.w),
                   ),
                   obscureText: true,
                   controller: controller.textConfirmPwdController,
                 )
             ),
             /*注册按钮*/
             Padding(
               padding: EdgeInsets.only(left: 16.w,top: 20.h,right: 16.w),
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
                           controller.confirmPassword = controller.textConfirmPwdController.text.toString();
                           controller.update();
                           controller.register();
                         },child: Text(StringStyles.register,style: Styles.style_black_16)),
                   )),
             ),
           ],
         ),
       ),
     );
  }


}