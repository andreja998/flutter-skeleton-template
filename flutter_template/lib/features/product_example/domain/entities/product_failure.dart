import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
abstract class ProductFailure with _$ProductFailure{
  const factory ProductFailure.serverError() = ServerError;
  const factory ProductFailure.productNotFound() = ProductNotFound;
}