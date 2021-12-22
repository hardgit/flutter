import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_wanandroid_app/base/get_common_view.dart';
import 'package:flutter_wanandroid_app/page/login_page/login_controller.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:flutter_wanandroid_app/widgets/color.dart';

///@FileName remember_the_password
///@Date 2021/12/22  17:25
///@author zf
///@Description TODO 记住密码

class RememberThePassword extends GetCommonView<LoginController>{

  const RememberThePassword({Key? key}) : super(key: key);

  @override
  get updateId => "isCheckPrivacy";

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
          children: [
            Checkbox(
                fillColor:MaterialStateProperty.all(ColorStyle.color_FBE240),
                value: controller.isCheckPrivacy,
                onChanged: (value){
                  controller.updateCheckPrivacy();
                }),
            Text(StringStyles.rememberThePassword,
              style: Styles.style_edit_14_FF333333,)
          ]
      )
    );
  }



}