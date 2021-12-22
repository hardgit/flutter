import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/base/get/get_save_state_view.dart';

import 'home_main_controller.dart';


///@FileName home_main_page
///@Date 2021/12/17  15:16
///@author zf
///@Description TODO

class HomeMainPage extends GetSaveView<HomeMainController>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("123")),
    );
  }

}