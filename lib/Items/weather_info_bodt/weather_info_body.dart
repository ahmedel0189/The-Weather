import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:the_weather/cubits/get_weather_cubit/cubit_get_weather.dart';
import 'package:the_weather/models/weather_model.dart';

DateTime StringToDateTime(String value) {
  return DateTime.parse(value);
}

class WeatherInfoBody extends StatefulWidget {
  const WeatherInfoBody({
    super.key,
    required WeatherModel weatherModel,
  });
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
              'Updated At: ${DateFormat('hh:mm a').format(weatherModel.timeOfUpdate)}',
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
                // Image(
                //   image: AssetImage(
                //     'assets/images/thunderstorm.png',
                //   ),
                // ),
                Image.network(
                  "https:${weatherModel.image}", // ضيف https: لو ال API بيرجع الرابط بدونها
                  errorBuilder:
                      (
                        context,
                        error,
                        stackTrace,
                      ) {
                        return Image.asset(
                          'assets/images/clear.png',
                        ); // fallback لو في مشكلة
                      },
                ),
                Text(
                  // '30',
                  '${weatherModel.temp.round()}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '''maxTemp: ${weatherModel.maxTemp.round()}\nminTemp: ${weatherModel.minTemp.round()}''',
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
