import 'package:flutter/material.dart';
import 'package:ztu/models/category_model.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/presentation/widgets/custom_nav_bar.dart';
import 'package:ztu/presentation/widgets/product_card.dart';
import 'package:ztu/presentation/widgets/custom_appbar.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = '/category';
  final Category category;
  const CategoryScreen({super.key, required this.category});

  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => CategoryScreen(category: category),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: category.name),
      bottomNavigationBar: const CustomBottomNavBar(screen: routeName),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.15),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard.category(
              product: categoryProducts[index], widthFactor: 2.2);
        },
      ),
    );
  }
}
