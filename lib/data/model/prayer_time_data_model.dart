import 'package:al_zakreen/domain/entities/prayer_times.dart';

class PrayerTimeDataModel extends Data {
  const PrayerTimeDataModel({
    required super.timings,
  });

  factory PrayerTimeDataModel.fromJson(Map<String, dynamic> json) =>
      PrayerTimeDataModel(
        timings: json['timings'],
      );
}
