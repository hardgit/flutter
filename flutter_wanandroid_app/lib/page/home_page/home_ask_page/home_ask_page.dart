import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_wanandroid_app/base/get/get_save_state_view.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_ask_page/home_ask_controller.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_square_page/home_square_item.dart';
import 'package:flutter_wanandroid_app/utils/webviews.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:flutter_wanandroid_app/widgets/ripple_widget.dart';

import 'home_ask_item.dart';

///@FileName home_ask_page
///@Date 2021/12/17  15:14
///@author zf
///@Description TODO 问答

class HomeAskPage extends GetSaveView<HomeASKController>{

  const HomeAskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: RefreshWidget<HomeASKController>(
                child: ListView.builder(
                    itemCount: controller.resultProjectDetail.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Material(
                        child: Ripple(
                          onTap: () =>
                              WebViews.toWebPage(
                                  controller.resultProjectDetail[index]),
                          child: HomeAskItem(
                            item: controller.resultProjectDetail[index],
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