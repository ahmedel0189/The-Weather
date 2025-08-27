import 'package:flutter/material.dart';
import 'package:the_weather/models/weather_model.dart';

class WeatherInfoBody extends StatefulWidget {
  const WeatherInfoBody({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;

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
              // 'Mansoura, Egypt',
              widget.weatherModel.cityName,
              style: TextStyle(
                fontFamily: 'Libre_Baskerville',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              // 'Updated At : 23:55',
              widget.weatherModel.timeOfUpdate,
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
                  // '30',
                  '${widget.weatherModel.temp}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '''maxTemp: ${widget.weatherModel.maxTemp}\nminTemp: ${widget.weatherModel.minTemp}''',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              widget.weatherModel.weatherStatus,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
