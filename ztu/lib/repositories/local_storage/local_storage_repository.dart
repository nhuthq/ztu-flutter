import 'package:hive/hive.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/repositories/local_storage/base_local_storage_repository.dart';

class LocalStorageRepository extends BaseLocalStorageRepository {
  String boxname = 'wistlist_product';

  @override
  Future<Box> openBox() async {
    Box box = await Hive.openBox<Product>(boxname);

    return box;
  }

  @override
  List<Product> getWishlist(Box box) {
    return box.values.toList() as List<Product>;
  }

  @override
  Future<void> addProductToWishlist(Box box, Product product) async {
    await box.put(product.id, product);
  }

  @override
  Future<void> removeProductToWishlist(Box box, Product product) async {
    await box.delete(product.id);
  }

  @override
  Future<void> clearWishlist(Box box) async {
    await box.clear();
  }
}
