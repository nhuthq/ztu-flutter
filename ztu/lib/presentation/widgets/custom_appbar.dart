import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool automaticallyImplyLeading;
  const CustomAppBar(
      {super.key, required this.title, this.automaticallyImplyLeading = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Text(title,
          maxLines: 2,
          textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.white))),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
