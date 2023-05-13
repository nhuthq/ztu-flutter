import 'package:equatable/equatable.dart';
import 'package:ztu/models/product.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class StartCart extends CartEvent {}

class AddCartProduct extends CartEvent {
  final Product product;
  const AddCartProduct(this.product);
  @override
  List<Object> get props => [product];
}

class RemoveCartProduct extends CartEvent {
  final Product product;
  const RemoveCartProduct(this.product);
  @override
  List<Object> get props => [product];
}
