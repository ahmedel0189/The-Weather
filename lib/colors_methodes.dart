import 'package:flutter/material.dart';

class ColorsMethodes {
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


  // ? getBackgroundGradient 
  static List<Color> getBackgroundGradient(String? condition) {
    if (condition == null) {
      return [Colors.lightBlue.shade300, Colors.blue.shade600];
    }

    final c = condition.toLowerCase();
    switch (c) {
      case "sunny":
      case "clear":
        return [Colors.orange.shade200, Colors.deepOrange.shade400];

      case "cloudy":
      case "overcast":
      case "partly cloudy":
        return [Colors.blueGrey.shade300, Colors.blueGrey.shade700];

      case "rain":
      case "light rain":
      case "moderate rain":
      case "heavy rain":
      case "drizzle":
      case "patchy rain possible":
      case "rain shower":
        return [Colors.indigo.shade400, Colors.blue.shade700];

      case "snow":
      case "light snow":
      case "moderate snow":
      case "heavy snow":
      case "blizzard":
        return [Colors.white, Colors.cyan.shade400];

      case "fog":
      case "mist":
        return [Colors.grey.shade300, Colors.grey.shade700];

      case "thunder":
      case "thundery outbreaks possible":
        return [Colors.deepPurple.shade800, Colors.black];

      default:
        return [Colors.lightBlue.shade300, Colors.blue.shade600];
    }
  }
}
