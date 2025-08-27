import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_weather/cubits/get_weather_cubit/cubit_get_weather.dart';
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
    var weatherModel =
        BlocProvider.of<GetWeatherCubit>(
          context,
        ).weatherModel!;
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
              weatherModel.cityName,
              style: TextStyle(
                fontFamily: 'Libre_Baskerville',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              // 'Updated At : 23:55',
              weatherModel.timeOfUpdate,
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
                  '${weatherModel.temp}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '''maxTemp: ${weatherModel.maxTemp}\nminTemp: ${weatherModel.minTemp}''',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              weatherModel.weatherStatus,
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
