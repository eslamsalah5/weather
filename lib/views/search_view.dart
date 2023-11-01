import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search a City',
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16.0,
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                label: const Text("Search"),
                suffixIcon: const Icon(Icons.search),
                hintText: 'Enter City Name',
                contentPadding: const EdgeInsetsDirectional.symmetric(
                  vertical: 16,
                  horizontal: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onSubmitted: (cityName) {
                var weatherCubit = BlocProvider.of<WeatherCubit>(context);
                weatherCubit.getWeather(cityName: cityName);
                Navigator.pop(context);
              },
            ),
          ),
        ));
  }
}
