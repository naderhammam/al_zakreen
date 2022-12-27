import 'package:al_zakreen/domain/entities/temperature.dart';

class TemperatureModel extends Temperature {
  const TemperatureModel(
      {required super.timezone, required super.currentWeather});

  factory TemperatureModel.fromJson(Map<String, dynamic> json) =>
      TemperatureModel(
        timezone: json['timezone'],
        currentWeather: json['current_weather']['temperature'].toInt(),
      );
}
