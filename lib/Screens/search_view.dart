import 'package:flutter/material.dart';
import 'package:the_weather/Items/Weather%20Search/dynamic_search_feild.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to make the page reorder itself after the keyboard appeare
      resizeToAvoidBottomInset: true,

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Search the City",
          style: TextStyle(
            fontFamily: 'Libre_Baskerville',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: DynamicSearchFeild(),
    );
  }
}
