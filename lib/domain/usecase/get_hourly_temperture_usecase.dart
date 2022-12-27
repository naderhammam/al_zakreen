import 'package:al_zakreen/core/error/failure.dart';
import 'package:al_zakreen/domain/entities/temperature.dart';
import 'package:al_zakreen/domain/repository/base_temperature_repository.dart';
import 'package:al_zakreen/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetHourlyTemperatureUseCase extends BaseUseCase <Temperature, NoParameters> {
  final BaseTemperatureRepository baseTemperatureRepository;

  GetHourlyTemperatureUseCase(this.baseTemperatureRepository);

  @override
  Future<Either<Failure, Temperature>> call(NoParameters parameters) async{
    return await baseTemperatureRepository.getHourlyTemperature();
  }
}