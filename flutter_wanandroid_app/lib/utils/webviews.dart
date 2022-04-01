import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/model/webvew_entity.dart';
import 'package:flutter_wanandroid_app/utils/sp_util.dart';
import 'package:get/get.dart';

///@FileName webviews
///@Date 2021/12/29  12:11
///@author zf
///@Description TODO webview加载中继

class WebViews{

  //通用页面跳转详情
  static toWebPage(ResultProjectDetail model){
     Get.toNamed(
         CommonRoutes.web,
         arguments: WebViewEntity(
             title: model.title,
             url: model.link
         )
     );
     SpUtil.saveDataHistory(model);
  }

}