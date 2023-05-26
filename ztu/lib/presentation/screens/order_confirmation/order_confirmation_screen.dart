import 'package:flutter/material.dart';
import 'package:ztu/presentation/widgets/custom_appbar.dart';
import 'package:ztu/presentation/widgets/custom_nav_bar.dart';

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
    return Scaffold(
      appBar: const CustomAppBar(title: 'Order Confirmation'),
      bottomNavigationBar: const CustomBottomNavBar(screen: routeName),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.black,
                ),
                // Positioned(
                //   child: 
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
