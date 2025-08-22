import 'package:flutter/material.dart';

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
          onPressed: () {},
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

      backgroundColor: Colors.blue[900],
    );
  }
}
