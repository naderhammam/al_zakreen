import 'package:al_zakreen/core/error/exceptions.dart';
import 'package:al_zakreen/core/error/failure.dart';
import 'package:al_zakreen/data/datasource/temperature_remote_data_source.dart';
import 'package:al_zakreen/domain/entities/temperature.dart';
import 'package:al_zakreen/domain/repository/base_temperature_repository.dart';
import 'package:dartz/dartz.dart';

class TemperatureRepository extends BaseTemperatureRepository {
  final BaseTemperatureRemoteDataSource baseTemperatureRemoteDataSource;

  TemperatureRepository(this.baseTemperatureRemoteDataSource);

  @override
  Future<Either<Failure, Temperature>> getHourlyTemperature() async {
    final result = await baseTemperatureRemoteDataSource.getHourlyTemperature();
    try {
      return Right(result);
    } on ServerExceptionTemperature catch (failure) {
      return Left(ServerFailure(failure.errorMassageModel.reason));
    }
  }
}
