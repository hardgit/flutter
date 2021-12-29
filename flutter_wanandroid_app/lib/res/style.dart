import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

/// @description :样式文件
class Styles {


  static TextStyle style_FE8C28_18_bold = TextStyle(
    color:ColorStyle.color_FE8C28,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700
  );

  static TextStyle style_1A2F51_18_bold = TextStyle(
    color:ColorStyle.color_1A2F51,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500
  );
  static const TextStyle style_B8C0D4_14 =
  TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 14);
  /*输入框字体*/
  static TextStyle style_edit_17_FF333333 = TextStyle(
    color:ColorStyle.color_FF333333,
    fontSize: 17.sp
  );
  /*记住密码字体*/
  static TextStyle style_edit_14_FF333333 = TextStyle(
    color:ColorStyle.color_FF333333,
    fontSize: 14.sp
  );

  static TextStyle style_10_white = TextStyle(
    color:Colors.white,
    fontSize: 10.sp
  );

  static TextStyle style_12_EFEFEF = TextStyle(
      color:ColorStyle.color_EFEFEF,
      fontSize: 12.sp
  );

  static TextStyle style_12_FE8C28 = TextStyle(
    color:ColorStyle.color_FE8C28,
    fontSize: 12.sp
  );
  static TextStyle style_12_FF333333 = TextStyle(
    color:ColorStyle.color_FF333333,
    fontSize: 12.sp
  );

  /*---------------------------加粗字体---------------------------*/
  static TextStyle style_black_18_bold =
  TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w700);

  static TextStyle style_black_15_bold =
  TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.w500);



  ///---------------------------黑绿色字体区域-------------------------------


  ///---------------------------淡灰色字体区域-------------------------------
  static const TextStyle style_B8C0D4_11 =
  TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 11);
  static const TextStyle style_B8C0D4_13 =
  TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 13);


  ///---------------------------浅灰色字体区域-------------------------------
  static const TextStyle style_9F9EA6_11 =
  TextStyle(color: Color(0xff9F9EA6), fontSize: 11 , height: 1.1);
  static const TextStyle style_9F9EA6_14 =
  TextStyle(color: Color(0xff9F9EA6), fontSize: 14 , height: 1.1);
  static const TextStyle style_616169_11 =
  TextStyle(color: Color(0xff616169), fontSize: 11, height: 1.1);

  ///---------------------------白色字体区域-------------------------------
  static const TextStyle style_white_10 =
      TextStyle(color: Colors.white, fontSize: 10 ,height: 1.1);
  static const TextStyle style_white_12 =
      TextStyle(color: Colors.white, fontSize: 12);
  static const TextStyle style_white_14 =
      TextStyle(color: Colors.white, fontSize: 14);
  static const TextStyle style_white_16 =
      TextStyle(color: Colors.white, fontSize: 16);
  static const TextStyle style_white_18 =
      TextStyle(color: Colors.white, fontSize: 18);
  static const TextStyle style_white_16_bold =
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700);
  static const TextStyle style_white24_18 =
      TextStyle(color: Colors.white24, fontSize: 18);
  static const TextStyle style_white_36 =
      TextStyle(color: Colors.white, fontSize: 36);
  ///---------------------------黑色字体区域-------------------------------

  static const TextStyle style_black_18_bold500 =
      TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500);
  static const TextStyle style_black_16_bold =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700);
  static const TextStyle style_black_16_bold500 =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
  static const TextStyle style_black_14 =
      TextStyle(color: Colors.black, fontSize: 14);
  static const TextStyle style_black_16 =
      TextStyle(color: Colors.black, fontSize: 16);
  static const TextStyle style_black_36 =
      TextStyle(color: Colors.black, fontSize: 36);
  static const TextStyle style_black_30 =
      TextStyle(color: Colors.black, fontSize: 30);
  static const TextStyle style_black_12 =
      TextStyle(color: Colors.black, fontSize: 12);
  static const TextStyle style_black_13 =
      TextStyle(color: Colors.black, fontSize: 13);
  static const TextStyle style_black_15 =
      TextStyle(color: Colors.black, fontSize: 15);

}

class DividerStyle {
  ///分割线 0.5 - 20边距
  static Widget divider1HalfPadding20 = const Divider(
    height: 0.5,
    thickness: 0.5,
    indent: 20,
    endIndent: 20,
    color: ColorStyle.colorShadow,
  );

  ///分割线 0.5 - 无边距
  static Widget divider1Half = const Divider(
    height: 0.5,
    thickness: 0.5,
    color: ColorStyle.colorShadow,
  );

  ///分割线 20 - 无边距
  static Widget divider20Half = const Divider(
    height: 20,
    thickness: 20,
    color: ColorStyle.color_F8F9FC,
  );

}

