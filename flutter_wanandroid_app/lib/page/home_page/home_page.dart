
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wanandroid_app/page/home_page/home_main_page/home_main_page.dart';
 import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/res/style.dart';


///@FileName home_page
///@Date 2021/12/17  14:28
///@author zf
///@Description TODO 首页

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin{

   TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       body: SafeArea(
         top: true,
         child: Column(
           children: [
             Container(
               alignment: Alignment.topLeft,
               child:  TabBar(
                  isScrollable: true,
                   labelColor: ColorStyle.color_FE8C28,
                   unselectedLabelColor: ColorStyle.color_1A2F51,
                   controller: _tabController,
                   labelStyle: Styles.style_FE8C28_18_bold,
                   unselectedLabelStyle: Styles.style_1A2F51_18_bold ,
                   tabs: const [
                     Tab(text: StringStyles.tabHome),
                     Tab(text: StringStyles.tabSquare),
                     Tab(text: StringStyles.tabAsk),
                   ]
               ),
             ),
             SizedBox(width: 20.w),
             Expanded(
                 child: TabBarView(
                 children: [HomeMainPage(),HomeMainPage(),HomeMainPage()],
                 controller: _tabController,
             ))
           ],
         ),
       ),
    );
  }
}
