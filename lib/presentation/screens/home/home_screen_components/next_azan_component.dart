import 'package:al_zakreen/presentation/controller/prayer_times_bloc.dart';
import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/screens/home/home_screen_components/next_azan_operations.dart';
import 'package:al_zakreen/test_date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextAzanComponent extends StatelessWidget {
  const NextAzanComponent({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {



    return BlocBuilder<PrayerTimesBloc, PrayerTimesState>(
      builder: (context, state) {

        String nextAzanNameCompere (){
          int fajr = DateTime.parse("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${state.timings?.fajr??'00'}:00").hour;
          int sunrise = DateTime.parse("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${state.timings?.sunrise??'00'}:00").hour;
          int duhr = DateTime.parse("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${state.timings?.dhuhr??'00'}:00").hour;
          int asr = DateTime.parse("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${state.timings?.asr??'00'}:00").hour;
          int maghrib = DateTime.parse("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${state.timings?.maghrib??'00'}:00").hour;
          int isha = DateTime.parse("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${state.timings?.isha??'00'}:00").hour;
          int dt2 = DateTime.now().hour;

          if(fajr > dt2){
            return("Fajr");
          } else if(sunrise > dt2){
            return("Shroq" );
          } else if(duhr > dt2){
          return("Duhr");
          } else if(asr > dt2){
            return("Asr");
          } else if(maghrib > dt2){
            return("Maghrib");
          } else if(isha > dt2){
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
          int fajr = DateTime.parse("0000-00-00 ${state.timings?.fajr??'10'}:00").hour;
          int sunrise = DateTime.parse("0000-00-00 ${state.timings?.sunrise??'10'}:00").hour;
          int duhr = DateTime.parse("0000-00-00 ${state.timings?.dhuhr??'10'}:10").hour;
          int asr = DateTime.parse("0000-00-00 ${state.timings?.asr??'10'}:00").hour;
          int maghrib = DateTime.parse("0000-00-00 ${state.timings?.maghrib??'10'}:00").hour;
          int isha = DateTime.parse("0000-00-00 ${state.timings?.isha??'10'}:00").hour;
          int dt2 = DateTime.now().hour;

          if(fajr > dt2){
            return('Will start in ${fajr - DateTime.now().hour} hour');
          }else if(sunrise > dt2){
            return('Will start in ${sunrise - DateTime.now().hour} hour');
          }else if(duhr > dt2){
            return('Will start in ${duhr - DateTime.now().hour} hour');
          }else if(asr > dt2){
            return('Will start in ${asr - DateTime.now().hour } hour');
          }else if(maghrib > dt2){
            return('Will start in ${maghrib - DateTime.now().hour} hour');
          }else if(isha > dt2){
            return('Will start in ${isha - DateTime.now().hour} hour');
          }
          return 'waiting';
        }

        String nextAzanMinuteRemain (){
          int fajr = DateTime.parse("0000-00-00 ${state.timings?.fajr??'00'}:00").minute;
          int sunrise = DateTime.parse("0000-00-00 ${state.timings?.sunrise??'00'}:00").minute;
          int duhr = DateTime.parse("0000-00-00 ${state.timings?.dhuhr??'00'}:00").minute;
          int asr = DateTime.parse("0000-00-00 ${state.timings?.asr??'00'}:00").minute;
          int maghrib = DateTime.parse("0000-00-00 ${state.timings?.maghrib??'00'}:00").minute;
          int isha = DateTime.parse("0000-00-00 ${state.timings?.isha??'00'}:00").minute;
          int dt2 = DateTime.now().minute;

          if(fajr > dt2){
            final berlinWallFell = DateTime.parse("$fajr");
            DateTime dDay = DateTime.now();
            final difference = berlinWallFell.difference(dDay);
            return('${difference.inMinutes} fajr');
          }else if(sunrise > dt2){
            final berlinWallFell = DateTime.parse("$sunrise");
            DateTime dDay = DateTime.now();
            final difference = berlinWallFell.difference(dDay);
            return('${difference.inMinutes} sunrise');
          }else if(duhr > dt2){
            final berlinWallFell = DateTime.parse("$duhr");
            DateTime dDay = DateTime.now();
            final difference = berlinWallFell.difference(dDay);
            return('${difference.inMinutes} asr');
          }else if(asr > dt2){
            final berlinWallFell = DateTime.parse("$asr");
            DateTime dDay = DateTime.now();
            final difference = berlinWallFell.difference(dDay);
            return('${difference.inMinutes} maghrib');
          }else if(maghrib > dt2){
            final berlinWallFell = DateTime.parse("$maghrib");
            DateTime dDay = DateTime.now();
            final difference = berlinWallFell.difference(dDay);
            return('${difference.inMinutes} maghrib');
          }else if(isha > dt2){
            final berlinWallFell = DateTime.parse("$isha");
            DateTime dDay = DateTime.now();
            final difference = berlinWallFell.difference(dDay);
            return('${difference.inMinutes} isha');
          }
          return 'waiting';
        }

        DateTime fajr = DateTime.parse("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${state.timings?.fajr??'00'}:00");

        final dDay = DateTime.parse("$fajr");
        DateTime berlinWallFell = DateTime.now();
        final difference = berlinWallFell.difference(dDay);
        // print('${difference.inMinutes} fajr');
        // print(state.timings?.fajr ?? 'waaaaaaaaaaaaaaaaawwwwwwwwwwwwwwwwwwwwwaaaaaaaaaaaaaaaaaaa');

        print("issssssssssssssssssssssssssssssssssssssssss:: $fajr");
        print("issssssssssssssssssssssssssssssssssssssssss:: $berlinWallFell");



        // print('issssssssssssssssssssssssssssssssssssssssss:: ${difference.inMinutes}');

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
                          'sas',
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
