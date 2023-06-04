import 'package:ztu/models/product.dart';
import 'package:hive/hive.dart';

abstract class BaseLocalStorageRepository {
  Future<void> openBox();
  List<Product> getWishlist(Box box);
  Future<void> addProductToWishlist(Box box, Product product);
  Future<void> removeProductToWishlist(Box box, Product product);
  Future<void> clearWishlist(Box box);
}