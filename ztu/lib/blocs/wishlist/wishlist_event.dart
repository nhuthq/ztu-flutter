import 'package:equatable/equatable.dart';
import 'package:ztu/models/product.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class LoadWishlist extends WishlistEvent {}

class AddProductToWishlist extends WishlistEvent {
  final Product product;
  const AddProductToWishlist(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveProductFromWishlist extends WishlistEvent {
  final Product product;
  const RemoveProductFromWishlist(this.product);

  @override
  List<Object> get props => [product];
}
