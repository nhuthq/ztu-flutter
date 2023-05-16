import 'package:equatable/equatable.dart';
import 'package:ztu/models/product.dart';

class Cart extends Equatable {
  final List<Product> products;
  final double _feeDelivery = 10.0;
  final double _freeDeliveryReach = 30.0;

  const Cart({this.products = const <Product>[]});
  // const Wishlist({this.products = const <Product>[]});

  double get subTotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(double subTotal) {
    return subTotal >= _freeDeliveryReach ? 0.0 : _feeDelivery;
  }

  String freeDelivery(subtotal) {
    if (subtotal >= _freeDeliveryReach) {
      return 'You have Free Delivery';
    } else {
      double missing = _freeDeliveryReach - subTotal;
      return 'Add \$${missing.toStringAsFixed(2)} for FREE Delivery';
      ;
    }
  }

  double total(double subTotal, double deliveryFee) {
    return subTotal + deliveryFee;
  }

  String get subTotalString => subTotal.toStringAsFixed(2);
  String get totalString =>
      total(subTotal, deliveryFee(subTotal)).toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subTotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subTotal);

  @override
  List<Object?> get props => [products];

  Map productQuantity(products) {
    var quantity = Map();

    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });
    return quantity;
  }
}
