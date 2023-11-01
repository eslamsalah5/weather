import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather/model/weather_model.dart';

class WeatherService {
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "c8f03260e221401184525517231709";

  final Dio dio;

  WeatherService({required this.dio});
  Future<WeatherModel> getWeatherDay({required String cityName}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1",
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      
   log(weatherModel.cityName);
    log(weatherModel.date.toString());
    log(weatherModel.maxtempC.toString());
    log(weatherModel.mintempC.toString());
    log(weatherModel.avgtempC.toString());
    log(weatherModel.conditionText);
log(weatherModel.conditionIcon);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          "there was an error,try later";
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('there was an error,try later');
    }
  }
}












