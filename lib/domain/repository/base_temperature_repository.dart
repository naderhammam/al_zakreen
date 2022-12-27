import 'package:al_zakreen/core/error/failure.dart';
import 'package:al_zakreen/domain/entities/temperature.dart';
import 'package:dartz/dartz.dart';


abstract class BaseTemperatureRepository {


  Future<Either<Failure,Temperature>> getHourlyTemperature();
}