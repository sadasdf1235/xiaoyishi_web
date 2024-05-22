import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'messages.dart';
import 'controller.dart';
import 'I18n.dart';
import 'home_view.dart';
import 'binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1728, 1117), // 设计稿中设备的尺寸
      minTextAdapt: true, // 是否根据宽度/高度中的最小值适配文字
      splitScreenMode: true, // 支持分屏尺寸
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: Messages(), // 国际化
          locale: ui.window.locale,
          fallbackLocale: const Locale('en', 'US'),
          home: const HomeView(),
          initialBinding: Binding(),
          // getPages: [
          //   GetPage(name: '/', page: ()=> const HomeView(),binding: Binding(),),
          // ],
        );
      },
    );
  }
}
