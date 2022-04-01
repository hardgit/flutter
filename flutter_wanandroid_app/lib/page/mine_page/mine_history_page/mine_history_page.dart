import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_wanandroid_app/base/get_common_view.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_main_page/main_home_item.dart';
import 'package:flutter_wanandroid_app/utils/webviews.dart';
import 'package:flutter_wanandroid_app/widgets/ripple_widget.dart';
import 'mine_history_controller.dart';

class MineHistoryPage extends GetCommonView<MineHistoryController> {
  const MineHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("浏览历史"),
      ),
      body: ListView.builder(
          itemCount: controller.historyData.length,
          itemBuilder: (BuildContext context, int index) {
            return Material(
              child: Ripple(
                onTap: () =>
                    WebViews.toWebPage(controller.historyData[index]),
                child: MainHomeItem(
                  item: controller.historyData[index],
                  index: index,
                ),
              ),
            );
          }),
    );
  }
}
