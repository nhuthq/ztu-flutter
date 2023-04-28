import 'package:flutter/material.dart';
import 'package:ztu/screens/cart/cart_screen.dart';
import 'package:ztu/screens/catalog/catalog_screen.dart';
import 'package:ztu/screens/home/home_screen.dart';
import 'package:ztu/screens/product/product_screen.dart';
import 'package:ztu/screens/wishlist/wishlist_screen.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();
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
