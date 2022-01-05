import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/res/box.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/r.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName projects_page_item
///@Date 2022/1/5  16:24
///@author zf
///@Description TODO 项目列表Item

class ProjectsPageItem extends StatelessWidget {

  ResultProjectDetail item;

  ProjectsPageItem({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.5.w, color: ColorStyle.color_EFF1F8))),
      padding: EdgeInsets.all(8.w),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*标题*/
                  Text(
                    item.title,
                    style: Styles.style_black_15_bold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  /*内容简介*/
                  Text(
                    item.desc,
                    style: Styles.style_6A6969_14,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Box.getSizeBoxH(5),
                  /*作者*/
                  Row(
                    children: [
                      SvgPicture.asset(R.assetsImagesProgram,width: 16.w),
                      Box.getSizeBoxW(10),
                      Text(item.author, style: Styles.style_6A6969_14)
                    ],
                  ),
                  Box.getSizeBoxH(10),
                  /*发布时间*/
                  Row(
                    children: [
                      Icon(Icons.access_time,size:17.w,),
                      Box.getSizeBoxW(10),
                      Text(item.niceDate, style: Styles.style_6A6969_14)
                    ],
                  ),
                ],
              ),
          ),
          Box.getSizeBoxW(5),
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child:  Image.network(
                  item.envelopePic,
                  fit: BoxFit.fill,
                  width: 80.w,
                  height: 110.h
              )
          ),
        ],
      ),
    );
  }
}
