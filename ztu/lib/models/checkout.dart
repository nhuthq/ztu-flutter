import 'package:equatable/equatable.dart';
import 'package:ztu/models/product.dart';

class Checkout extends Equatable {
  final String? fullName;
  final String? email;
  final String? address;
  final String? city;
  final String? country;
  final String? zipCode;
  final List<Product>? products;
  final String? subTotal;
  final String? deliveryFee;
  final String? total;

  const Checkout({
    required this.fullName,
    required this.email,
    required this.address,
    required this.city,
    required this.country,
    required this.zipCode,
    required this.products,
    required this.subTotal,
    required this.deliveryFee,
    required this.total,
  });

  @override
  List<Object?> get props => [
        fullName,
        email,
        address,
        city,
        country,
        zipCode,
        products,
        subTotal,
        deliveryFee,
        total
      ];

  Map<String, Object> toDocument() {
    Map cusomterAddress = Map();
    cusomterAddress['address'] = address;
    cusomterAddress['city`'] = city;
    cusomterAddress['country'] = country;
    cusomterAddress['zipCode'] = zipCode;

    return {
      'customerAdress': cusomterAddress,
      'customerName': fullName!,
      'customerEmail': email!,
      'products': products!.map((product) => product.name).toList(),
      'subTotal': subTotal!,
      'deliveryFee': deliveryFee!,
      'total': total!,
    };
  }
}
