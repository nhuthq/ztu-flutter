import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/cart/cart_event.dart';
import 'package:ztu/blocs/cart/cart_state.dart';
import 'package:ztu/models/cart.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading());

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is StartCart) {
      yield* _mapStartCartToState();
    } else if (event is AddCartProduct) {
      yield* _mapAddCartToState(event, state);
    } else if (event is RemoveCartProduct) {
      yield* _mapRemoveCartToState(event, state);
    }
  }

  Stream<CartState> _mapStartCartToState() async* {
    yield CartLoading();
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield const CartLoaded();
    } catch (_) {}
  }

  Stream<CartState> _mapAddCartToState(
      AddCartProduct event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(
            cart: Cart(
          products: List.from(state.cart.products)..add(event.product),
        ));
      } catch (_) {}
    }
  }

  Stream<CartState> _mapRemoveCartToState(
      RemoveCartProduct event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(
            cart: Cart(
                products: List.from(state.cart.products)
                  ..remove(event.product)));
      } catch (_) {}
    }
  }
}
