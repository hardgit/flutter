import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

///@FileName ToastUtils
///@Date 2021/12/17  10:44
///@author zf
///@Description TODO

class ToastUtils{
  /// 显示toast
  ///[name] lottie名称
  static show(String name) {
    Fluttertoast.showToast(
        msg: name,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  static showTopGetDialog(String msg){
    Get.snackbar(
        "提示", msg,
        duration: Duration(milliseconds: 2000),
        backgroundColor: ColorStyle.color_FBE240_30,
    );
  }

}