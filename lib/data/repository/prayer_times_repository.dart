import 'package:al_zakreen/core/error/exceptions.dart';
import 'package:al_zakreen/core/error/failure.dart';
import 'package:al_zakreen/data/datasource/prayer_times_remote_data_source.dart';
import 'package:al_zakreen/domain/entities/prayer_times.dart';
import 'package:al_zakreen/domain/repository/base_prayer_times_repository.dart';
import 'package:al_zakreen/domain/usecase/get_prayer_time_usecase.dart';
import 'package:dartz/dartz.dart';

class PrayerTimesRepository extends BasePrayerTimesRepository {
  final BasePrayerTimesRemoteDataSource basePrayerTimesRemoteDataSource;

  PrayerTimesRepository(this.basePrayerTimesRemoteDataSource);

  @override
  Future<Either<Failure, Timings>> getPrayerTimesRepository(PrayerTimesParameters parameters) async {
    final result = await basePrayerTimesRemoteDataSource.getPrayerTimesDataSource(parameters);
    try {
      return Right(result);
    } on ServerExceptionPrayerTimes catch (failure) {
      return Left(ServerFailure(failure.errorMassageModelPrayerTimes.status));
    }
  }

}
