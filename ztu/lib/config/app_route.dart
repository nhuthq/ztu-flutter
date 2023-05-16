import 'package:flutter/material.dart';
import 'package:ztu/models/category_model.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/screens/cart/cart_screen.dart';
import 'package:ztu/screens/catalog/catalog_screen.dart';
import 'package:ztu/screens/home/home_screen.dart';
import 'package:ztu/screens/product/product_screen.dart';
import 'package:ztu/screens/splash/splash_screen.dart';
import 'package:ztu/screens/wishlist/wishlist_screen.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
            ));
  }
}
