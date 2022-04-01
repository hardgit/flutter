import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/base/common_routes.dart';
import 'package:flutter_wanandroid_app/base/get/get_save_state_view.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/r.dart';
import 'package:flutter_wanandroid_app/res/shadow_style.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/utils/ToastUtils.dart';
import 'package:flutter_wanandroid_app/utils/sp_util.dart';
import 'package:flutter_wanandroid_app/widgets/icon_text_icon.dart';
import 'package:flutter_wanandroid_app/widgets/title_content_widget.dart';
import 'package:get/get.dart';

import 'mine_page_controller.dart';

///@FileName mine_page
///@Date 2021/12/17  14:37
///@author zf
///@Description TODO 我的UI
class MinePage extends GetSaveView<MinePageController> {
  MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16.w),
                  width: double.infinity,
                  height: 130.h,
                  decoration: Styles.userHeadBg,
                  child: Row(
                    children: [
                      Container(
                        width: 90.w,
                        height: 90.h,
                        decoration: Styles.userIconBg,
                        child: Center(
                          child: ClipOval(
                            child:
                                Image.asset(R.asset_login_logo_ic, width: 80.w),
                          ),
                        ),
                      ),
                      Box.getSizeBoxW(10),
                      Text(controller.userEntity.username,
                          style: Styles.style_black_17)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.w),
                  decoration: ShaDowStyle.while12Circle(),
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /*积分*/
                      StatisticsList(
                          title: controller.userEntity.coinCount.toString(),
                          content: StringStyles.integral),
                      /*历史*/
                      StatisticsList(
                        title: SpUtil.getHistoryCount().toString(),
                        content: StringStyles.history,
                      ),
                      /*收藏*/
                      StatisticsList(
                        title:
                            controller.userEntity.collectIds.length.toString(),
                        content: StringStyles.collect,
                      ),
                      /*分享*/
                      StatisticsList(
                        title: controller.shareCount.toString(),
                        content: StringStyles.share,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: ShaDowStyle.while12Circle(),
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      /*个人信息*/
                      IconTextIcon(
                        leftIcon: R.asset_user_info_ic,
                        text: StringStyles.userInfo,
                        onTap: () {},
                      ),
                      /*关于*/
                      IconTextIcon(
                        leftIcon: R.asset_auther_ic,
                        text: StringStyles.auther,
                        onTap: () {},
                      ),
                      /*分享*/
                      IconTextIcon(
                        leftIcon: R.asset_share_ic,
                        text: StringStyles.share,
                        onTap: () {},
                      ),
                      /*问题反馈*/
                      IconTextIcon(
                        leftIcon: R.asset_feed_back_ic,
                        text: StringStyles.feedback,
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class StatisticsList extends StatelessWidget {
  String title;
  String content;

  StatisticsList({
    Key? key,
    this.title = "",
    this.content = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: TitleContentWidget(
          title: title,
          content: content,
          onTap: () {
            switch (content) {
              case "积分":
                ToastUtils.showTopGetDialog(content);
                break;
              case "历史":
                Get.toNamed(CommonRoutes.history);
                break;
              case "收藏":
                ToastUtils.showTopGetDialog(content);
                break;
              case "分享":
                ToastUtils.showTopGetDialog(content);
                break;
            }
          },
        ));
  }
}
