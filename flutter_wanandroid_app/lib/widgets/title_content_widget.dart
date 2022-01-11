import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName title_content_widget
///@Date 2022/1/10  10:58
///@author zf
///@Description TODO 标题+内容
class TitleContentWidget extends StatelessWidget {

  String title;
  String content;
  GestureTapCallback? onTap;
  TitleContentWidget({
    Key? key,
   this.title = "",
   this.content ="",
   this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Text(title,style: Styles.style_black_15_bold),
            Text(content,style: Styles.style_black_15,),
          ],
        ),
      ),
    );
  }
}
