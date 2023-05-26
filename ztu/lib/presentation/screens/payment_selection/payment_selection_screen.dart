import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:ztu/presentation/widgets/custom_appbar.dart';
import 'package:ztu/presentation/widgets/custom_nav_bar.dart';

class PaymentSelectionScreen extends StatelessWidget {
  static const String routeName = '/pay_selection';
  const PaymentSelectionScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const PaymentSelectionScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Payment Selection'),
      bottomNavigationBar: const CustomBottomNavBar(screen: routeName),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          RawApplePayButton(
            style: ApplePayButtonStyle.black,
            type: ApplePayButtonType.inStore,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 25),
          RawGooglePayButton(
            type: GooglePayButtonType.pay,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Pay with Credit Card',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
