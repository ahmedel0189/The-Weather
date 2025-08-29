import 'package:flutter/material.dart';
import 'package:the_weather/Screens/search_view.dart';

class CustomAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppbar({super.key});
  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SearchView(),
              ),
            );
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
      centerTitle: true,
      title: const Text(
        "THEWeather",
        style: TextStyle(
          fontFamily: 'Libre_Baskerville',
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),

      backgroundColor:Theme.of(context).colorScheme.primary
    );
  }
}
