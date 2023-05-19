import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/cart/cart_bloc.dart';
import 'package:ztu/blocs/cart/cart_state.dart';
import 'package:ztu/widgets/cart_product_card.dart';
import 'package:ztu/widgets/custom_appbar.dart';
import 'package:ztu/widgets/custom_circular_indicator.dart';
import 'package:ztu/widgets/custom_nav_bar.dart';
import 'package:ztu/widgets/order_summary.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';
  const CartScreen({
    super.key,
  });

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Cart'),
      bottomNavigationBar: const CustomBottomNavBar(screen: routeName),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return const CustomCircularIndicator();
          } else if (state is CartLoaded) {
            if (state.cart.products.isNotEmpty) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          state.cart.freeDeliveryString,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: const RoundedRectangleBorder(),
                                elevation: 0),
                            child: Text(
                              "Add More Items",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: Colors.white),
                            )),
                      ],
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: state.cart
                                .productQuantity(state.cart.products)
                                .keys
                                .length,
                            itemBuilder: (context, index) {
                              return CartProductCard(
                                product: state.cart
                                    .productQuantity(state.cart.products)
                                    .keys
                                    .elementAt(index),
                                quantity: state.cart
                                    .productQuantity(state.cart.products)
                                    .values
                                    .elementAt(index),
                              );
                            })),
                    const OrderSummary(),
                    ],
                ),
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
