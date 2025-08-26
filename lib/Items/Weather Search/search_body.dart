// ignore_for_file: unused_local_variable

// import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:the_weather/Api/weather_api.dart';
import 'package:the_weather/models/weather_model.dart';

WeatherModel? weatherModel;

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() =>
      _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final TextEditingController _controller =
      TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // هل الكيبورد ظاهر؟
    final bottomInset = MediaQuery.of(
      context,
    ).viewInsets.bottom;
    final isKeyboardOpen = bottomInset > 0;
    return GestureDetector(
      // when click on the screen the keybord disappere
      onTap: () =>
          FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: SizedBox.expand(
          // AnimatedAlign here to move the searchbar up and dwon
          child: AnimatedAlign(
            duration: const Duration(
              milliseconds: 50,
            ),
            curve: Curves.easeOutCubic,
            alignment: isKeyboardOpen
                ? Alignment(0, -0.10)
                : Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                16,
                isKeyboardOpen ? 24 : 0,
                16,
                0,
              ),
              child: TextField(
                controller: _controller,
                textInputAction:
                    TextInputAction.search,
                onSubmitted: (value) async {
                  final city =
                      value.trim().isEmpty
                      ? "Mansoura, Egypt"
                      : value;
                  weatherModel = await WeatherApi(
                    dio: Dio(),
                  ).getweather(cityName: city);
                  Navigator.pop(context);
                  // log(weatherModel.cityName);
                },
                onChanged: (value) {
                  // اختياري: بحث لحظي
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 5,
                      ),
                  labelText: 'Search',
                  suffixIcon: const Icon(
                    color: Colors.blueAccent,
                    size: 40,
                    Icons.search,
                  ), // يمين
                  hintText:
                      'Enter City Name ... ',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan,
                    ),
                  ),
                  enabledBorder:
                      OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(
                              16,
                            ),
                        borderSide: BorderSide(
                          color:
                              Colors.lightGreen,
                          width: 3,
                        ),
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
