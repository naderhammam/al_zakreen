import 'package:equatable/equatable.dart';

class Temperature extends Equatable{
  final String timezone;
  final int currentWeather;

  const Temperature({
    required this.timezone,
    required this.currentWeather,
  });

  @override
  List<Object> get props => [currentWeather, timezone];

}