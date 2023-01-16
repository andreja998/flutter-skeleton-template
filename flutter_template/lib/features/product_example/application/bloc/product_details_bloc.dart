import 'package:bloc/bloc.dart';
import 'package:flutter_template/features/product_example/domain/entities/product_entity.dart';
import 'package:flutter_template/features/product_example/domain/entities/product_failure.dart';
import 'package:flutter_template/features/product_example/domain/repositories/product_repository_interface.dart';
import 'package:flutter_template/features/product_example/infrastructure/repositories/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState> {

  final IProductRepositoryInterface productRepository = ProductRepository();

  ProductDetailsBloc() : super(_Initial()) {
    on<_GetProduct>((event, emit) async {
      // TODO: implement event handler
      final product = await productRepository.getOneProduct(event.id);

      product.fold((l) => {
        // here we can check l and return failure we want
        emit(ProductDetailsState.failure(productFailure: ProductFailure.productNotFound()))
      }, (r) => {
        emit(ProductDetailsState.loaded(productEntity: r))
      });
    });
  }
}
