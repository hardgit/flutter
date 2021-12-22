import 'package:flutter/material.dart';
import 'package:flutter_wanandroid_app/res/colors.dart';
import 'package:flutter_wanandroid_app/widgets/color.dart';

///@FileName app_theme
///@Date 2021/12/22  17:04
///@author zf
///@Description TODO app主题

const kPrimaryColor = Color(0xff171616);
const kPrimaryLightColor = Color(0xff151515);
const primaryDarkColor = Color(0xff1d1d1d);
const secondaryColor = Color(0xff1f1f1f);
const secondaryLightColor = Color(0xff1c1c1c);
const secondaryDarkColor = Color(0xff000000);

ThemeData get appThemeData => ThemeData(
    primaryColor: ColorStyle.color_FBE240,
    primarySwatch:createMaterialColor(ColorStyle.color_FBE240),
    primaryColorLight: ColorStyle.color_FBE240,
    scaffoldBackgroundColor: Colors.white,
    accentColor: kPrimaryColor,
    appBarTheme: appBarTheme,
    splashColor: Colors.transparent,/*去除点击效果*/
    textTheme: const TextTheme());

AppBarTheme get appBarTheme => const AppBarTheme();