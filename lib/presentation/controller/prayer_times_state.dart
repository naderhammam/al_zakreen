part of 'prayer_times_bloc.dart';

 class PrayerTimesState extends Equatable {
  const PrayerTimesState({
    this.timings,
    this.prayerTimesState = RequestState.loading,
    this.prayerTimesMessage = '',
  });

  final Timings? timings;
  final RequestState prayerTimesState;
  final String prayerTimesMessage;

  PrayerTimesState copyWith({
    Timings? timings,
     RequestState? prayerTimesState,
     String? prayerTimesMessage,
 }){
    return PrayerTimesState(
      timings: timings ?? this.timings,
      prayerTimesState: prayerTimesState ?? this.prayerTimesState,
      prayerTimesMessage: prayerTimesMessage ?? this.prayerTimesMessage,
    );
}
  @override
  List<Object?> get props => [
        timings,
        prayerTimesState,
        prayerTimesMessage,
      ];
}
