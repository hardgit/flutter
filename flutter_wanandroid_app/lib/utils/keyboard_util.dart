import 'package:flutter/cupertino.dart';

///@FileName keyboard_util
///@Date 2021/12/22  17:53
///@author zf
///@Description TODO 控制键盘

class KeyboardUtils{

  ///隐藏软键盘
  ///[context] 上下文
  static hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

}