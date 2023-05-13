import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/cart/cart_bloc.dart';
import 'package:ztu/blocs/cart/cart_event.dart';
import 'package:ztu/blocs/cart/cart_state.dart';
import 'package:ztu/models/product.dart';

class CartProductCard extends StatelessWidget {
  final Product product;

  const CartProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Image.network(
            product.imgUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: Colors.black87),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          BlocBuilder<CartBloc, CartState>(builder: (context, state) {
            return Row(
              children: [
                IconButton(
                    onPressed: () {
                      context.read<CartBloc>().add(RemoveCartProduct(product));
                    },
                    icon: const Icon(Icons.remove_circle_rounded)),
                Text(
                  "1",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                IconButton(
                    onPressed: () {
                      context.read<CartBloc>().add(AddCartProduct(product));
                    },
                    icon: const Icon(Icons.add_circle_rounded)),
              ],
            );
          }),
        ],
      ),
    );
  }
}
