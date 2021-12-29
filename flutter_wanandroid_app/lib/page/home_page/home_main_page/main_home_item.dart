import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/res/DecorationStyle.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:html/parser.dart';

///@FileName main_home_item
///@Date 2021/12/24  17:04
///@author zf
///@Description TODO 列表ui

class MainHomeItem extends StatelessWidget {

  ResultProjectDetail item;
  int index;

  MainHomeItem({Key? key,required this.item,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(right: 16.w,left: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Box.getSizeBoxH(10),
              Stack(
                children: [
                  Text(
                      getPaddingText(item.title),
                      maxLines: 2,/*最大2行*/
                      overflow: TextOverflow.ellipsis,/*超出省略*/
                      style: Styles.style_black_15_bold
                  ) ,
                  Visibility(
                      visible: index<=2,
                      child: Container(
                        decoration: DecorationStyle.roundedBg(Colors.red, 3.w),
                        margin: EdgeInsets.only(top: 2.h),
                        padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
                        child: Text(StringStyles.recommend,style: Styles.style_10_white),
                      )),
                ],
              ),
          Visibility(
              visible: item.desc.isNotEmpty,
              child: Html(data: item.desc)
          ),
          Box.getSizeBoxH(10),
          Row(
            children: [
              Text(item.superChapterName,style: Styles.style_12_FE8C28),
              Box.getSizeBoxW(5),
              Text("|",style: Styles.style_12_FF333333),
              Box.getSizeBoxW(5),
              Text(item.niceDate,style: Styles.style_12_FF333333)
            ],
          ),
          Box.getSizeBoxH(10),
          DividerStyle.divider1Half
        ],
      ),
    );
  }
  ///偏移
  String getPaddingText(String title){
    return index <= 2 ?
    parse("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp"+title).body!.text
     :parse(title).body!.text;
  }
}

