import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
   final DateTime _dateTime = DateTime.now();
   final String timeZone = DateTime.now().timeZoneName;
   String todayDate = DateFormat.E().format(_dateTime);
   int todayDateNumber = DateTime.now().day;
   String todayMonth = DateFormat.MMMM().format(_dateTime);


   HijriCalendar hijriDate = HijriCalendar.now();




class TestTimer{

   static int calculateHoursNowMinus12  = 12 - int.parse(convert24To12NowTimeHourOnly());
   // static int calculateHoursNowPlus12  = 12 - int.parse(convert24To12PrayerTimeHourOnly());

   static String  convert24To12(DateTime dateTime) {
      bool isGreaterThan12 = dateTime.hour > 12;
      int hour = isGreaterThan12 ? dateTime.hour - 12 : dateTime.hour;
      int minute = dateTime.minute;
      String hourInString = hour.toString().length == 1 ? '0$hour' : '$hour';
      String minuteInString = minute.toString().length == 1 ? '0$minute' : '$minute';
      return '$hourInString:$minuteInString';
   }

   static String  convert24To12PrayerTimeHourOnly(int dateTime) {
      bool isGreaterThan12 = dateTime > 12;
      int hour = isGreaterThan12 ? dateTime - 12 : dateTime;
      String hourInString = hour.toString().length == 1 ? '0$hour' : '$hour';
      return hourInString;
   }

   static String  convert24To12PrayerTimeMinuteOnly(DateTime dateTime) {
      int minute = dateTime.minute;
      String minuteInString = minute.toString().length == 1 ? '0$minute' : '$minute';
      return minuteInString;
   }

   static String  convert24To12NowTimeHourOnly() {
      bool isGreaterThan12 = DateTime.now().hour > 12;
      int hour = isGreaterThan12 ? DateTime.now().hour - 12 : DateTime.now().hour;
      String hourInString = hour.toString().length == 1 ? '0$hour' : '$hour';
      return hourInString;
   }

   static String  convert24To12NowTimeMinuteOnly() {
      int minute = DateTime.now().minute;
      String minuteInString = minute.toString().length == 1 ? '0$minute' : '$minute';
      return minuteInString;
   }


   static String  convert24To12Now() {
      bool isGreaterThan12 = DateTime.now().hour > 12;
      int hour = isGreaterThan12 ? DateTime.now().hour - 12 : DateTime.now().hour;
      int minute = DateTime.now().minute;
      String hourInString = hour.toString().length == 1 ? '0$hour' : '$hour';
      String minuteInString = minute.toString().length == 1 ? '0$minute' : '$minute';
      return '$hourInString:$minuteInString';
   }



   static int  testMinute() {
      int timeNow =  12 -DateTime.now().hour;
      // int prayTimeTest = 0 + hourInString;

          return timeNow;

   }

   static String testHour(DateTime time12) {
      bool isGreaterThan12 = time12.hour > 12;
      int hour = isGreaterThan12 ? time12.hour - 12 : time12.hour;
      String hourInString = hour.toString().length == 1 ? '0$hour' : '$hour';
      return hourInString;
   }





}


