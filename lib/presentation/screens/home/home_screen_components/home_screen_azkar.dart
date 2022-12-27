import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AzkarComponents {
  static Widget eveningAskarHome() => Container(
        decoration: const BoxDecoration(),
        margin:  EdgeInsets.symmetric(horizontal: 5.w),
        child: Stack(
          children: [
            Container(
              height: 155.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(4.r),
              ),
              child: Image.asset(
                ImageManager.homeImages2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 8.w,
              ),
              child: Text(
                'Evening Azkar',
                style: TextStyle(
                  fontFamily: 'Josefin Sans',
                  fontSize: 18.sp,
                  color: ColorManager.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Padding(
                  padding: EdgeInsets.only(top: 37.h),
                  child: Text(
                    'بسم الله الرحمن الرحيم',
                    style: TextStyle(
                      fontFamily: 'Arabic Typesetting',
                      color: ColorManager.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.h,
                    left: 22.w,
                    right: 21.w,
                  ),
                  child: Text(
                    "قُلۡ هُوَ ٱللَّهُ أَحَدٌ (1) ٱللَّهُ ٱلصَّمَدُ (2) لَمۡ يَلِدۡ وَلَمۡ"
                    " يُولَدۡ (3) وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ (4)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Arabic Typesetting',
                      color: ColorManager.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  static Widget morningAskarHome() => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(4.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child: Stack(
          children: [
            SizedBox(
              height: 155.h,
              child: Image.asset(
                ImageManager.homeImages2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Text('morningAskarHome'),
          ],
        ),
      );
  static Widget sleepAskarHome() => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(4.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child: Stack(
          children: [
            SizedBox(
              height: 155.h,
              child: Image.asset(
                ImageManager.homeImages2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Text('sleepAskarHome'),
          ],
        ),
      );
}
