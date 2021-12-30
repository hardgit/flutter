import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_wanandroid_app/base/get/get_save_state_view.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_main_page/home_main_controller.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_square_page/home_square_controller.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_square_page/home_square_item.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:flutter_wanandroid_app/utils/webviews.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:flutter_wanandroid_app/widgets/ripple_widget.dart';

///@FileName home_square_page
///@Date 2021/12/17  15:16
///@author zf
///@Description TODO 广场
class HomeSquarePage extends GetSaveView<HomeSquareController> {

 const HomeSquarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: RefreshWidget<HomeSquareController>(
            child: ListView.builder(
                itemCount: controller.resultProjectDetail.length,
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                    child: Ripple(
                      onTap: ()=>WebViews.toWebPage(controller.resultProjectDetail[index]),
                      child: HomeSquareItrm(
                        item: controller.resultProjectDetail[index],
                        index: index,
                      ),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
