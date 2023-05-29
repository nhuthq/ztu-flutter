import 'package:flutter/material.dart';
import 'package:ztu/models/product.dart';

class ProductImage extends StatelessWidget {
  final Product product;
  final double adjWidth;
  final double height;
  const ProductImage(
      {super.key,
      required this.product,
      required this.adjWidth,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: adjWidth,
      height: height,
      child: Image.network(
        product.imgUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
