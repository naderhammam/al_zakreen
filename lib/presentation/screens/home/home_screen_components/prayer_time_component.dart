import 'package:al_zakreen/presentation/controller/prayer_times_bloc.dart';
import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrayerTimeComponent extends StatelessWidget {
  const PrayerTimeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimesBloc, PrayerTimesState>(
      builder: (context, state) {

        String convert24To12(DateTime time12) {
          bool isGreaterThan12 = time12.hour > 12;
          int hour = isGreaterThan12 ? time12.hour - 12 : time12.hour;
          int minute = time12.minute;
          String hourInString = hour.toString().length == 1 ? '0$hour' : '$hour';
          String minuteInString = minute.toString().length == 1 ? '0$minute' : '$minute';
          return '$hourInString:$minuteInString';
        }

        return Container(
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(4.r),
            boxShadow: [
              BoxShadow(
                color: ColorManager.greyShade300,
                spreadRadius: 1.r,
                blurRadius: 2.r,
                offset: Offset(0, 1.r),
              )
            ],
          ),
          width: double.infinity,
          height: 61.h,
          child: Padding(
            padding: EdgeInsets.only(top: 8.h, left: 9.w, right: 9.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(children: [
                    Text(
                      'Fajr',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      convert24To12(DateTime.parse(
                          '0000-00-00 ${state.timings?.fajr ?? '00:00'}:04Z')),                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'AM',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                  ]),
                  SizedBox(
                    width: 19.w,
                  ),
                  Column(children: [
                    Text(
                      'Shroq',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      convert24To12(DateTime.parse(
                          '1969-07-20 ${state.timings?.sunrise ?? '00:00'}:04Z')),                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'AM',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                  ]),
                  SizedBox(
                    width: 19.w,
                  ),
                  Column(children: [
                    Text(
                      'Duhr',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                        convert24To12(DateTime.parse(
                            '0000-00-00 ${state.timings?.dhuhr ?? '00:00'}:04Z')),
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'PM',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                  ]),
                  SizedBox(
                    width: 19.w,
                  ),
                  Column(children: [
                    Text(
                      'Asr',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      convert24To12(DateTime.parse(
                          '1969-07-20 ${state.timings?.asr ?? '00:00'}:04Z')),
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'PM',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                  ]),
                  SizedBox(
                    width: 19.w,
                  ),
                  Column(children: [
                    Text(
                      'Maghrib',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      convert24To12(DateTime.parse(
                          '0000-00-00 ${state.timings?.maghrib ?? '00:00'}:04Z')),
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'PM',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                  ]),
                  SizedBox(
                    width: 19.w,
                  ),
                  Column(children: [
                    Text(
                      'Asha',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      convert24To12(DateTime.parse(
                          '0000-00-00 ${state.timings?.isha ?? '00:00'}:04Z')),
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'PM',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManager.teal),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
