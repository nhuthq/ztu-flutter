import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/cart/cart_bloc.dart';
import 'package:ztu/blocs/cart/cart_state.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      if (state is CartLoaded) {
        return Column(
          children: [
            const Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SUBTOTAL",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "\$${state.cart.subTotalString}",
                        style: Theme.of(context).textTheme.headlineSmall,
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
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "\$${state.cart.deliveryFeeString}",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.grey, width: 5)),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOTAL",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "\$${state.cart.totalString}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ))
          ],
        );
      } else {
        return Text(
          "Somethings went wrong",
          style: Theme.of(context).textTheme.titleMedium,
        );
      }
    });
  }
}
