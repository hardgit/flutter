import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/r.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName icon_text_icon
///@Date 2022/1/11  14:39
///@author zf
///@Description TODO icon 文本  icon

class IconTextIcon extends StatelessWidget {

  String leftIcon;
  String text;
  GestureTapCallback? onTap;

   IconTextIcon({
    Key? key,
    this.leftIcon = "",
    this.text = "",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: ColorStyle.color_FBE240_30,
        onTap: onTap,
        child: Container(
          width: double.infinity,
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 15.h),
          margin: EdgeInsets.only(left: 16.w,right: 16.w),
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Positioned(
                child: Image.asset(
                    leftIcon,
                    width: 30.w,
                ),
              ),
              Positioned(
                left: 40.w,
                child: Text(
                    text,
                    style: Styles.style_black_16
                ),
              ),
              Positioned(
                right: 0,
                child: Image.asset(
                    R.asset_skip_ic,
                    width: 25.w
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}