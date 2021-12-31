import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/r.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName home_ask_item
///@Date 2021/12/30  18:02
///@author zf
///@Description TODO 问答item
class HomeAskItem extends StatelessWidget {

  ResultProjectDetail item;

  HomeAskItem({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Box.getSizeBoxH(10),
          Text(
            item.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.style_black_15_bold,
          ),
          Box.getSizeBoxH(5),
          Row(
            children: [
              SvgPicture.asset(
                R.user_ask_icon,
                width: 15.w,
              ),
              Box.getSizeBoxW(5),
              Text(item.shareUser.isNotEmpty ? item.shareUser : item.author,
                  style: Styles.style_black_12),
              Box.getSizeBoxW(5),
              Text(item.niceDate, style: Styles.style_black_12)
            ],
          ),
          Box.getSizeBoxH(10),
          DividerStyle.divider1Half
        ],
      ),
    );
  }
}
