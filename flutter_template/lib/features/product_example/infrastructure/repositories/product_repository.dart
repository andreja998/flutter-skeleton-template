import 'package:dio/dio.dart';
import 'package:flutter_template/features/product_example/domain/entities/product_failure.dart';
import 'package:flutter_template/features/product_example/domain/entities/product_entity.dart';
import 'package:flutter_template/features/product_example/domain/repositories/product_repository_interface.dart';
import 'package:fpdart/src/either.dart';

class ProductRepository implements IProductRepositoryInterface {
  @override
  Future<Either<ProductFailure, ProductEntity>> getOneProduct(String id) async {
    // TODO: implement getOneProduct
    try {
      String url = 'https://dummyjson.com/products/$id';
      Response response = await Dio().get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var productEntity = ProductEntity.fromJson(response.data);
        return right(productEntity);
      } else {
        return left(const ProductFailure.productNotFound());
      }
    } catch (e) {
      return left(const ProductFailure.serverError());
    }
  }

}