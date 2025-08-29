import 'package:flutter/material.dart';

class GetThemeColor {
  static MaterialColor getMainColor(
    String? condition,
  ) {
    if (condition==null){
        return Colors.amber;
    }
    // نخلي النص lowercase عشان نسهّل المقارنة
    final c = condition.toLowerCase();
    switch (c) {
      case "sunny":
      case "clear":
        return Colors.orange;

      case "cloudy":
      case "overcast":
      case "partly cloudy":
        return Colors.blueGrey;

      case "rain":
      case "light rain":
      case "moderate rain":
      case "heavy rain":
      case "drizzle":
      case "patchy rain possible":
      case "rain shower":
        return Colors.blue;

      case "snow":
      case "light snow":
      case "moderate snow":
      case "heavy snow":
      case "blizzard":
        return Colors.cyan;

      case "fog":
      case "mist":
        return Colors.grey;

      case "thunder":
      case "thundery outbreaks possible":
        return Colors.deepPurple;

      default:
        return Colors.blue;
    }
  }
}
