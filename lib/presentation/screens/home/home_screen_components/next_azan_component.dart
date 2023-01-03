import 'package:al_zakreen/presentation/controller/prayer_times_bloc.dart';
import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/test_date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class NextAzanComponent extends StatelessWidget {
  const NextAzanComponent({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return BlocBuilder<PrayerTimesBloc, PrayerTimesState>(
        builder: (context, state) {
          String nextAzanNameCompere (){
            DateTime fajr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.fajr??'00'}:00");
            DateTime sunrise = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.sunrise??'00'}:00");
            DateTime duhr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.dhuhr??'00'}:00");
            DateTime asr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.asr??'00'}:00");
            DateTime maghrib = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.maghrib??'00'}:00");
            DateTime isha = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.isha??'00'}:00");
            DateTime dt2 = DateTime.now();

            if(fajr.compareTo(dt2) > 0){
              return("Fajr");
            } else if(sunrise.compareTo(dt2) > 0){
              return("Shroq" );
            } else if(duhr.compareTo(dt2) > 0){
              return("Duhr");
            } else if(asr.compareTo(dt2) > 0){
              return("Asr");
            } else if(maghrib.compareTo(dt2) > 0){
              return("Maghrib");
            } else if(isha.compareTo(dt2) > 0){
              return("Isha");
            }
            return 'waiting';
          }

          String nextAzanTimeCompere (){
            int fajr = DateTime.parse("0000-00-00 ${state.timings?.fajr??'00'}:00").hour;
            int sunrise = DateTime.parse("0000-00-00 ${state.timings?.sunrise??'00'}:00").hour;
            int duhr = DateTime.parse("0000-00-00 ${state.timings?.dhuhr??'00'}:00").hour;
            int asr = DateTime.parse("0000-00-00 ${state.timings?.asr??'00'}:00").hour;
            int maghrib = DateTime.parse("0000-00-00 ${state.timings?.maghrib??'00'}:00").hour;
            int isha = DateTime.parse("0000-00-00 ${state.timings?.isha??'00'}:00").hour;
            String amOrPm = DateTime.now().hour > 11 ? 'PM':'AM';
            int dt2 = DateTime.now().hour;


            if(fajr > dt2){
              if(fajr > 12){
                return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.fajr ?? '00:00'}:04Z'))} $amOrPm');
              }
              return('${state.timings?.fajr ?? '00'} $amOrPm');
            }else if(sunrise > dt2){
              if(sunrise > 12){
                return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.sunrise ?? '00:00'}:04Z'))} $amOrPm');
              }
              return('${state.timings?.sunrise ?? '00'} $amOrPm');
            }else if(duhr > dt2){
              if(duhr > 12){
                return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.dhuhr ?? '00:00'}:04Z'))} $amOrPm');
              }
              return('${state.timings?.dhuhr ?? '00'} $amOrPm');
            }else if(asr > dt2){
              if(asr > 12){
                return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.asr ?? '00:00'}:04Z'))} $amOrPm');
              }
              return('${state.timings?.asr ?? '00'} $amOrPm');
            }else if(maghrib > dt2){
              if(maghrib > 12){
                return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.maghrib ?? '00:00'}:04Z'))} $amOrPm');
              }
              return('${state.timings?.maghrib ?? '00'} $amOrPm');
            }else if(isha > dt2){
              if(isha > 12){
                return ('${TestTimer.convert24To12(DateTime.parse('1969-07-20 ${state.timings?.isha ?? '00:00'}:04Z'))} $amOrPm');
              }
              return('${state.timings?.isha ?? '00'} $amOrPm');
            }
            return 'waiting';

          }

          String nextAzanHourRemain (){
            DateTime fajr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.fajr??'00'}:00");
            DateTime sunrise = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.sunrise??'00'}:00");
            DateTime duhr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.dhuhr??'00'}:00");
            DateTime asr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.asr??'00'}:00");
            DateTime maghrib = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.maghrib??'00'}:00");
            DateTime isha = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.isha??'00'}:00");
            DateTime dt2 = DateTime.now();

            if(fajr.compareTo(dt2) > 0){
              final result = dt2.difference(fajr);
              return('Will start in ${result.inHours} fajr');
            }else if(sunrise.compareTo(dt2) > 0){
              final result = dt2.difference(sunrise);
              return('Will start in ${result.inHours} sunrise');
            }else if(duhr.compareTo(dt2) > 0){
              final result = dt2.difference(duhr);
              return('Will start in ${result.inHours} duhr');
            }else if(asr.compareTo(dt2) > 0){
              final result = asr.difference(dt2);
              return('Will start in ${result.inHours} asr');
            }else if(maghrib.compareTo(dt2) > 0){
              final result = maghrib.difference(dt2);
              return('Will start in ${result.inHours} maghrib');
            }else if(isha.compareTo(dt2) > 0){
              final result = isha.difference(dt2);
              return('Will start in ${result.inHours} isha');
            }
            return 'waiting';
          }

          String nextAzanMinuteRemain (){
            DateTime fajr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.fajr??'00'}:00");
            DateTime sunrise = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.sunrise??'00'}:00");
            DateTime duhr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.dhuhr??'00'}:00");
            DateTime asr = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.asr??'00'}:00");
            DateTime maghrib = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.maghrib??'00'}:00");
            DateTime isha = DateTime.parse("${DateFormat("yyyy-MM-dd").format(DateTime.now())} ${state.timings?.isha??'00'}:00");
            DateTime dt2 = DateTime.now();

            if(fajr.compareTo(dt2) > 0){
              final result1 = fajr.difference(dt2).inMinutes;
              int result2 = result1~/60;
              int result3 = result2*60;
              int result4 = result1 - result3;
              return('Will start in $result4 fajr');
            }else if(sunrise.compareTo(dt2) > 0){
              final result1 = sunrise.difference(dt2).inMinutes;
              int result2 = result1~/60;
              int result3 = result2*60;
              int result4 = result1 - result3;
              return('Will start in $result4 sunrise');
            }else if(duhr.compareTo(dt2) > 0){
              final result1 = duhr.difference(dt2).inMinutes;
              int result2 = result1~/60;
              int result3 = result2*60;
              int result4 = result1 - result3;
              return('Will start in $result4 duhr');
            }else if(asr.compareTo(dt2) > 0){
              final result1 = asr.difference(dt2).inMinutes;
              int result2 = result1~/60;
              int result3 = result2*60;
              int result4 = result1 - result3;
              return('Will start in $result4 asr');
            }else if(maghrib.compareTo(dt2) > 0){
              final result1 = maghrib.difference(dt2).inMinutes;
              int result2 = result1~/60;
              int result3 = result2*60;
              int result4 = result1 - result3;
              return('Will start in $result4 maghrib');
            }else if(isha.compareTo(dt2) > 0){
              final result1 = isha.difference(dt2).inMinutes;
              int result2 = result1~/60;
              int result3 = result2*60;
              int result4 = result1 - result3;
              return('Will start in $result4 isha');
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

          DateTime fajr = DateTime.parse("${DateTime.parse("${DateTime.now().year}-0${DateTime.now().month}-0${DateTime.now().day} ${state.timings?.fajr??'00'}:00")}");

          final dDay = DateTime.parse("$fajr");
          DateTime berlinWallFell = DateTime.now();
          final difference = berlinWallFell.difference(dDay);
          // print('${difference.inMinutes} fajr');
          // print(state.timings?.fajr ?? 'waaaaaaaaaaaaaaaaawwwwwwwwwwwwwwwwwwwwwaaaaaaaaaaaaaaaaaaa');
          int calculateHoursNowPlus12  = int.parse(TestTimer.convert24To12PrayerTimeHourOnly(DateTime.parse('1969-07-20 ${state.timings?.fajr ?? '00:00'}:04Z').hour)) - 0  ;
          int calculateHoursNowMinus12  = 12 - int.parse(TestTimer.convert24To12NowTimeHourOnly());





          return Expanded(
            child: Container(
              height: 119.41.h,
              // width: 158.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(4.r),
              ),
              child: Stack(
                // alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    ImageManager.homeImages1,
                    height: 119.41.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(
                            'Next Azan ',
                            style: TextStyle(
                                fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 14.sp),
                          ),
                          Text(
                            nextAzanNameCompere(),
                            style: TextStyle(
                                fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        nextAzanTimeCompere(),
                        style: TextStyle(
                            fontFamily: 'Josefin Sans',
                            color: Colors.white,
                            fontSize: 18.sp),
                      ),
                      Column(
                        children:  [
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            nextAzanHourRemain(),
                            style: TextStyle(
                                fontFamily: 'Josefin Sans',
                                color: Colors.white,
                                fontSize: 12.sp),
                          ),
                          Text(
                            nextAzanMinuteRemain(),
                            style: TextStyle(
                                fontFamily: 'Josefin Sans',
                                color: Colors.white,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}