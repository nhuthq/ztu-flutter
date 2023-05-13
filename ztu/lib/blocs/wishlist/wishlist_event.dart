import 'package:equatable/equatable.dart';
import 'package:ztu/models/product.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class WishlistStart extends WishlistEvent {}

class AddWishlistProduct extends WishlistEvent {
  final Product product;
  const AddWishlistProduct(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveWishlistProduct extends WishlistEvent {
  final Product product;
  const RemoveWishlistProduct(this.product);

  @override
  List<Object> get props => [product];
}
