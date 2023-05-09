import 'package:flutter/material.dart';
import 'package:ztu/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftMargin;
  final bool isWishlist;
  final double defaultHeight = 200;

  const ProductCard({
    super.key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftMargin = 5,
    this.isWishlist = false,
  });

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;
    final double topMatgin = defaultHeight / 2;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: [
          Container(
            width: widthValue,
            height: defaultHeight,
            child: Image.network(
              product.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: leftMargin,
            right: 5,
            bottom: 5,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black.withAlpha(200),
                  border:
                      Border.all(color: Colors.grey.withAlpha(80), width: 5)),
              width: widthValue - 5 - leftMargin,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle),
                      color: Colors.white,
                    ),
                  ),
                  isWishlist
                      ? Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_forever_rounded),
                            color: Colors.white,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
