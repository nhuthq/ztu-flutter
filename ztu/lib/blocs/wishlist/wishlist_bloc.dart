import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/wishlist/wishlist_event.dart';
import 'package:ztu/blocs/wishlist/wishlist_state.dart';
import 'package:ztu/models/product.dart';
import 'package:ztu/models/wishlist.dart';
import 'package:ztu/repositories/local_storage/local_storage_repository.dart';
import 'package:hive/hive.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final LocalStorageRepository _localStorageRepository;
  WishlistBloc({required LocalStorageRepository localStorageRepository})
      : _localStorageRepository = localStorageRepository,
        super(WishlistLoading()) {
    on<LoadWishlist>(_onLoadWishlist);
    on<AddProductToWishlist>(_onAddProduct);
    on<RemoveProductFromWishlist>(_onRemoveProduct);
  }

  void _onLoadWishlist(event, Emitter<WishlistState> emit) async {
    emit(WishlistLoading());
    try {
      Box box = await _localStorageRepository.openBox();
      List<Product> products = _localStorageRepository.getWishlist(box);
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(WishlistLoaded(
          wishlist: Wishlist(
        products: products,
      )));
    } on Exception {
      emit(WishlistError());
    }
  }

  void _onAddProduct(event, Emitter<WishlistState> emit) async {
    final state = this.state;
    if (state is WishlistLoaded) {
      try {
        Box box = await _localStorageRepository.openBox();
        _localStorageRepository.addProductToWishlist(box, event.product);

        emit(WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..add(event.product),
          ),
        ));
      } on Exception {
        emit(WishlistError());
      }
    }
  }

  void _onRemoveProduct(event, Emitter<WishlistState> emit) async {
    final state = this.state;
    if (state is WishlistLoaded) {
      try {
        Box box = await _localStorageRepository.openBox();
        _localStorageRepository.removeProductToWishlist(box, event.product);
        emit(WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..remove(event.product),
          ),
        ));
      } on Exception {
        emit(WishlistError());
      }
    }
  }
}
