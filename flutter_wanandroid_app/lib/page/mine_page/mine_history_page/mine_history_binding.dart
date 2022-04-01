
import 'package:flutter_wanandroid_app/page/mine_page/mine_history_page/mine_history_controller.dart';
import 'package:get/get.dart';

///绑定
class MineHistoryBinding extends Bindings{
  @override
  void dependencies() {
     Get.lazyPut(() => MineHistoryController());
  }

}