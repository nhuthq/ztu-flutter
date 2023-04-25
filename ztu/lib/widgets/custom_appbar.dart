import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Text(
          "Zero To Unicorn",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Averni',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
