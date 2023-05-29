import 'package:flutter/material.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/presentation/widgets/product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding:
              const EdgeInsets.only(left: 15, right: 20.0, top: 10, bottom: 10),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ProductCard.category(
                product: products[index],
              ),
            );
          }),
    );
  }
}
