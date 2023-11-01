import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/weather_cubit.dart';
import 'package:weather/views/home_view.dart';
import 'package:weather/widgets/change_color_theme.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: changeColorTheme(condition: BlocProvider.of<WeatherCubit>(context).weatherModel?.conditionText),
            ),
            home: const HomeView(),
          );
        },
      ),
    );
  }
}

