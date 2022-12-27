import 'package:al_zakreen/core/services/services_locator.dart';
import 'package:al_zakreen/location_service.dart';
import 'package:al_zakreen/presentation/controller/prayer_times_bloc.dart';
import 'package:al_zakreen/presentation/controller/temperature_bloc.dart';
import 'package:al_zakreen/presentation/controller/temperature_event.dart';
import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:al_zakreen/presentation/screens/home/home_screen_components/location_and_temperature_component.dart';
import 'package:al_zakreen/presentation/screens/home/home_screen_components/calendar_component.dart';
import 'package:al_zakreen/presentation/screens/home/home_screen_components/name_of_allah_component.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_screen_components/home_screen_azkar.dart';
import 'home_screen_components/next_azan_component.dart';
import 'home_screen_components/prayer_time_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (
          create: (BuildContext context) => sl<TemperatureBloc>()
            ..add(GetHourlyTemperatureEvent()),
        ),
        BlocProvider (
          create: (BuildContext context) => sl<PrayerTimesBloc>()
          ..add(GetPrayerTimesEvent(UserLocation.latNum, UserLocation.longNum)),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          toolbarHeight: 54.h,
          leading: Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  IconManager.iconMenu,
                  width: 15.w,
                  height: 12.h,
                ),
                constraints: const BoxConstraints(
                    minWidth: 30, minHeight: double.infinity),
                onPressed: () {},
              ),
              SvgPicture.asset(
                ImageManager.logoBar,
                width: 28.w,
                height: 28.h,
              ),
            ],
          ),
          leadingWidth: 77.w,
          title: Padding(
            padding: EdgeInsets.only(
              top: 6.h,
            ),
            child: Text(
              'W AZAKREEN',
              style: TextStyle(
                fontFamily: 'Josefin Sans',
                fontSize: 20.sp,
              ),
            ),
          ),
          titleSpacing: 7.w,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 16.h, bottom: 16.h, left: 16.w, right: 16.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const NextAzanComponent(),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const CalendarsComponent(),
                                SizedBox(
                                  height: 12.h,
                                ),
                                const LocationAndTemperatureComponent(),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),

//----------------------------------------------------------------------
                      const PrayerTimeComponent(),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: [
                    AzkarComponents.eveningAskarHome(),
                    AzkarComponents.morningAskarHome(),
                    AzkarComponents.sleepAskarHome(),
                  ],
                  options: CarouselOptions(
                    height: 155.h,
                  ),
                ),
                const NameOfAllah(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
