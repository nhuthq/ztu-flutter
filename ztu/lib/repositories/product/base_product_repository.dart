import 'package:ztu/models/product.dart';

abstract class BaseProductRepository {
  Stream<List<Product>> getAllProducts();
}
