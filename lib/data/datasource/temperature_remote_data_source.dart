import 'package:al_zakreen/core/error/exceptions.dart';
import 'package:al_zakreen/core/network/api_constance.dart';
import 'package:al_zakreen/core/network/error_message_model.dart';
import 'package:al_zakreen/data/model/temperature_model.dart';
import 'package:dio/dio.dart';

abstract class BaseTemperatureRemoteDataSource {
  Future<TemperatureModel> getHourlyTemperature();
}

class TemperatureRemoteDataSource extends BaseTemperatureRemoteDataSource{

  @override
  Future<TemperatureModel>getHourlyTemperature() async{
    final response = await Dio().get(ApiConstance.currentTemperatureUrl);

    if(response.statusCode == 200){
      return TemperatureModel.fromJson((response.data));
    } else {
      throw ServerExceptionTemperature(errorMassageModel: ErrorMassageModelTemperature.fromJson(response.data));
    }
  }
}