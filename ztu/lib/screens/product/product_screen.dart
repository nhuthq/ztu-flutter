import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/cart/cart_bloc.dart';
import 'package:ztu/blocs/cart/cart_event.dart';
import 'package:ztu/blocs/cart/cart_state.dart';
import 'package:ztu/blocs/wishlist/wishlist_bloc.dart';
import 'package:ztu/blocs/wishlist/wishlist_event.dart';
import 'package:ztu/blocs/wishlist/wishlist_state.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/widgets/custom_appbar.dart';
import 'package:ztu/widgets/hero_carousel_card.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => ProductScreen(
              product: product,
            ));
  }

  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
                color: Colors.white,
              ),
              BlocBuilder<WishlistBloc, WishlistState>(
                  builder: (context, state) {
                return IconButton(
                  onPressed: () {
                    context
                        .read<WishlistBloc>()
                        .add(AddWishlistProduct(product));

                    const snackBar =
                        SnackBar(content: Text("Added to your wishlist!"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: Icon(product.isWishlist
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded),
                  color: Colors.white,
                );
              }),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      context.read<CartBloc>().add(AddCartProduct(product));
                      Navigator.pushNamed(context, '/cart');

                      const snackBar =
                          SnackBar(content: Text("Added to your Cart!"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      "ADD TO CART",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enlargeCenterPage: true),
            items: [HeroCarouselCard(product: product)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        '\$${product.price}',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              tilePadding: const EdgeInsets.symmetric(horizontal: 0),
              initiallyExpanded: true,
              title: Text(
                'Product Description',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              children: [
                ListTileTheme(
                    child: Text(
                  'Arabica Acerbic Affogato Aftertaste Aged Americano And Aroma, bar panna so Barista cortado trifecta extraction, skinny aftertaste filter java cultivar cinnamon. Mazagran trade Barista french and Acerbic acerbic Aged milk cinnamon origin carajillo, mountain coffee roast mug wings Bar single viennese pumpkin go pot, dripper crema flavour mocha At bar sit medium au breve. Espresso Brewed Blue iced Americano robust whipped, bar percolator  grounds go saucer robusta, Au shop Affogato Bar aged coffee, Barista blue strong origin aftertaste. Blue skinny coffee breve Brewed acerbic, siphon steamed And foam, qui Arabica ut latte. Go brewed At aftertaste sweet cinnamon caffeine rich strong caramelization Aftertaste, Body roast body frappuccino Beans extraction sit americano Aroma.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              initiallyExpanded: true,
              tilePadding: const EdgeInsets.symmetric(horizontal: 0),
              title: Text(
                'Delivery Information',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              children: [
                ListTileTheme(
                    child: Text(
                  'Arabica Acerbic Affogato Aftertaste Aged Americano And Aroma, bar panna so Barista cortado trifecta extraction, skinny aftertaste filter java cultivar cinnamon. Mazagran trade Barista french and Acerbic acerbic Aged milk cinnamon origin carajillo, mountain coffee roast mug wings Bar single viennese pumpkin go pot, dripper crema flavour mocha At bar sit medium au breve. Espresso Brewed Blue iced Americano robust whipped, bar percolator  grounds go saucer robusta, Au shop Affogato Bar aged coffee, Barista blue strong origin aftertaste. Blue skinny coffee breve Brewed acerbic, siphon steamed And foam, qui Arabica ut latte. Go brewed At aftertaste sweet cinnamon caffeine rich strong caramelization Aftertaste, Body roast body frappuccino Beans extraction sit americano Aroma.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
