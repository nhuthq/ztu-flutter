import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/category/category_bloc.dart';
import 'package:ztu/blocs/product/product_bloc.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/widgets/custom_appbar.dart';
import 'package:ztu/widgets/custom_circular_indicator.dart';
import 'package:ztu/widgets/custom_nav_bar.dart';
import 'package:ztu/widgets/hero_carousel_card.dart';
import 'package:ztu/widgets/product_carousel.dart';
import 'package:ztu/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({
    super.key,
  });

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Zero To Unicorn'),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 10),
                child: BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    if (state is CategoryLoading) {
                      return const CustomCircularIndicator();
                    } else if (state is CategoryLoaded) {
                      return CarouselSlider(
                        options: CarouselOptions(
                            aspectRatio: 1.5,
                            viewportFraction: 0.9,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height),
                        items: state.categories
                            .map((category) =>
                                HeroCarouselCard(category: category))
                            .toList(),
                      );
                    } else {
                      return Text(
                        "Somethings went wrong",
                        style: Theme.of(context).textTheme.titleMedium,
                      );
                    }
                  },
                )),
            const SectionTitle(
              title: "RECOMMENDED",
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const CustomCircularIndicator();
                } else if (state is ProductLoaded) {
                  return ProductCarousel(
                      products: state.products
                          .where((product) => product.isRecommended)
                          .toList());
                } else {
                  return Text(
                    "Somethings went wrong",
                    style: Theme.of(context).textTheme.titleMedium,
                  );
                }
              },
            ),
            const SectionTitle(
              title: "MOST POPULAR",
            ),
            // ProductCarousel(
            //     products: Product.products
            //         .where((product) => product.isPopular)
            //         .toList())
          ],
        ),
      ),
    );
  }
}
