import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
   final DateTime _dateTime = DateTime.now();
   final String timeZone = DateTime.now().timeZoneName;
   String todayDate = DateFormat.E().format(_dateTime);
   int todayDateNumber = DateTime.now().day;
   String todayMonth = DateFormat.MMMM().format(_dateTime);


   HijriCalendar hijriDate = HijriCalendar.now();
   HijriCalendar hijr1 = HijriCalendar.now();






