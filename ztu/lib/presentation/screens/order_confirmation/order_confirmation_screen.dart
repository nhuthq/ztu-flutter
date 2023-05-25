import 'dart:async';
import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  static const String routeName = '/order_confirmation';
  const OrderConfirmationScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const OrderConfirmationScreen());
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', (route) => false));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 125,
              height: 125,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Colors.black,
            child: Text(
              'Zero to Unicorn',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
