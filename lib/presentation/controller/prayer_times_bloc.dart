import 'dart:async';

import 'package:al_zakreen/core/utils/enum.dart';
import 'package:al_zakreen/domain/entities/prayer_times.dart';
import 'package:al_zakreen/domain/usecase/get_prayer_time_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'prayer_times_event.dart';
part 'prayer_times_state.dart';

class PrayerTimesBloc extends Bloc<PrayerTimesEvent, PrayerTimesState> {
  PrayerTimesBloc(this.getPrayerTimesUseCase)
      : super(const PrayerTimesState()) {
    on<GetPrayerTimesEvent>(_getPrayerTimesEvent);
  }

  final GetPrayerTimesUseCase getPrayerTimesUseCase;

  FutureOr<void> _getPrayerTimesEvent(
      GetPrayerTimesEvent event, Emitter<PrayerTimesState> emit) async {
    final result = await getPrayerTimesUseCase(
        PrayerTimesParameters(lat: event.lat, long: event.long));

    result.fold(
        (l) => emit(state.copyWith(
              prayerTimesState: RequestState.error,
              prayerTimesMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              timings: r,
              prayerTimesState: RequestState.loaded,
            )));
  }
}
