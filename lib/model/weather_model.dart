class WeatherModel {
  final String cityName;
  final DateTime date;

  final double maxtempC;

  final double mintempC;

  final double avgtempC;

  final String conditionText;

  final String conditionIcon;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.conditionText,
    required this.conditionIcon,
    required this.maxtempC,
    required this.mintempC,
    required this.avgtempC,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      maxtempC: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintempC: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      avgtempC: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      conditionText: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      conditionIcon: json['forecast']['forecastday'][0]['day']['condition']
          ['icon'],
    );
  }
}





























// class WeatherModel {
//   final Location location;

//   final Forecast forecast;

//   WeatherModel({
//     required this.location,
//     required this.forecast,
//   });
// }

// class Location {
//   final String name;

//   final String? country;

//   final String localtime;

//   Location({
//     required this.name,
//     this.country,
//     required this.localtime,
//   });

//   factory Location.fromJson(Map<String, dynamic> locationData) => Location(
//         name: locationData["name"],
//         country: locationData["country"],
//         localtime: locationData["localtime"],
//       );
// }

// class Forecast {
//   final List<Forecastday> forecastday;

//   Forecast({
//     required this.forecastday,
//   });
// }

// class Forecastday {
//   final DateTime date;
//   final DayModel day;

//   Forecastday({
//     required this.date,
//     required this.day,
//   });

//   factory Forecastday.fromJson(Map<String, dynamic> json) => Forecastday(
//         date: DateTime.parse(json["date"]),
//         day: DayModel.fromJson(json["day"]),
//       );
// }

// class DayModel {
//   final double maxtempC;

//   final double mintempC;

//   final double avgtempC;

//   final Condition condition;

//   DayModel({
//     required this.maxtempC,
//     required this.mintempC,
//     required this.avgtempC,
//     required this.condition,
//   });
//   factory DayModel.fromJson(dayData) {
//     return DayModel(
//       maxtempC: dayData['maxtemp_c'],
//       mintempC: dayData['mintemp_c'],
//       avgtempC: dayData['avgtemp_c'],
//       condition: Condition.fromJson(dayData['condition']),
//     );
//   }
// }

// class Condition {
//   final String text;
//   final String icon;

//   Condition({
//     required this.text,
//     required this.icon,
//   });

//   factory Condition.fromJson(Map<String, dynamic> json) {
//     return Condition(
//       text: json['text'],
//       icon: json['icon'],
//     );
//   }
// }
