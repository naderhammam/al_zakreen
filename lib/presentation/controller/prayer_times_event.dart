part of 'prayer_times_bloc.dart';

abstract class PrayerTimesEvent extends Equatable {
  const PrayerTimesEvent();
}

class GetPrayerTimesEvent extends PrayerTimesEvent {
  final double lat;
  final double long;

  const GetPrayerTimesEvent(this.lat, this.long);

  @override
  List<Object?> get props => [
        lat,
        long,
      ];
}
