import 'package:flutter_template/features/product_example/domain/entities/product_entity.dart';
import 'package:flutter_template/features/product_example/domain/entities/product_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProductRepositoryInterface {
  Future<Either<ProductFailure, ProductEntity>> getOneProduct(String id);
}