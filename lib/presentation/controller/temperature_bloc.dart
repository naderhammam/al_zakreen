import 'dart:async';
import 'package:al_zakreen/core/utils/enum.dart';
import 'package:al_zakreen/domain/usecase/base_usecase.dart';
import 'package:al_zakreen/domain/usecase/get_hourly_temperture_usecase.dart';
import 'package:al_zakreen/presentation/controller/temperature_event.dart';
import 'package:al_zakreen/presentation/controller/temperature_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TemperatureBloc extends Bloc<TemperatureEvent, TemperatureState> {
  final GetHourlyTemperatureUseCase getHourlyTemperatureUseCase;

  TemperatureBloc(this.getHourlyTemperatureUseCase)
      : super(const TemperatureState()) {
    on<GetHourlyTemperatureEvent>(_getTemperature);
  }
  FutureOr<void> _getTemperature(
      GetHourlyTemperatureEvent event, Emitter<TemperatureState> emit) async{
    final result = await getHourlyTemperatureUseCase(const NoParameters());

    emit(const TemperatureState(hourlyTemperatureState: RequestState.loaded));
    result.fold(
            (l) => emit(TemperatureState(
          hourlyTemperatureState: RequestState.error,
          hourlyTemperatureMessage: l.message,
        )),
            (r) => emit(TemperatureState(
          hourlyTemperature: r,
          hourlyTemperatureState: RequestState.loaded,
        )));}
}
