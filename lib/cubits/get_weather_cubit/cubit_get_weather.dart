import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_weather/Api/weather_api.dart';
import 'package:the_weather/cubits/get_weather_cubit/states_get_weather.dart';
import 'package:the_weather/models/weather_model.dart';

class GetWeatherCubit
    extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherInitialState());
  getweather({required value}) async {
    try {
  final city = value.trim().isEmpty
      ? "Mansoura, Egypt"
      : value;
  // ignore: unused_local_variable
  WeatherModel weatherModel= await WeatherApi(
    dio: Dio(),
  ).getweather(cityName: city);
  // log(weatherModel.cityName);
  emit(WeatherLoadedState());
}  catch (e) {
    emit(WeatherFailureState());

}
  }
}
