import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:flutter_wanandroid_app/page/projects_page/projects_page_item.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shared_preferences/shared_preferences.dart';

///@FileName sp_util
///@Date 2021/12/21  14:56
///@author zf
///@Description TODO 键值对数据存储

class SpUtil {
  ///用户信息
  static const String keyUserInfo = 'user_info';
  static const String history = 'history';

  static get retrun => null;

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

  ///是否记住密码
  static putBool(String key, bool value) {
    Get.find<SharedPreferences>().setBool(key, value);
  }

  ///是否记住密码
  static bool getBool(String key) {
    var bool = Get.find<SharedPreferences>().getBool(key);
    if (bool == null) return false;
    return bool;
  }

  ///保存浏览过的页面数据
  static saveDataHistory(ResultProjectDetail data) {
    List<String> historyList = getDataHistory();
    SharedPreferences sp = Get.find<SharedPreferences>();
    for (var history in historyList) {
      var decode = jsonDecode(history);
      var detail = ResultProjectDetail.fromJson(decode);
      if (detail.id == data.id) return;
    }
    historyList.insert(0, jsonEncode(data.toJson()));
    sp.setStringList(history, historyList);
  }

  ///获取存储在sp中的记录json
  static List<String> getDataHistory() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    List<String>? list = sp.getStringList(history);
    if (list == null) {
      return [];
    } else {
      return list;
    }
  }

  ///获取历史记录数据
  static List<ResultProjectDetail> getHistoryData() {
    var list = <ResultProjectDetail>[];
    var dataHistory = getDataHistory();
    for (var json in dataHistory) {
      var map = jsonDecode(json);
      var item = ResultProjectDetail.fromJson(map);
      list.add(item);
    }
    return list;
  }

  ///获取历史记录数量
  static int getHistoryCount(){
    return getDataHistory().length;
  }

}
