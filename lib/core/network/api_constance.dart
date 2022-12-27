import 'package:al_zakreen/location_service.dart';

class ApiConstance {
  static String currentTemperatureUrl = 'https://api.open-meteo.com/v1/forecast?latitude=${UserLocation.latNum}&longitude=${UserLocation.longNum}&current_weather=true';
  static String prayerTimesUrl= 'https://api.aladhan.com/v1/timings?latitude=${UserLocation.latNum}&longitude=${UserLocation.longNum}';
}