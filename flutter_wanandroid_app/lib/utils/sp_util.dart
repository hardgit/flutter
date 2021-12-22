import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shared_preferences/shared_preferences.dart';

///@FileName sp_util
///@Date 2021/12/21  14:56
///@author zf
///@Description TODO 键值对数据存储

class SpUtil{

  ///用户信息
  static const String keyUserInfo = 'user_info';

  ///删除存储用户信息
  static deleteUserInfo() {
    Get.find<SharedPreferences>().remove(keyUserInfo);
  }

  ///存储用户信息
  ///[userInfo] 用户信息
  static putUserInfo(UserEntity userInfo) {
    Get.find<SharedPreferences>()
        .setString(keyUserInfo, jsonEncode(userInfo.toJson()));
  }

  ///获取用户信息
  ///[UserEntity] 用户信息
  static UserEntity? getUserInfo() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    try {
      var json = sp.getString(keyUserInfo);
      if (json == null) {
        return null;
      } else {
        return UserEntity.fromJson(jsonDecode(json));
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }


}