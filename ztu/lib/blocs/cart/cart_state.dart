import 'package:equatable/equatable.dart'; 
import 'package:ztu/models/cart.dart';

abstract class CartState extends Equatable {
  const CartState();
  @override
  List<Object> get props => [];
}

class CartLoading extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState {

// final Wishlist wishlist;

//   const WishlistLoaded({this.wishlist = const Wishlist()});

//   @override
//   List<Object> get props => [wishlist];

  final Cart cart;
  
  const CartLoaded({this.cart = const Cart()});

  @override
  List<Object> get props => [cart];
}

class CartError extends CartState {
  @override
  List<Object> get props => [];
}
