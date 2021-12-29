import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/base/get/get_save_state_view.dart';
import 'package:flutter_wanandroid_app/res/DecorationStyle.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:flutter_wanandroid_app/widgets/ripple_widget.dart';

import 'home_main_controller.dart';
import 'main_home_item.dart';

///@FileName home_main_page
///@Date 2021/12/17  15:16
///@author zf
///@Description TODO 主页列表

class HomeMainPage extends GetSaveView<HomeMainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child:RefreshWidget<HomeMainController>(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                   return Material(
                        color: Colors.transparent,
                        child: Ripple(
                          onTap: (){
                            /// todo 跳转详情
                          },
                          child: MainHomeItem(item: controller.projectDetails[index],index:index)
                        ));
                  },
                  itemCount: controller.projectDetails.length,
                ),
              )
          ),
        ],
      ),
    );
  }
}
