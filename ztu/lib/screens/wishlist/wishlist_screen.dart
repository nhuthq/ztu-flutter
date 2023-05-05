import 'package:flutter/material.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/widgets/custom_appbar.dart';
import 'package:ztu/widgets/custom_nav_bar.dart';
import 'package:ztu/widgets/product_card.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  const WishlistScreen({
    super.key,
  });

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    final double leftMargin = MediaQuery.of(context).size.width / 5 - 10;
    return Scaffold(
      appBar: const CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisSpacing: 8, childAspectRatio: 2.2),
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(
            product: Product.products[index],
            widthFactor: 1.1,
            leftMargin: leftMargin,
            isWishlist: true,
          );
        },
      ),
    );
  }
}
