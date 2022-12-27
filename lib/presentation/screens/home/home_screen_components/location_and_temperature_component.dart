import 'package:al_zakreen/core/utils/enum.dart';
import 'package:al_zakreen/location_service.dart';
import 'package:al_zakreen/presentation/controller/temperature_bloc.dart';
import 'package:al_zakreen/presentation/controller/temperature_state.dart';
import 'package:al_zakreen/presentation/resources/assets_manager.dart';
import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';

class LocationAndTemperatureComponent extends StatefulWidget {
  const LocationAndTemperatureComponent({Key? key}) : super(key: key);

  @override
  State<LocationAndTemperatureComponent> createState() => _LocationAndTemperatureComponentState();
}

class _LocationAndTemperatureComponentState extends State<LocationAndTemperatureComponent> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  String country = '';
  String area = '';

  Future<void> getLocation() async {
    List<Placemark> placeMark = await placemarkFromCoordinates(
      UserLocation.latNum,
      UserLocation.longNum,
    );

    setState(() {
      country = placeMark[0].isoCountryCode ?? '';
      area = placeMark[0].administrativeArea ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TemperatureBloc, TemperatureState> (
      builder: (context, state) {
         switch(state.hourlyTemperatureState) {
          case RequestState.loading:
            return const Center(child: CircularProgressIndicator());
          case RequestState.loaded:
            return Container(
              height: 54.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadiusDirectional.circular(4.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 1.r,
                        blurRadius: 2.r,
                        offset: Offset(0, 1.r))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(

                    padding: EdgeInsets.only(
                        top: 10.44.h, left: 9.75.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            IconManager.locationIcon,
                            width: 10.5.w,
                            height: 15.h,
                          ),
                          SizedBox(
                            width: 6.25.w,
                          ),
                          Text(
                            '$area, $country',
                            style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.52.h, left: 11.25.w),
                    child: Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          IconManager.temperatureIcon,
                        ),
                        SizedBox(
                          width: 6.25.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Text(
                            '${state.hourlyTemperature?.currentWeather}',
                            style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              color: ColorManager.teal,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          IconManager.degreeIcon,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          case RequestState.error:
            return SizedBox(
              child: Center(child: Text(state.hourlyTemperatureMessage)),
            );
        }
      },
    );
  }
}
