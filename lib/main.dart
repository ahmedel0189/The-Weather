import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_weather/Screens/home_page.dart';
import 'package:the_weather/cubits/get_weather_cubit/cubit_get_weather.dart';

class THEWeather extends StatelessWidget {
  const THEWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        title: "THE Weather",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

void main() {
  runApp(const THEWeather());
}
