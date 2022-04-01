import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/model/result_banner_entity.dart';
import 'package:flutter_wanandroid_app/res/r.dart';

///@FileName banner_widget
///@Date 2022/2/9  10:18
///@author zf
///@Description TODO 自定义banner

///实现思路：
///1.创建定时器；
///2.创建PageView根据定时任务进行切换页面;
///3.创建底部指示器且随着PageViwe切换而切换。
class BannerWidget extends StatefulWidget {

  /*图片容器集合*/
  List<BannerEntity> imageList = [];

  BannerWidget({Key? key,required this.imageList}) : super(key: key);

  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {

   Timer? _timer;
  late int _index = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _index);
    _timeStart();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,/*下方指示器居中*/
        children: <Widget>[
          _pageView(),
          _drawBottmIndicator()
        ],
    );
  }


  ///绘制指示器
  Widget _drawBottmIndicator() {
    var length = widget.imageList.length;
     return Positioned(
       bottom: 10,
         child: Row(
           children: widget.imageList.map((index){
             return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 3.0),
               child: ClipOval(
                 child: Container(
                   width: 8,
                   height: 8,
                   color: index == widget.imageList[_index % length]
                       ?Colors.white:Colors.grey,
                 ),
               ),
             );
           }).toList(),
         )
     );
  }

  Widget _pageView(){
    if(widget.imageList.isEmpty){
      return const SizedBox();
    }
    var length = widget.imageList.length;
    return SizedBox(
      height: 200,
      child: PageView.builder(
          controller: _pageController,
          itemCount:length,
          physics: const PageScrollPhysics(parent: BouncingScrollPhysics()),
          onPageChanged: (index){
            setState(() {
              _index = index;
              _changePage();
            });
          },
          itemBuilder: (context,index) {
              return GestureDetector(
                onPanDown: (down){
                  _timeCancel();
                },
                /*点击位置回传*/
                onTap: (){

                },
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                   child: Image.network(widget.imageList[index].imagePath),
                 ),
              );
          })
    );
  }

  ///切换图片
  _changePage(){
    Timer(const Duration(milliseconds: 300), () {
      _pageController.jumpToPage(_index);
    });
  }

  ///开始
  _timeStart(){
    if(_timer != null){
      _timer?.cancel();
      _timer = null;
    }
    _timer ??= Timer.periodic(const Duration(seconds: 3), (timer) {
      _index++;
      if(_index>=widget.imageList.length){
        _index = 0;
      }
      print('_index=  $_index');
      _pageController.animateToPage(
        _index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    });
  }
  ///终止
  _timeCancel(){
    if(_timer != null){
      _timer?.cancel();
      _timer = null;
      _timeStart();
    }
  }
}

