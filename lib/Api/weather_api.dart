import 'package:dio/dio.dart';
import 'package:the_weather/models/weather_model.dart';

class WeatherApi {
  final String baseurl =
      'http://api.weatherapi.com/v1';
  // the base url in the fixed unchangeable part of the url
  final String apikey =
      '32389c5fceff45deb3b162835252108';
  final Dio dio;
  WeatherApi({required this.dio});

  Future<WeatherModel> getweather({
    required String cityName,
  }) async {
    try {
      Response response = await dio.get(
        '$baseurl/forecast.json?key=$apikey&q=$cityName&days=1',
      );
      WeatherModel weathermodel =
          WeatherModel.fromjson(response.data);
      return weathermodel;
    } on DioException catch (e) {
      final String errormassage =
          e.response?.data['error']['message'] ??
          'oops , there was an unexpcted ERROR ,try later';
          // if the request failed erroemassage= null and retrun this massage
      final String errorcode =
          e.response?.data['error']['code'] ??
          'oops , there was an unexpcted ERROR ,try later';
      throw Exception(
        "Error $errorcode : $errormassage",
      );
    }
  }
}
