import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

///@FileName shadow_style
///@Date 2022/1/10  11:28
///@author zf
///@Description TODO 样式背景
class ShaDowStyle{

  static while12Circle(){
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.w),
        boxShadow: [
          BoxShadow(
              offset: Offset(2, 1),
              color: ColorStyle.colorShadow,
              blurRadius: 10)
        ]);
  }

}
