import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
   final DateTime _dateTime = DateTime.now();
   final String timeZone = DateTime.now().timeZoneName;
   String todayDate = DateFormat.E().format(_dateTime);
   int todayDateNumber = DateTime.now().day;
   String todayMonth = DateFormat.MMMM().format(_dateTime);


   HijriCalendar hijriDate = HijriCalendar.now();




class TestTimer{
   static String  convert24To12(DateTime time12) {
      bool isGreaterThan12 = time12.hour > 12;
      int hour = isGreaterThan12 ? time12.hour - 12 : time12.hour;
      int minute = time12.minute;
      String hourInString = hour.toString().length == 1 ? '0$hour' : '$hour';
      String minuteInString = minute.toString().length == 1 ? '0$minute' : '$minute';
      return '$hourInString:$minuteInString';
   }
}

