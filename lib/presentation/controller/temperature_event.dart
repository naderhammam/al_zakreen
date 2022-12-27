import 'package:equatable/equatable.dart';

abstract class TemperatureEvent extends Equatable{
const   TemperatureEvent();

@override
  List<Object> get props => [];
}

class GetHourlyTemperatureEvent extends TemperatureEvent{

}