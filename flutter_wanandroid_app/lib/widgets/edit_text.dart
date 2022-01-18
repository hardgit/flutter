import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName edit_text
///@Date 2022/1/18  14:59
///@author zf
///@Description TODO 输入框
class EditTextPwd extends StatefulWidget {

  ValueChanged<String>? onChanged;
  String hintText;

   EditTextPwd({
     Key? key,
     this.onChanged,
     this.hintText="",
   }) : super(key: key);

  @override
  _EditTextPwdState createState() => _EditTextPwdState();
}

class _EditTextPwdState extends State<EditTextPwd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              obscureText: true,
              onChanged: (text){

              },
              controller: controller.textPwdController,
            ),
            Positioned(
                right: 10,
                top: 8,
                child:Visibility(
                    child: Image.asset(R.asset_close_eye_ic,width: 25.w,))
            )
          ],
        )
    ),;
  }
}
