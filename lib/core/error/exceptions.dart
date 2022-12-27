import 'package:al_zakreen/core/network/error_message_model.dart';

class ServerExceptionTemperature implements Exception {
  final ErrorMassageModelTemperature errorMassageModel;

  const ServerExceptionTemperature({
    required this.errorMassageModel,
  });
}

class ServerExceptionPrayerTimes implements Exception {
  final ErrorMassageModelPrayerTimes errorMassageModelPrayerTimes;

  const ServerExceptionPrayerTimes({
    required this.errorMassageModelPrayerTimes,
  });
}

class LocalDatabaseException {
  final String message;

  LocalDatabaseException({
    required this.message,
  });
}
