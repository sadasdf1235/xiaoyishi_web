import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller.dart';
import 'I18n.dart';

class HomeView extends GetView<Controller> {
  const HomeView({super.key});
  Widget _navItem(title, index) {
    bool isCheck = controller.checkIndex == index;
    return InkWell(
      onTap: () {
        controller.changeCheckIndex(index);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.w)),
          color: isCheck ? controller.btnColor : Colors.transparent,
        ),
        padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 12.5.h),
        child: Text(
          title,
          style: TextStyle(
            color: isCheck ? Colors.black : Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Container(
            width: double.infinity,
            height: double.infinity,
            color: controller.themeColor,
            padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 35.h),
            child: Column(
              children: [
                SizedBox(
                  height: 61,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.cover,
                            width: 61.w,
                            height: 61.w,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            I18n.XiaoYiShi.tr,
                            style: TextStyle(
                                fontSize: 35.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children:
                            List.generate(controller.navList.length, (index) {
                          return _navItem(controller.navList[index], index);
                        }),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 63.h),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/phone.png',fit: BoxFit.cover,),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              I18n.SecGood.tr,
                              style: TextStyle(
                                  color: controller.btnColor, fontSize: 48.sp),
                            ),
                            SizedBox(height: 40.h,),
                            Text(
                              I18n.Publicity.tr,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                            SizedBox(height: 46.h,),
                            SizedBox(
                              width: 455.w,
                              height: 85.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        controller.btnColor)),
                                child: Text(
                                  I18n.FindSecGood.tr,
                                  style: TextStyle(color: Colors.white,fontSize: 24.sp),
                                ),
                              ),
                            ),
                            SizedBox(height: 119.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/images/lianshu.png',width: 40.w,height: 40.w,fit: BoxFit.cover,),
                                Image.asset('assets/images/instagram.png',width: 40.w,height: 40.w,fit: BoxFit.cover,),
                                Image.asset('assets/images/twitter-circle-fill.png',width: 40.w,height: 40.w,fit: BoxFit.cover,),
                                Image.asset('assets/images/weixin.png',width: 40.w,height: 40.w,fit: BoxFit.cover,)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
