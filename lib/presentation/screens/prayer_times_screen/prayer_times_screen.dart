import 'package:al_zakreen/core/services/services_locator.dart';
import 'package:al_zakreen/location_service.dart';
import 'package:al_zakreen/presentation/controller/prayer_times_bloc.dart';
import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:al_zakreen/test_date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class PrayerTimesScreen extends StatelessWidget {
  const PrayerTimesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prayer Time'),
        backgroundColor: ColorManager.primary,
        elevation: 8,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 159.h,
                width: double.infinity,
                child: BlocProvider(
                  create: (context) => sl<PrayerTimesBloc>()
                    ..add(GetPrayerTimesEvent(
                        UserLocation.latNum, UserLocation.longNum)),
                  child: BlocBuilder<PrayerTimesBloc, PrayerTimesState>(
                      builder: (context, state) {
                    String nextAzanNameCompere() {
                      DateTime fajr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.fajr ?? '00'}:00");
                      DateTime sunrise = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.sunrise ?? '00'}:00");
                      DateTime duhr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.dhuhr ?? '00'}:00");
                      DateTime asr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.asr ?? '00'}:00");
                      DateTime maghrib = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.maghrib ?? '00'}:00");
                      DateTime isha = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.isha ?? '00'}:00");
                      DateTime dt2 = DateTime.now();

                      if (fajr.compareTo(dt2) > 0) {
                        return ("Fajr");
                      } else if (sunrise.compareTo(dt2) > 0) {
                        return ("Shroq");
                      } else if (duhr.compareTo(dt2) > 0) {
                        return ("Duhr");
                      } else if (asr.compareTo(dt2) > 0) {
                        return ("Asr");
                      } else if (maghrib.compareTo(dt2) > 0) {
                        return ("Maghrib");
                      } else if (isha.compareTo(dt2) > 0) {
                        return ("Isha");
                      }
                      return 'waiting';
                    }

                    String nextAzanTimeCompere() {
                      int fajr = DateTime.parse(
                              "0000-00-00 ${state.timings?.fajr ?? '00'}:00")
                          .hour;
                      int sunrise = DateTime.parse(
                              "0000-00-00 ${state.timings?.sunrise ?? '00'}:00")
                          .hour;
                      int duhr = DateTime.parse(
                              "0000-00-00 ${state.timings?.dhuhr ?? '00'}:00")
                          .hour;
                      int asr = DateTime.parse(
                              "0000-00-00 ${state.timings?.asr ?? '00'}:00")
                          .hour;
                      int maghrib = DateTime.parse(
                              "0000-00-00 ${state.timings?.maghrib ?? '00'}:00")
                          .hour;
                      int isha = DateTime.parse(
                              "0000-00-00 ${state.timings?.isha ?? '00'}:00")
                          .hour;
                      String amOrPm = DateTime.now().hour > 11 ? 'PM' : 'AM';
                      int dt2 = DateTime.now().hour;

                      if (fajr > dt2) {
                        if (fajr > 12) {
                          return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.fajr ?? '00:00'}:04Z'))} $amOrPm');
                        }
                        return ('${state.timings?.fajr ?? '00'} $amOrPm');
                      } else if (sunrise > dt2) {
                        if (sunrise > 12) {
                          return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.sunrise ?? '00:00'}:04Z'))} $amOrPm');
                        }
                        return ('${state.timings?.sunrise ?? '00'} $amOrPm');
                      } else if (duhr > dt2) {
                        if (duhr > 12) {
                          return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.dhuhr ?? '00:00'}:04Z'))} $amOrPm');
                        }
                        return ('${state.timings?.dhuhr ?? '00'} $amOrPm');
                      } else if (asr > dt2) {
                        if (asr > 12) {
                          return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.asr ?? '00:00'}:04Z'))} $amOrPm');
                        }
                        return ('${state.timings?.asr ?? '00'} $amOrPm');
                      } else if (maghrib > dt2) {
                        if (maghrib > 12) {
                          return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.maghrib ?? '00:00'}:04Z'))} $amOrPm');
                        }
                        return ('${state.timings?.maghrib ?? '00'} $amOrPm');
                      } else if (isha > dt2) {
                        if (isha > 12) {
                          return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.isha ?? '00:00'}:04Z'))} $amOrPm');
                        }
                        return ('${state.timings?.isha ?? '00'} $amOrPm');
                      }
                      return 'waiting';
                    }


                    String nextAzanHourRemain() {
                      DateTime fajr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.fajr ?? '00'}:00");
                      DateTime sunrise = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.sunrise ?? '00'}:00");
                      DateTime duhr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.dhuhr ?? '00'}:00");
                      DateTime asr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.asr ?? '00'}:00");
                      DateTime maghrib = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.maghrib ?? '00'}:00");
                      DateTime isha = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.isha ?? '00'}:00");
                      DateTime dt2 = DateTime.now();

                      if (fajr.compareTo(dt2) > 0) {
                        final result = dt2.difference(fajr);
                        return ('Will start in ${result.inHours} fajr');
                      } else if (sunrise.compareTo(dt2) > 0) {
                        final result = dt2.difference(sunrise);
                        return ('Will start in ${result.inHours} sunrise');
                      } else if (duhr.compareTo(dt2) > 0) {
                        final result = dt2.difference(duhr);
                        return ('Will start in ${result.inHours} duhr');
                      } else if (asr.compareTo(dt2) > 0) {
                        final result = asr.difference(dt2);
                        return ('Will start in ${result.inHours} asr');
                      } else if (maghrib.compareTo(dt2) > 0) {
                        final result = maghrib.difference(dt2);
                        return ('Will start in ${result.inHours} maghrib');
                      } else if (isha.compareTo(dt2) > 0) {
                        final result = isha.difference(dt2);
                        return ('Will start in ${result.inHours} isha');
                      }
                      return 'waiting';
                    }

                    String nextAzanMinuteRemain() {
                      DateTime fajr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.fajr ?? '00'}:00");
                      DateTime sunrise = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.sunrise ?? '00'}:00");
                      DateTime duhr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.dhuhr ?? '00'}:00");
                      DateTime asr = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.asr ?? '00'}:00");
                      DateTime maghrib = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.maghrib ?? '00'}:00");
                      DateTime isha = DateTime.parse(
                          "${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.isha ?? '00'}:00");
                      DateTime dt2 = DateTime.now();

                      if (fajr.compareTo(dt2) > 0) {
                        final result1 = fajr.difference(dt2).inMinutes;
                        int result2 = result1 ~/ 60;
                        int result3 = result2 * 60;
                        int result4 = result1 - result3;
                        return ('Will start in $result4 fajr');
                      } else if (sunrise.compareTo(dt2) > 0) {
                        final result1 = sunrise.difference(dt2).inMinutes;
                        int result2 = result1 ~/ 60;
                        int result3 = result2 * 60;
                        int result4 = result1 - result3;
                        return ('Will start in $result4 sunrise');
                      } else if (duhr.compareTo(dt2) > 0) {
                        final result1 = duhr.difference(dt2).inMinutes;
                        int result2 = result1 ~/ 60;
                        int result3 = result2 * 60;
                        int result4 = result1 - result3;
                        return ('Will start in $result4 duhr');
                      } else if (asr.compareTo(dt2) > 0) {
                        final result1 = asr.difference(dt2).inMinutes;
                        int result2 = result1 ~/ 60;
                        int result3 = result2 * 60;
                        int result4 = result1 - result3;
                        return ('Will start in $result4 asr');
                      } else if (maghrib.compareTo(dt2) > 0) {
                        final result1 = maghrib.difference(dt2).inMinutes;
                        int result2 = result1 ~/ 60;
                        int result3 = result2 * 60;
                        int result4 = result1 - result3;
                        return ('Will start in $result4 maghrib');
                      } else if (isha.compareTo(dt2) > 0) {
                        final result1 = isha.difference(dt2).inMinutes;
                        int result2 = result1 ~/ 60;
                        int result3 = result2 * 60;
                        int result4 = result1 - result3;
                        return ('Will start in $result4 isha');
                      }
                      return 'waiting';
                    }



                    // String nextAzanMinuteRemain (){
                    //   int fajr = DateTime.parse("0000-00-00 ${state.timings?.fajr??'00'}:00").minute;
                    //   int sunrise = DateTime.parse("0000-00-00 ${state.timings?.sunrise??'00'}:00").minute;
                    //   int duhr = DateTime.parse("0000-00-00 ${state.timings?.dhuhr??'00'}:00").minute;
                    //   int asr = DateTime.parse("0000-00-00 ${state.timings?.asr??'00'}:00").minute;
                    //   int maghrib = DateTime.parse("0000-00-00 ${state.timings?.maghrib??'00'}:00").minute;
                    //   int isha = DateTime.parse("0000-00-00 ${state.timings?.isha??'00'}:00").minute;
                    //   int dt2 = DateTime.now().minute;
                    //
                    //   if(fajr > dt2){
                    //
                    //   }else if(sunrise > dt2){
                    //
                    //   }else if(duhr > dt2){
                    //
                    //   }else if(asr > dt2){
                    //
                    //   }else if(maghrib > dt2){
                    //
                    //   }else if(isha > dt2){
                    //
                    //   }
                    //   return 'waiting';
                    // }



                    DateTime fajr = DateTime.parse(
                        "${DateTime.parse("${DateTime.now().year}-0${DateTime.now().month}-${DateTime.now().day} ${state.timings?.fajr ?? '00'}:00")}");

                    final dDay = DateTime.parse("$fajr");
                    DateTime berlinWallFell = DateTime.now();
                    final difference = berlinWallFell.difference(dDay);
                    // print('${difference.inMinutes} fajr');
                    // print(state.timings?.fajr ?? 'waaaaaaaaaaaaaaaaawwwwwwwwwwwwwwwwwwwwwaaaaaaaaaaaaaaaaaaa');
                    int calculateHoursNowPlus12 = int.parse(TestTimer
                            .convert24To12PrayerTimeHourOnly(DateTime.parse(
                                    '1969-07-20 ${state.timings?.fajr ?? '00:00'}:04Z')
                                .hour)) -
                        0;
                    int calculateHoursNowMinus12 = 12 -
                        int.parse(TestTimer.convert24To12NowTimeHourOnly());


                    return ListView(
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 159.h,
                          child: Stack(
                            children: [
                              Image.asset(
                                ImageManager.prayerTime1,
                                height: 159.h,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30.h),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Next Azan ',
                                          style: TextStyle(
                                              fontFamily: 'Josefin Sans',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 18.sp),
                                        ),
                                        Text(
                                          nextAzanNameCompere(),
                                          style: TextStyle(
                                              fontFamily: 'Josefin Sans',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 22.sp),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      nextAzanTimeCompere(),
                                      style: TextStyle(
                                          fontFamily: 'Josefin Sans',
                                          color: Colors.white,
                                          fontSize: 18.sp),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          nextAzanHourRemain(),
                                          style: TextStyle(
                                              fontFamily: 'Josefin Sans',
                                              color: Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          nextAzanMinuteRemain(),
                                          style: TextStyle(
                                              fontFamily: 'Josefin Sans',
                                              color: Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 135.h),
                child: Container(
                  width: 328.w,
                  height: 52.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.r),
                      boxShadow: [
                        BoxShadow(
                            color: ColorManager.greyShade300,
                            spreadRadius: 0.r,
                            blurRadius: 1.r,
                            offset: Offset(0, 2.r))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${hijriDate.hDay} ',
                              style: TextStyle(
                                fontFamily: 'Josefin Sans',
                                color: ColorManager.teal,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: '${hijriDate.shortMonthName} ',
                              style: TextStyle(
                                fontFamily: 'Josefin Sans',
                                color: ColorManager.teal,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: '${hijriDate.hYear} AH',
                              style: TextStyle(
                                fontFamily: 'Josefin Sans',
                                color: ColorManager.teal,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.52.h,
                      ),
                      Text(
                        '$todayDate, $todayDateNumber $todayMonth',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 13.sp,
                          color: ColorManager.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              height: 325.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.greyShade300,
                    spreadRadius: 1.r,
                    blurRadius: 4.r,
                  )
                ],
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 16.h,bottom: 16.h,left: 16.w,right: 16.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconManager.sunriseIcon,
                          width: 22.w,
                          height: 17.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Fajr',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 0.5.h,
                      width: double.infinity,
                      color: ColorManager.greyShade400,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconManager.sunriseIcon,
                          width: 22.w,
                          height: 17.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Sunrise',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 0.5.h,
                      width: double.infinity,
                      color: ColorManager.greyShade400,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconManager.duhrIcon,
                          width: 22.w,
                          height: 16.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Duhr',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 0.5.h,
                      width: double.infinity,
                      color: ColorManager.greyShade400,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconManager.asrIcon,
                          width: 22.w,
                          height: 17.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Asr',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 0.5.h,
                      width: double.infinity,
                      color: ColorManager.greyShade400,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconManager.maghrebIcon,
                          width: 22.w,
                          height: 22.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Maghreb',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 0.5.h,
                      width: double.infinity,
                      color: ColorManager.greyShade400,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconManager.ishaIcon,
                          width: 22.w,
                          height: 17.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Isha',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
