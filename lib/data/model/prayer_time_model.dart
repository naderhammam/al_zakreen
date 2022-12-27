import 'package:al_zakreen/domain/entities/prayer_times.dart';

class PrayerTimesModel extends PrayerTimes {
  const PrayerTimesModel({
    required super.data,
  });

  factory PrayerTimesModel.fromJson(Map<String, dynamic> json) =>
      PrayerTimesModel(
        data: json['data'],
      );
}
