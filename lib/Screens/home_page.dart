import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_weather/Items/custom_appbar.dart';
import 'package:the_weather/Items/no_weather_now.dart';
import 'package:the_weather/Items/weather_info_bodt/weather_info_body.dart';
import 'package:the_weather/cubits/get_weather_cubit/cubit_get_weather.dart';
import 'package:the_weather/cubits/get_weather_cubit/states_get_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body:
          BlocBuilder<
            GetWeatherCubit,
            WeatherStates
          >(
            builder: (context, state) {
              if (state is WeatherInitialState) {
                return NoWeatherNow();
              } else if (state
                  is WeatherLoadedState) {
                return WeatherInfoBody();
              } else {
                return Text(
                  'OOps. there was an erroe',
                );
              }
            },
          ),
    );
  }
}
