import 'package:al_zakreen/core/error/failure.dart';
import 'package:al_zakreen/domain/entities/prayer_times.dart';
import 'package:al_zakreen/domain/repository/base_prayer_times_repository.dart';
import 'package:al_zakreen/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPrayerTimesUseCase extends BaseUseCase<Timings,PrayerTimesParameters>{

  final BasePrayerTimesRepository basePrayerTimesRepository;
  GetPrayerTimesUseCase(this.basePrayerTimesRepository);

  @override
  Future<Either<Failure, Timings>> call(PrayerTimesParameters parameters) async{
    return await basePrayerTimesRepository.getPrayerTimesRepository(parameters);
  }
}

class PrayerTimesParameters extends Equatable {
  final double lat;
  final double long;

  const PrayerTimesParameters({
    required this.lat,
    required this.long,
  });

  @override
  List<Object?> get props => [lat, long];
}