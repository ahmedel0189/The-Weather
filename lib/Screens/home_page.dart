import 'package:flutter/material.dart';
import 'package:the_weather/Items/Weather%20Search/search_body.dart';
import 'package:the_weather/Items/custom_appbar.dart';
import 'package:the_weather/Items/no_weather_now.dart';
import 'package:the_weather/Items/weather_info_bodt/weather_info_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      // backgroundColor: Colors.white,
      appBar: CustomAppbar(),
      body: weatherModel == null
          ? NoWeatherNow()
          : WeatherInfoBody(),
    );
  }
}
