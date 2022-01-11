
import 'package:get/get.dart';
import 'home_page/home_ask_page/home_ask_controller.dart';
import 'home_page/home_main_page/home_main_controller.dart';
import 'home_page/home_square_page/home_square_controller.dart';
import 'mine_page/mine_page_controller.dart';
import 'projects_page/projects_controller.dart';

///@FileName home_binding
///@Date 2021/12/17  11:21
///@author zf
///@Description 首页binding

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeMainController());/*首页-首页控制层*/
    Get.lazyPut(() => HomeSquareController());/*首页-广场控制层*/
    Get.lazyPut(() => HomeASKController());/*首页-问答控制层*/
    Get.lazyPut(() => ProjectsController());/*项目控制层*/
    Get.lazyPut(() => MinePageController());/*我的控制层*/
  }

}