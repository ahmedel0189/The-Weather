import 'package:flutter/material.dart';
import 'package:the_weather/Items/custom_appbar.dart';
import 'package:the_weather/Items/no_weather_now.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      backgroundColor: Colors.white,
      appBar: CustomAppbar(),
      body: NoWeatherNow(),
    );
  }
}
