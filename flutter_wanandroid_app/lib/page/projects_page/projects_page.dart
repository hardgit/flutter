import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_wanandroid_app/base/get/get_save_state_view.dart';
import 'package:flutter_wanandroid_app/utils/webviews.dart';
import 'package:flutter_wanandroid_app/widgets/pull_smart_refresher.dart';
import 'package:flutter_wanandroid_app/widgets/ripple_widget.dart';
import 'projects_controller.dart';
import 'projects_page_item.dart';

///@FileName projects_page
///@Date 2022/1/5  12:18
///@author zf
///@Description TODO 项目UI
class ProjectsPage extends GetSaveView<ProjectsController> {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: true,
      child: RefreshWidget<ProjectsController>(
        child: ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (BuildContext context, int index) {
              return Ripple(
                onTap: () => WebViews.toWebPage(controller.list[index]),
                child: ProjectsPageItem(item:controller.list[index]),
              );
            }),
      ),
    ));
  }
}
