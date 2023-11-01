part of 'weather_cubit.dart';

 class WeatherState {}

class WeatherInitialState extends WeatherState {}
class WeatherSuccessState extends WeatherState {}
class WeatherErrorState extends WeatherState {
  final String errorMassage;

  WeatherErrorState(this.errorMassage);
}
