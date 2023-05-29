import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ztu/presentation/widgets/custom_appbar.dart';
import 'package:ztu/presentation/widgets/custom_nav_bar.dart';
import 'package:ztu/presentation/widgets/order_summary.dart';

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
                Positioned(
                  left: (MediaQuery.of(context).size.width - 100) / 2,
                  top: 125,
                  child: SvgPicture.asset(
                    'assets/svgs/garlands.svg',
                    height: 100,
                    width: 100,
                  ),
                ),
                Positioned(
                  top: 250,
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Your order is complete!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ORDER CODE: 1234 - k2292',
                    style:
                        Theme.of(context).textTheme.headlineSmall!.copyWith(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Thank you for purchasing on Zero To Unicorn.',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'ORDER CODE: 1234 - k2292',
                    style:
                        Theme.of(context).textTheme.headlineSmall!.copyWith(),
                  ),
                  const OrderSummary(),
                  const SizedBox(height: 20),
                  Text(
                    'ORDER DETAILS',
                    style:
                        Theme.of(context).textTheme.headlineSmall!.copyWith(),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // OrderSummaryProductCard(
                      //     product: Product.products[2], quantity: 4),
                      // OrderSummaryProductCard(
                      //     product: Product.products[12], quantity: 3),
                      // OrderSummaryProductCard(
                      //     product: Product.products[22], quantity: 6)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
