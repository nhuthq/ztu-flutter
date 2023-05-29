import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/models/product.dart';
import 'package:equatable/equatable.dart';
import 'package:ztu/repositories/product/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  StreamSubscription? _productSubscription;

  ProductBloc({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(ProductLoading()) {
    on<LoadProducts>(_onLoadProducts);
    on<UpdateProducts>(_onUpdateProducts);
  }

  void _onLoadProducts(event, Emitter<ProductState> emit) async {
    _productSubscription?.cancel();
    _productSubscription =
        _productRepository.getAllProducts().listen((product) => {
              debugPrint('Here ${product}'),
              add(
                UpdateProducts(product),
              )
            });
  }

  void _onUpdateProducts(event, Emitter<ProductState> emit) async {
    emit(ProductLoaded(products: event.products));
  }
}
