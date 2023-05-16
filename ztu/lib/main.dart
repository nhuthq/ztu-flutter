import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/cart/cart_bloc.dart';
import 'package:ztu/blocs/cart/cart_event.dart';
import 'package:ztu/blocs/wishlist/wishlist_bloc.dart';
import 'package:ztu/blocs/wishlist/wishlist_event.dart';
import 'package:ztu/config/app_route.dart';
import 'package:ztu/config/theme.dart';
import 'package:ztu/screens/home/home_screen.dart';
import 'package:ztu/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(WishlistStart())),
        BlocProvider(create: (_) => CartBloc()..add(StartCart()))
      ],
      child: MaterialApp(
        title: 'Zero To Unicorn',
        theme: theme(),
        onGenerateRoute: AppRoute.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
        home: const HomeScreen(),
      ),
    );
  }
}
