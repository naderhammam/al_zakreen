import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:al_zakreen/presentation/screens/azkar_screen/azkar_screen_components/morning_azkar_screen/morning_azkar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Azkar',
          ),
          backgroundColor: ColorManager.primary,
          elevation: 8,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 16.h, bottom: 16.h, right: 16.w, left: 16.w),
              child: Column(
                children: [
                  Container(
                    height: 152.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.r),
                        boxShadow: [
                          BoxShadow(
                              color: ColorManager.greyShade300,
                              spreadRadius: 0.r,
                              blurRadius: 1.r,
                              offset: Offset(0, 1.r))
                        ]),
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 16.h,
                                    left: 16.w,
                                  ),
                                  child: Row(children: [
                                    SvgPicture.asset(IconManager.fajrIcon),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      'Today’s Dua',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Josefin Sans',
                                        color: ColorManager.teal,
                                      ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Text(
                                  '.(اللهم إني أسألك علماً نافعاً، ورزقاً طيباً وعملاً متقبلاً)',
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      color: ColorManager.blackAndTealDark,
                                      fontFamily: 'Arabic Typesetting'),
                                ),
                                SizedBox(
                                  height: 14.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Container(
                                    height: 0.5.h,
                                    width: double.infinity,
                                    color: ColorManager.greyShade300,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                              ],
                            ),
                            Image.asset(
                              ImageManager.azkarBackground,
                              width: 140.w,
                              height: 82.h,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MorningAzkarScreen())),
                        child: Ink(
                          height: 174.h,
                          width: 162.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: Colors.red,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 174.h,width: 162.w,),
                              Text('Morning',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      Column(children: [
                        Row(children: [
                          InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const MorningAzkarScreen())),
                            child: Ink(
                              height: 75.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: Colors.red,
                              ),
                              child: Stack(
                                children: [
                                  Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 75.h,width: 75.w,),
                                  Text('Travel',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w,),
                          InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const MorningAzkarScreen())),
                            child: Ink(
                              height: 75.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: Colors.red,
                              ),
                              child: Stack(
                                children: [
                                  Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 75.h,width: 75.w,),
                                  Text('Food &Drink',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                                ],
                              ),
                            ),
                          ),
                        ],),
                        SizedBox(height: 8.h,),
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const MorningAzkarScreen())),
                          child: Ink(
                            height: 91.h,
                            width: 158.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: Colors.red,
                            ),
                            child: Stack(
                              children: [
                                Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 91.h,width: 158.w,),
                                Text('Sleep',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                              ],
                            ),
                          ),
                        ),
                      ],)
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    children: [
                      Column(children: [
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const MorningAzkarScreen())),
                          child: Ink(
                            height: 91.h,
                            width: 162.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: Colors.red,
                            ),
                            child: Stack(
                              children: [
                                Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 91.h,width: 162.w,),
                                Text('Pray',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h,),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const MorningAzkarScreen())),
                              child: Ink(
                                height: 75.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  color: Colors.red,
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 75.h,width: 75.w,),
                                    Text('Travel',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const MorningAzkarScreen())),
                              child: Ink(
                                height: 75.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  color: Colors.red,
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 75.h,width: 75.w,),
                                    Text('Food',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],),
                      SizedBox(width: 8.w,),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                const MorningAzkarScreen())),
                        child: Ink(
                          height: 173.h,
                          width: 158.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: Colors.red,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(ImageManager.morningAzkarImage,fit: BoxFit.fill,height: 173.h,width: 158.w,),
                              Text('Evening',style: TextStyle(fontSize: 14.sp,fontFamily: 'Josefin Sans',color: ColorManager.white),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
