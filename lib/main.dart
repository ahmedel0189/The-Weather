import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_weather/Screens/home_page.dart';
import 'package:the_weather/cubits/get_weather_cubit/states_get_weather.dart';
import 'package:the_weather/material_app_methode.dart';
import 'package:the_weather/cubits/get_weather_cubit/cubit_get_weather.dart';

class THEWeather extends StatelessWidget {
  const THEWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child:
          BlocBuilder<
            GetWeatherCubit,
            WeatherStates
          >(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(
                  primarySwatch:
                      GetThemeColor.getMainColor(
                        BlocProvider.of<
                              GetWeatherCubit
                            >(context)
                            .weatherModel
                            ?.weathercondition,
                      ),
                  colorScheme: ColorScheme.fromSwatch(
                    primarySwatch:
                        GetThemeColor.getMainColor(
                          BlocProvider.of<
                                GetWeatherCubit
                              >(context)
                              .weatherModel
                              ?.weathercondition,
                        ),
                  ),
                ),
                title: "THE Weather",
                debugShowCheckedModeBanner: false,
                home: const HomePage(),
              );
            },
          ),
    );
  }
}

void main() {
  runApp(const THEWeather());
}
