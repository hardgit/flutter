import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';



/// 点击波纹效果Widget
class Ripple extends StatelessWidget{

  ///点击事件
  GestureTapCallback? onTap;
  ///圆角大小
  double circular;
  ///widget
  Widget child;

  Ripple({
    Key? key ,
    this.onTap,
    this.circular = 0,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(
        Radius.circular(circular),
      ),
      onTap: onTap,
      splashColor: ColorStyle.color_FBE240_30,
      highlightColor: ColorStyle.color_FBE240_30,
      child: child,
    );
  }


}