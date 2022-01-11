import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'r.dart';

/// @description :样式文件
class Styles {

  ///用户头像背景
  static Decoration userIconBg = const BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(R.asset_user_ic_bg),
    ),
  );

  ///用户头像顶部背景
  static Decoration userHeadBg = const BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(R.asset_user_head_bg),
    ),
  );

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

  static TextStyle style_9_white = TextStyle(
    color:Colors.white,
    fontSize: 9.sp
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
  static const TextStyle style_6A6969_14 =
  TextStyle(color: ColorStyle.color_6A6969, fontSize: 14);

  static TextStyle style_black_17 =
  TextStyle(color: Colors.black, fontSize: 17.sp);


  /*---------------------------加粗字体---------------------------*/
  static TextStyle style_black_18_bold =
  TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w700);

  static TextStyle style_black_15_bold =
  TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.w500);




  ///---------------------------黑绿色字体区域-------------------------------


  ///---------------------------淡灰色字体区域-------------------------------
  static TextStyle style_B8C0D4_11 =
  TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 11.sp);
  static TextStyle style_B8C0D4_13 =
  TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 13.sp);


  ///---------------------------浅灰色字体区域-------------------------------
  static  TextStyle style_9F9EA6_11 =
  TextStyle(color: Color(0xff9F9EA6), fontSize: 11.sp , height: 1.1);
  static  TextStyle style_9F9EA6_14 =
  TextStyle(color: Color(0xff9F9EA6), fontSize: 14.sp , height: 1.1);
  static  TextStyle style_616169_11 =
  TextStyle(color: Color(0xff616169), fontSize: 11.sp, height: 1.1);

  ///---------------------------白色字体区域-------------------------------
  static  TextStyle style_white_10 =
      TextStyle(color: Colors.white, fontSize: 10.sp ,height: 1.1);
  static  TextStyle style_white_12 =
      TextStyle(color: Colors.white, fontSize: 12.sp);
  static  TextStyle style_white_14 =
      TextStyle(color: Colors.white, fontSize: 14.sp);
  static  TextStyle style_white_16 =
      TextStyle(color: Colors.white, fontSize: 16.sp);
  static  TextStyle style_white_18 =
      TextStyle(color: Colors.white, fontSize: 18.sp);
  static  TextStyle style_white_16_bold =
      TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w700);
  static  TextStyle style_white24_18 =
      TextStyle(color: Colors.white24, fontSize: 18.sp);
  static  TextStyle style_white_36 =
      TextStyle(color: Colors.white, fontSize: 36.sp);
  ///---------------------------黑色字体区域-------------------------------

  static TextStyle style_black_18_bold500 =
      TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w500);
  static TextStyle style_black_16_bold =
      TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w700);
  static TextStyle style_black_16_bold500 =
      TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle style_black_14 =
      TextStyle(color: Colors.black, fontSize: 14.sp);
  static TextStyle style_black_16 =
      TextStyle(color: Colors.black, fontSize: 16.sp);
  static TextStyle style_black_36 =
      TextStyle(color: Colors.black, fontSize: 36.sp);
  static TextStyle style_black_30 =
      TextStyle(color: Colors.black, fontSize: 30.sp);
  static TextStyle style_black_12 =
      TextStyle(color: Colors.black, fontSize: 12.sp);
  static TextStyle style_black_13 =
      TextStyle(color: Colors.black, fontSize: 13);
  static TextStyle style_black_15 =
      TextStyle(color: Colors.black, fontSize: 15);

}

class DividerStyle {
  ///分割线 0.5 - 20边距
  static Widget divider1HalfPadding20 = Divider(
    height: 0.5.h,
    thickness: 0.5,
    indent: 20,
    endIndent: 20,
    color: ColorStyle.colorShadow,
  );

  ///分割线 0.5 - 无边距
  static Widget divider1Half =  Divider(
    height: 0.5.h,
    thickness: 0.5,
    color: ColorStyle.colorShadow,
  );

  ///分割线 20 - 无边距
  static Widget divider20Half =  Divider(
    height: 20.h,
    thickness: 20,
    color: ColorStyle.color_F8F9FC,
  );

}





