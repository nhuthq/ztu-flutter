import 'package:equatable/equatable.dart';
import 'package:ztu/models/product.dart';

class Cart extends Equatable {
  const Cart();

  @override
  List<Object?> get props => [];

  static List<Product> products = const [
    Product(
      name: 'Cookies & Cream',
      category: 'Milkshake',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1624781740834-fbfbf5fd221a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Cookies Chocolate',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1586917049334-0f99406d8a6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Redberry Milkshake',
      category: 'Milkshake',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1626078436591-fd0ef36fbf46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Coconut Milkshake',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1546470427-0d4db154ceb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Avocado Milkshake',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1623123093799-70a72826e167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Strawberry Milkshake',
      category: 'Milkshake',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1589734580748-6d9421464885?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=989&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Matcha Latte',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1604085792782-8d92f276d7d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
