import 'package:flutter_wanandroid_app/base/get/getx_controller_inject.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:flutter_wanandroid_app/utils/sp_util.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

///@FileName mine_page_controller
///@Date 2022/1/5  18:04
///@author zf
///@Description TODO 我的-控制层
class MinePageController extends BaseGetController{

 late UserEntity userEntity;/*登录信息*/
 RxInt historyCount = 0.obs;/*历史数量*/
 RxInt shareCount = 0.obs;/*分享数量*/


  @override
  void onInit() {
    super.onInit();
    ///获取当前用户的登录信息
    userEntity = SpUtil.getUserInfo()!;
    update();
  }

}