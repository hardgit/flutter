import 'package:flutter_wanandroid_app/http/request_repository.dart';
import 'package:get/get.dart';


/// @class : BaseGetController
/// @date : 2021/08/26
/// @name : jhf
/// @description :基类 Controller
abstract class BaseGetController extends GetxController{


  ///HTTP请求仓库
  late RequestRepository request;


  @override
  void onInit() {
    super.onInit();
    request = Get.find<RequestRepository>();
  }


}

