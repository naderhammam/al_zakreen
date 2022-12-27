class NextAzanOperations {

  static String calculateNextAzan(){
    int timeNowHour = DateTime.now().hour;
    int timeNowMinute = DateTime.now().minute;
    String hourAddZero = timeNowHour.toString().length == 1 ? '0$timeNowHour' : '$timeNowHour';
    String minuteAddZero = timeNowMinute.toString().length == 1 ? '0$timeNowMinute' : '$timeNowMinute';
    String amOrPm = timeNowHour > 11 ? 'pm' : 'am';
    return'$hourAddZero:$minuteAddZero $amOrPm';
  }


  static String testComp (){

    DateTime dt1 = DateTime.parse("2021-12-23 11:47:00");
    DateTime dt2 = DateTime.parse("2021-12-23 11:48:00");

    if(dt1.compareTo(dt2) == 0){
      return("Both date time are at same moment.");
    }

    if(dt1.compareTo(dt2) < 0){
      return("DT1 is before DT2");
    }

    if(dt1.compareTo(dt2) > 0){
      return("DT1 is after DT2");
    }
    return 'null';
  }

}