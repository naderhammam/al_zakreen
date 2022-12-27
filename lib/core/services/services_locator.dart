import 'package:al_zakreen/data/datasource/prayer_times_remote_data_source.dart';
import 'package:al_zakreen/data/datasource/temperature_remote_data_source.dart';
import 'package:al_zakreen/data/repository/prayer_times_repository.dart';
import 'package:al_zakreen/data/repository/temperature_repository.dart';
import 'package:al_zakreen/domain/repository/base_prayer_times_repository.dart';
import 'package:al_zakreen/domain/repository/base_temperature_repository.dart';
import 'package:al_zakreen/domain/usecase/get_hourly_temperture_usecase.dart';
import 'package:al_zakreen/domain/usecase/get_prayer_time_usecase.dart';
import 'package:al_zakreen/presentation/controller/prayer_times_bloc.dart';
import 'package:al_zakreen/presentation/controller/temperature_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///
    sl.registerFactory(() => TemperatureBloc(sl()));
    sl.registerFactory(() => PrayerTimesBloc(sl()));

    /// use cases
    sl.registerLazySingleton(() => GetHourlyTemperatureUseCase(sl()));
    sl.registerLazySingleton(() => GetPrayerTimesUseCase(sl()));

    /// repository
    sl.registerLazySingleton<BaseTemperatureRepository>(
        () => TemperatureRepository(sl()));
    sl.registerLazySingleton<BasePrayerTimesRepository>(
        () => PrayerTimesRepository(sl()));

    /// data source
    sl.registerLazySingleton<BaseTemperatureRemoteDataSource>(
        () => TemperatureRemoteDataSource());
    sl.registerLazySingleton<BasePrayerTimesRemoteDataSource>(
        () => PrayerTimesRemoteDataSource());
  }
}
