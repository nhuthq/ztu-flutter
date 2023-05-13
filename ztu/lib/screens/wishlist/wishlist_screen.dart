import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/wishlist/wishlist_bloc.dart';
import 'package:ztu/blocs/wishlist/wishlist_state.dart';
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
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.black,
                ),
              ),
            );
          } else if (state is WishlistLoaded) {
            if (state.wishlist.products.isNotEmpty) {
              return GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 8,
                    childAspectRatio: 2.2),
                itemCount: state.wishlist.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(
                    product: state.wishlist.products[index],
                    widthFactor: 1.1,
                    leftMargin: leftMargin,
                    isWishlist: true,
                  );
                },
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/empty_state.png',
                      width: 300,
                      fit: BoxFit.scaleDown,
                    ),
                    Text(
                      "Somethings went wrong",
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
              );
            }
          } else {
            return Text(
              "Somethings went wrong",
              style: Theme.of(context).textTheme.titleMedium,
            );
          }
        },
      ),
    );
  }
}
