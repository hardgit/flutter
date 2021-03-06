import 'package:flutter/cupertino.dart';
import 'package:flutter_wanandroid_app/base/get/controller/base_page_controller.dart';
import 'package:flutter_wanandroid_app/model/result_banner_entity.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/utils/ext/refresher_extension.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../res/r.dart';

///@FileName home_main_controller
///@Date 2021/12/17  15:18
///@author zf
///@Description TODO 首页控制层
class HomeMainController extends BaseGetPageController{

  List<ResultProjectDetail> projectDetails = [];
  List<BannerEntity> banners = [];

  @override
  void onInit() {
    super.onInit();
      getBanner();//轮播图
  }

  ///首页分页请求列表
  @override
  void requestData(RefreshController controller , {Refresh refresh = Refresh.first}) {
     request.requestHomeArticle(page,success: (data , over){
       RefreshExtension.onSuccess(controller, refresh, over);
       if(refresh != Refresh.down){
         projectDetails.clear();
       }
       projectDetails.addAll(data);
       showSuccess(projectDetails);
       ///为了防止动画每次都加载，所以只需要在第一次出现时加载一次
       update();
     },fail: (code,msg){
       showError();
       RefreshExtension.onError(controller, refresh);
     });
  }

   ///获取首页轮播图
  void getBanner(){
     request.getBanners(success: (data){
       banners.add(BannerEntity(
           imagePath: R.asset_login_logo_ic,
           isAssets: true
       ));
        banners.addAll(data);
        ///预缓存banner图片，避免加载时出险白屏
        data.forEach((element) {
          if (Get.context != null) {
            precacheImage(NetworkImage(element.imagePath), Get.context!);
          }
        });
     });
     update();
  }

}