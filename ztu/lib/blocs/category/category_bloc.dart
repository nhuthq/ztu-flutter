import 'dart:async';
import 'package:ztu/models/category_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/repositories/category/category_repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _categoryRepository;
  StreamSubscription? _categorySubscription;

  CategoryBloc({required CategoryRepository categoryRepository})
      : _categoryRepository = categoryRepository,
        super(CategoryLoading()){
          on<LoadCategories>(_onLoadCategories);
          on<UpdateCategories>(_onUpdateCategories);
        }

  void _onLoadCategories(event, Emitter<CategoryState> emit) async {
    _categorySubscription?.cancel();
    _categorySubscription =
        _categoryRepository.getAllCategories().listen((categories) => add(
              UpdateCategories(categories),
            ));
  }

  void _onUpdateCategories(event, Emitter<CategoryState> emit) async {
    emit(CategoryLoaded(categories: event.categories));
  }
}
