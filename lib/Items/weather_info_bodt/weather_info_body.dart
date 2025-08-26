import 'package:flutter/material.dart';

class WeatherInfoBody extends StatefulWidget {
  const WeatherInfoBody({super.key});

  @override
  State<WeatherInfoBody> createState() =>
      _WeatherInfoBodyState();
}

class _WeatherInfoBodyState
    extends State<WeatherInfoBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              'Mansoura, Egypt',
              style: TextStyle(
                fontFamily: 'Libre_Baskerville',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Updated At : 23:55',
              style: TextStyle(
                fontFamily: 'Libre_Baskerville',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/thunderstorm.png',
                  ),
                ),
                Text(
                  '30',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'maxtemp=30\nmintemp=20',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
                Text(
                  'Its is a sunny',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),          ],
        ),
      ),
    );
  }
}
