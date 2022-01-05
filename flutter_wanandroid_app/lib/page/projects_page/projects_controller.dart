import 'package:flutter_wanandroid_app/base/get/controller/base_page_controller.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/utils/ext/refresher_extension.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:pull_to_refresh/src/smart_refresher.dart';

///@FileName projects_contoller
///@Date 2022/1/5  12:20
///@author zf
///@Description TODO 项目-控制器层
class ProjectsController extends BaseGetPageController{

  List<ResultProjectDetail> list =[];

  @override
  void requestData(RefreshController controller, {Refresh refresh = Refresh.first}) {
     request.requestProjectsModule(page, (data, over){
       RefreshExtension.onSuccess(controller, refresh, over);
       if(refresh!=Refresh.down){
         list.clear();
       }
       list.addAll(data);
       showSuccess(list);
       update();/*Get刷新*/
     }, (code, msg){
       showError();
       RefreshExtension.onError(controller, refresh);
     });
  }

}