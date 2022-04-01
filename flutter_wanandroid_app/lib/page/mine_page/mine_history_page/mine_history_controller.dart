
import 'package:flutter_wanandroid_app/base/get/getx_controller_inject.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/utils/sp_util.dart';

class MineHistoryController extends BaseGetController{

  var historyData = <ResultProjectDetail>[];

  @override
  void onInit() {
    super.onInit();
    historyData = SpUtil.getHistoryData();
    update();
  }

}