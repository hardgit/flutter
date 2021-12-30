 import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../ToastUtils.dart';


class RefreshExtension{


  ///刷新加载失败
  ///[controller] RefreshController
  ///[refresh] 加载类型 第一次、上拉、下拉
  static onError(RefreshController controller, Refresh refresh){
    if(refresh == Refresh.pull){
      controller.refreshFailed();
    }else if(refresh == Refresh.down){
      controller.loadFailed();
    }
  }


  ///刷新加载成功
  ///[controller] RefreshController
  ///[refresh] 加载类型 第一次、上拉、下拉
  ///[over] 是否为最后一页
  static onSuccess(RefreshController controller, Refresh refresh , bool over){
    ///加载成功，重置刷新状态
    if(refresh == Refresh.pull){
      controller.refreshCompleted();
    }else if(refresh == Refresh.down){
      controller.loadComplete();
    }
    ///最后一页了，无更多数据
    if(over){
      controller.loadNoData();
    }
    if(refresh == Refresh.pull){
      // ToastUtils.show(StringStyles.pointsNotifySuccess);
    }
  }
}