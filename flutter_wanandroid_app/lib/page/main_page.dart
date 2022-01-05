import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_page.dart';
import 'package:flutter_wanandroid_app/page/mine_page/mine_page.dart';
import 'package:flutter_wanandroid_app/page/projects_page/projects_page.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName home_page
///@Date 2021/12/17  11:19
///@author zf
///@Description TODO

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, /*禁止键盘顶起布局*/
       body: Container(
         child: IndexedStack(
           index: _currentIndex,/*下标*/
           children: [
              HomePage(),
              ProjectsPage(),
              MinePage(),
           ],
         ),
       ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        unselectedFontSize: 16,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        items: [
          BottomBarItem("home_ic","首页"),
          BottomBarItem("projects_ic","项目"),
          BottomBarItem("my_ic","我的")
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class BottomBarItem extends BottomNavigationBarItem{
  BottomBarItem(String barIconName,String barName) : super(
       label: barName,
      icon:Image.asset("assets/images/$barIconName.png",
        width: 25.w,
        color: ColorStyle.color_6A6969,
        excludeFromSemantics: true,//去除图片语义
        gaplessPlayback: true,//重新加载图片的过程中，原图片的展示是否保留
      ),
      activeIcon:Image.asset("assets/images/${barIconName}_active.png",
        width: 28.w,
        color: ColorStyle.color_FBE240,
        excludeFromSemantics: true,//去除图片语义
        gaplessPlayback: true,//重新加载图片的过程中，原图片的展示是否保留
      )
  );

}
