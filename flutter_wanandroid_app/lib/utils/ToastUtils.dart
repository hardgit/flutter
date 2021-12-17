import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

}