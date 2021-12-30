import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/res/DecorationStyle.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName home_square_item
///@Date 2021/12/30  15:39
///@author zf
///@Description TODO 广场item

class HomeSquareItrm extends StatelessWidget {

  ResultProjectDetail item;
  int index;

  HomeSquareItrm({Key? key, required this.item,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
              Visibility(
                  visible: index < 2,
                  child: Container(
                    decoration: DecorationStyle.roundedBg(Colors.red, 3.w),
                    margin: EdgeInsets.only(top: 2.h,right: 3.w),
                    padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
                    child: Text(StringStyles.data_new,
                        style: Styles.style_9_white),
                  )),
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
