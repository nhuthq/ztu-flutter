import 'package:flutter/material.dart';
import 'package:ztu/models/cart.dart';
import 'package:ztu/widgets/cart_product_card.dart';
import 'package:ztu/widgets/custom_appbar.dart';

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
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Text(
                      "GO TO CHECKOUT",
                      style: Theme.of(context).textTheme.titleMedium,
                    ))
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${Cart().freeDeliveryString}",
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
                      itemCount: Cart.products.length,
                      itemBuilder: (context, index) {
                        return CartProductCard(product: Cart.products[index]);
                      })),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SUBTOTAL",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "\$${const Cart().subTotalString}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DELIVERY FEE",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "\$${Cart().deliveryFeeString}",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.black.withAlpha(200),
                      border: Border.all(
                          color: Colors.grey.withAlpha(80), width: 5)),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TOTAL",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "\$${Cart().totalString}",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
