import 'package:equatable/equatable.dart';
import 'package:ztu/models/product.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class LoadCart extends CartEvent {}

class AddProductToCart extends CartEvent {
  final Product product;
  const AddProductToCart(this.product);
  @override
  List<Object> get props => [product];
}

class RemoveProductFromCart extends CartEvent {
  final Product product;
  const RemoveProductFromCart(this.product);
  @override
  List<Object> get props => [product];
}
