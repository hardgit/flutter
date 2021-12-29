import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_wanandroid_app/base/get_common_view.dart';
 import 'package:flutter_wanandroid_app/res/style.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_controller.dart';

///@FileName webview_page
///@Date 2021/12/29  14:23
///@author zf
///@Description TODO webview UI
class WebViewPage extends GetCommonView<WebController>{

  const WebViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(controller.entity.title,style: Styles.style_black_16,),
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
            initialUrl: controller.entity.url,
            javascriptMode: JavascriptMode.unrestricted,
          ))
        ],
      ),
    );
  }



}