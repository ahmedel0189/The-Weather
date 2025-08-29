import 'package:flutter/material.dart';

class NoWeatherNow extends StatelessWidget {
  const NoWeatherNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16),
      child: Center(
        child: Text(
          'Hi,There is no Weather right now, \nplease Start searching 🔎.',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Libre_Baskerville',
          ),
        ),
      ),
    );
  }
}
