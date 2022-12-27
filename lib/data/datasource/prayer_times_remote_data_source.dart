import 'package:al_zakreen/core/error/exceptions.dart';
import 'package:al_zakreen/core/network/api_constance.dart';
import 'package:al_zakreen/core/network/error_message_model.dart';
import 'package:al_zakreen/data/model/prayer_time_timing_model.dart';
import 'package:al_zakreen/domain/usecase/get_prayer_time_usecase.dart';
import 'package:dio/dio.dart';

abstract class BasePrayerTimesRemoteDataSource {
  Future<PrayerTimeTimingModel> getPrayerTimesDataSource(PrayerTimesParameters parameters);
}

class PrayerTimesRemoteDataSource extends BasePrayerTimesRemoteDataSource{

  @override
  Future<PrayerTimeTimingModel> getPrayerTimesDataSource(PrayerTimesParameters parameters) async{
    final response = await Dio().get(ApiConstance.prayerTimesUrl);

    if(response.statusCode == 200){
      return PrayerTimeTimingModel.fromJson((response.data)['data']['timings']);
    } else {
      throw ServerExceptionPrayerTimes(errorMassageModelPrayerTimes: ErrorMassageModelPrayerTimes.fromJson(response.data));
    }
  }
}