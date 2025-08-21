import 'package:flutter/material.dart';
import 'package:the_weather/Items/no_weather_now.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: const Text(
            "THEWeather",
            style: TextStyle(
              fontFamily: 'Libre_Baskerville',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: NoWeatherNow(),
    );
  }
}
