import 'package:equatable/equatable.dart';

class ErrorMassageModelTemperature extends Equatable {
  final bool error;
  final String reason;


  const ErrorMassageModelTemperature({
    required this.error,
    required this.reason,
  });

  factory ErrorMassageModelTemperature.fromJson(Map<String, dynamic> json) {
    return ErrorMassageModelTemperature(
      error: json['error'],
      reason: json['reason'],
    );
  }

  @override
  List<Object?> get props => [error, reason];
}

class ErrorMassageModelPrayerTimes extends Equatable {
  final int code;
  final String status;


  const ErrorMassageModelPrayerTimes({
    required this.code,
    required this.status,
  });

  factory ErrorMassageModelPrayerTimes.fromJson(Map<String, dynamic> json) {
    return ErrorMassageModelPrayerTimes(
      code: json['code'],
      status: json['status'],
    );
  }

  @override
  List<Object?> get props => [code, status];
}
