import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/cart/cart_bloc.dart';
import 'package:ztu/blocs/cart/cart_event.dart';
import 'package:ztu/blocs/category/category_bloc.dart';
import 'package:ztu/blocs/checkout/checkout_bloc.dart';
import 'package:ztu/blocs/payment/payment_bloc.dart';
import 'package:ztu/blocs/payment/payment_event.dart';
import 'package:ztu/blocs/product/product_bloc.dart';
import 'package:ztu/blocs/wishlist/wishlist_bloc.dart';
import 'package:ztu/blocs/wishlist/wishlist_event.dart';
import 'package:ztu/config/app_route.dart';
import 'package:ztu/config/theme.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/presentation/screens/splash/splash_screen.dart';
import 'package:ztu/repositories/category/category_repository.dart';
import 'package:ztu/repositories/checkout/checkout_repository.dart';
import 'package:ztu/repositories/local_storage/local_storage_repository.dart';
import 'package:ztu/repositories/product/product_repository.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductAdapter());
  
  runApp(const MyApp());
}

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) print(change);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()..add(LoadCart())),
        BlocProvider(
            create: (_) => WishlistBloc(
                  localStorageRepository: LocalStorageRepository(),
                )..add(LoadWishlist())),
        BlocProvider(create: (_) => PaymentBloc()..add(LoadPayemntMethod())),
        BlocProvider(
          create: (_) => CategoryBloc(
            categoryRepository: CategoryRepository(),
          )..add(LoadCategories()),
        ),
        BlocProvider(
            create: (context) => CheckoutBloc(
                  cartBloc: context.read<CartBloc>(),
                  paymentBloc: context.read<PaymentBloc>(),
                  checkoutRepository: CheckoutRepository(),
                )),
        BlocProvider(
            create: (_) => ProductBloc(productRepository: ProductRepository())
              ..add(LoadProducts())),
      ],
      child: MaterialApp(
        title: 'Zero To Unicorn',
        theme: theme(),
        debugShowCheckedModeBanner: true,
        onGenerateRoute: AppRoute.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
