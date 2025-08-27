// ignore_for_file: unused_local_variable

// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_weather/cubits/get_weather_cubit/cubit_get_weather.dart';

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
                  var getWeatherCubit =
                      BlocProvider.of<
                        GetWeatherCubit
                      >(context);
                  getWeatherCubit.getweather(cityNmae:value);
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
