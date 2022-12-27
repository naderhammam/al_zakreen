import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:al_zakreen/test_date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarsComponent extends StatelessWidget {
  const CalendarsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadiusDirectional.circular(4.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: ColorManager.greyShade300,
                spreadRadius: 1.r,
                blurRadius: 2.r,
                offset: Offset(0, 1.r))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(
                top: 10.44.h, left: 8.w),
            child: Row(
              children: [
                SvgPicture.asset(
                  IconManager.ramadanIcon,
                  width: 14.5.w,
                  height: 13.54.h,
                ),
                SizedBox(
                  width: 6.25.w,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${hijriDate.hDay} ',
                        style:  TextStyle(
                          fontFamily: 'Josefin Sans',
                          color: ColorManager.teal,
                          fontSize: 13.sp,
                        ),
                      ),
                      TextSpan(
                        text:
                        '${hijriDate.shortMonthName} ',
                        style:  TextStyle(
                          fontFamily: 'Josefin Sans',
                          color: ColorManager.teal,
                          fontSize: 13.sp,
                        ),
                      ),
                      TextSpan(
                        text: '${hijriDate.hYear} AH',
                        style:  TextStyle(
                          fontFamily: 'Josefin Sans',
                          color: ColorManager.teal,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.52.h,),
          Padding(
            padding:  EdgeInsets.only(
                left: 8.25.w),
            child: Row(

              children: [
                SvgPicture.asset(
                  IconManager.calendarIcon,
                  // width: 13.5.w,
                  // height: 15.h,
                ),
                SizedBox(
                  width: 6.25.w,
                ),
                Text(
                  '$todayDate, $todayDateNumber $todayMonth',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                    fontFamily: 'Josefin Sans',
                    fontSize: 13.sp,
                    color: ColorManager.teal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
