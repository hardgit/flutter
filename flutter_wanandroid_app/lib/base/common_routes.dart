import 'package:flutter_wanandroid_app/page/home_page/home_page.dart';
import 'package:flutter_wanandroid_app/page/login_page/login_binding.dart';
import 'package:flutter_wanandroid_app/page/login_page/login_page.dart';
import 'package:flutter_wanandroid_app/page/main_binding.dart';
import 'package:flutter_wanandroid_app/page/main_page.dart';
import 'package:flutter_wanandroid_app/page/mine_page/mine_history_page/mine_history_binding.dart';
import 'package:flutter_wanandroid_app/page/mine_page/mine_history_page/mine_history_page.dart';
import 'package:flutter_wanandroid_app/page/register_page/register_binding.dart';
import 'package:flutter_wanandroid_app/page/register_page/register_page.dart';
import 'package:flutter_wanandroid_app/page/webview_page/web_binding.dart';
import 'package:flutter_wanandroid_app/page/webview_page/web_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

///@FileName common_routes
///@Date 2021/12/17  11:01
///@author zf
///@Description TODO 统一路由管理

abstract class CommonRoutes {

  static const String login = '/login'; ///登录页
  static const String register = '/register'; ///注册页
  static const String main = '/main';///主页
  static const String web = '/web';///webview页
  static const String history = '/history';///历史


  ///页面合集
  static final routePage = [
    GetPage(
        name: login,
        page: () =>  LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: register,
        page: () =>  RegisterPage(),
        binding: RegisterBinding()),
    GetPage(
        name: main,
        page: () => const MainPage(),
        binding: MainBinding()),
    GetPage(
        name: web,
        page: () => const WebViewPage(),
        binding: WebBinding()),
    GetPage(
        name: history,
        page: () => const MineHistoryPage(),
        binding: MineHistoryBinding()),

  ];
}