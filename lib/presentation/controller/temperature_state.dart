import 'package:al_zakreen/core/utils/enum.dart';
import 'package:al_zakreen/domain/entities/temperature.dart';
import 'package:equatable/equatable.dart';

class TemperatureState extends Equatable {
  final Temperature? hourlyTemperature ;
  final RequestState hourlyTemperatureState;
  final String hourlyTemperatureMessage;
   const TemperatureState({
    this.hourlyTemperature,
    this.hourlyTemperatureState = RequestState.loading,
    this.hourlyTemperatureMessage = '',
  });
  @override
  List<Object?> get props => [
        hourlyTemperature,
        hourlyTemperatureState,
        hourlyTemperatureMessage,
      ];
}



