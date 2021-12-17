import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/res/style.dart';

///@FileName home_page
///@Date 2021/12/17  11:19
///@author zf
///@Description TODO

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false, /*禁止键盘顶起布局*/
       body: Center(
         child: Text("wanAndroid",style: Styles.style_black_16_bold,),
       ),
    );
  }
}
