import 'package:al_zakreen/core/error/failure.dart';
import 'package:al_zakreen/domain/entities/prayer_times.dart';
import 'package:al_zakreen/domain/usecase/get_prayer_time_usecase.dart';
import 'package:dartz/dartz.dart';


abstract class BasePrayerTimesRepository {

  Future<Either<Failure,Timings>> getPrayerTimesRepository(PrayerTimesParameters parameters);
}