import 'package:flutter/material.dart';
import 'package:ztu/models/category_model.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/presentation/screens/cart/cart_screen.dart';
import 'package:ztu/presentation/screens/category/category_screen.dart';
import 'package:ztu/presentation/screens/checkout/checkout_screen.dart';
import 'package:ztu/presentation/screens/home/home_screen.dart';
import 'package:ztu/presentation/screens/order_confirmation/order_confirmation_screen.dart';
import 'package:ztu/presentation/screens/product/product_details_screen.dart';
import 'package:ztu/presentation/screens/splash/splash_screen.dart';
import 'package:ztu/presentation/screens/wishlist/wishlist_screen.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _errorRoute();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductDetailsScreen.routeName:
        return ProductDetailsScreen.route(
            product: settings.arguments as Product);
      case CategoryScreen.routeName:
        return CategoryScreen.route(category: settings.arguments as Category);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case OrderConfirmationScreen.routeName:
        return OrderConfirmationScreen.route();
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
