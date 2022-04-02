
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/base/get/get_save_state_view.dart';
import 'package:flutter_wanandroid_app/res/DecorationStyle.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:flutter_wanandroid_app/utils/ToastUtils.dart';
import 'package:flutter_wanandroid_app/utils/webviews.dart';
import 'package:flutter_wanandroid_app/widgets/banner_widget.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:flutter_wanandroid_app/widgets/ripple_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'home_main_controller.dart';
import 'main_home_item.dart';

///@FileName home_main_page
///@Date 2021/12/17  15:16
///@author zf
///@Description TODO 首页UI

class HomeMainPage extends GetSaveView<HomeMainController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:RefreshWidget<HomeMainController>(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.projectDetails.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    if(index == 0){
                       return Container(
                         margin: EdgeInsets.only(top: 10.h,bottom: 10.h),
                         width: double.infinity,
                         height: 140.h,
                         child: BannerWidget(
                            controller.banners,
                            height: 200.h,
                           onTap: (index){
                              if(index == 0){
                                ToastUtils.show("WanAndroid");
                              }else{
                                WebViews.toWebBanners(controller.banners[index]);
                              }
                           },
                         ),
                       );
                    }else{
                      var newIndex = index-1;
                      return Material(
                          color: Colors.transparent,
                          child: Ripple(
                              onTap: ()=> WebViews.toWebPage(controller.projectDetails[newIndex]),
                              child: MainHomeItem(item: controller.projectDetails[newIndex],index:newIndex)
                          ));
                    }
                  },
                ),
              )
          ),
        ],
      ),
    );
  }
}
