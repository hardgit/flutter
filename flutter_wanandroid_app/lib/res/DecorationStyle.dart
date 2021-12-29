import 'package:flutter/cupertino.dart';

///@FileName DecorationStyle
///@Date 2021/12/24  15:59
///@author zf
///@Description TODO
class DecorationStyle{

  ///圆角背景
  static BoxDecoration roundedBg(Color color,double radius){
     return BoxDecoration(
       color: color,
       borderRadius: BorderRadius.all(Radius.circular(radius))
     );
  }

}