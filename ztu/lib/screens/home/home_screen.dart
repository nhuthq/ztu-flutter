import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ztu/models/category_model.dart';
import 'package:ztu/widgets/custom_appbar.dart';
import 'package:ztu/widgets/custom_nav_bar.dart';
import 'package:ztu/widgets/hero_carousel_card.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
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
        body: CarouselSlider(
          options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height),
          items: Category.categories
              .map((categoryItem) => HeroCarouselCard(category: categoryItem))
              .toList(),
        ));
  }
}