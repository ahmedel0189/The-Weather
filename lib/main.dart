import 'package:flutter/material.dart';
import 'package:the_weather/Screens/home_page.dart';

class THEWeather extends StatelessWidget {
  const THEWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  "THE Weather",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
void main() {
  runApp(const THEWeather());
}
