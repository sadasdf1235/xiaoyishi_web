import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'I18n.dart';

class Controller extends GetxController{
  Color themeColor = const Color(0xFF243034);
  Color btnColor = const Color(0xFF7CEEFF);


  List navList = [
    I18n.Home.tr,
    I18n.About_Us.tr,
    // I18n.Contact_Us.tr,
    I18n.Help.tr,
    I18n.Download.tr,
  ];
  RxInt checkIndex = 0.obs;
  void changeCheckIndex(int index){
    checkIndex.value = index;
    update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}