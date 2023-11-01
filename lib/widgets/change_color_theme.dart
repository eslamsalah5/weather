
import 'package:flutter/material.dart';

MaterialColor changeColorTheme({required String? condition}) {
  switch (condition) {
    case "Sunny":
    case "Clear":
      return Colors.orange;
    case "Partly cloudy":
      return Colors.cyan;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.blueGrey;
    case "Mist":
      return Colors.lightBlue;
    case "Patchy rain possible":
      return Colors.green;
    case "Patchy freezing drizzle possible":
      return Colors.lightBlue;
    case "Thundery outbreaks possible":
      return Colors.amber;
    case "Fog":
      return Colors.grey;
    case "Freezing fog":
      return Colors.grey;
    case "Patchy light drizzle":
      return Colors.blueGrey;
    case "Light drizzle":
      return Colors.blueGrey;
    case "Freezing drizzle":
      return Colors.blueGrey;
    case "Heavy freezing drizzle":
      return Colors.blueGrey;
    case "Patchy light rain":
      return Colors.lightGreen;
    case "Light rain":
      return Colors.lightGreen;
    case "Moderate rain at times":
      return Colors.lightGreen;
    case "Moderate rain":
      return Colors.lightGreen;
    case "Heavy rain at times":
      return Colors.lightGreen;
    case "Heavy rain":
      return Colors.lightGreen;
    case "Light freezing rain":
      return Colors.blue;
    case "Moderate or heavy freezing rain":
      return Colors.blue;
    case "Patchy light snow":
      return Colors.blueGrey;
    case "Moderate snow":
      return Colors.blueGrey;
    case "Patchy moderate snow":
      return Colors.blueGrey;
    case "Patchy heavy snow":
      return Colors.blueGrey;
    case "Heavy snow":
      return Colors.blueGrey;
    case "Ice pellets":
      return Colors.grey;
    case "Light rain shower":
      return Colors.lightGreen;
    case "Moderate or heavy rain shower":
      return Colors.lightGreen;
    case "Torrential rain shower":
      return Colors.lightGreen;
    case "Light sleet showers":
      return Colors.blue;
    case "Moderate or heavy sleet showers":
      return Colors.blue;
    case "Light snow showers":
      return Colors.blueGrey;
    case "Moderate or heavy snow showers":
      return Colors.blueGrey;
    case "Patchy light rain with thunder":
      return Colors.amber;
    case "Moderate or heavy rain with thunder":
      return Colors.amber;
    case "Patchy light snow with thunder":
      return Colors.blueGrey;
    case "Moderate or heavy snow with thunder":
      return Colors.blueGrey;
    default:
      return Colors.blue;
  }
}