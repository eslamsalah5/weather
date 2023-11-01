import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitialState());
  WeatherCubit get(context) => BlocProvider.of(context);
   WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherService(dio: Dio()).getWeatherDay(cityName: cityName);
      emit(WeatherSuccessState());
    } catch (e) {
      log(e.toString());
      emit(WeatherErrorState(e.toString()));
    }
  }
}
