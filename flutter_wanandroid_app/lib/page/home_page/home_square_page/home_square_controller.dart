import 'package:flutter_wanandroid_app/base/get/controller/base_page_controller.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/utils/ext/refresher_extension.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:pull_to_refresh/src/smart_refresher.dart';

///@FileName home_square_controller
///@Date 2021/12/30  9:25
///@author zf
///@Description TODO 广场控制层
class HomeSquareController extends BaseGetPageController{

  List<ResultProjectDetail> resultProjectDetail = [];

  @override
  void requestData(RefreshController controller, {Refresh refresh = Refresh.first}) {
     request.requestSquare(page,success: (data,over){
       RefreshExtension.onSuccess(controller, refresh, over);
       if(refresh != Refresh.down){
         resultProjectDetail.clear();
       }
       resultProjectDetail.addAll(data);
       showSuccess(resultProjectDetail);
       update();
     },fail: (code,msg){
       showError();
       RefreshExtension.onError(controller, refresh);
     });

  }

}