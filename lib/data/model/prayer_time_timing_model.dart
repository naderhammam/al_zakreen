import 'package:al_zakreen/domain/entities/prayer_times.dart';

class PrayerTimeTimingModel extends Timings {
  const PrayerTimeTimingModel({
    required super.fajr,
    required super.sunrise,
    required super.dhuhr,
    required super.asr,
    required super.maghrib,
    required super.isha,
  });

  factory PrayerTimeTimingModel.fromJson(Map<String, dynamic> json) =>
      PrayerTimeTimingModel(
        fajr: json['Fajr'],
        sunrise: json['Sunrise'],
        dhuhr: json['Dhuhr'],
        asr: json['Asr'],
        maghrib: json['Maghrib'],
        isha: json['Isha'],
      );
}