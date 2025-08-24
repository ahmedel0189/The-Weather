class WeatherModel {
  final String cityName;
  final String timeOfUpdate;
  final String? image;
  final double temp;
  final double avrgTemp;
  final double maxTemp;
  final double minTemp;
  final String weatherStatus;

  WeatherModel({
    required this.cityName,
    required this.timeOfUpdate,
    this.image,
    required this.temp,
    required this.avrgTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherStatus,
  });
  factory WeatherModel.fromjson(
    Map<String, dynamic> json,
  ) {
    return WeatherModel(
      cityName: json['location']['name'],
      timeOfUpdate:
          json['current']['last_updated'],
      // image: json[''],
      temp: json['current']['temp_c'],
      avrgTemp:
          json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp:
          json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp:
          json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherStatus:
          json['current']['condition']['text'],
    );
  }
}
