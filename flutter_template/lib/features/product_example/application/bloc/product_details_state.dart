part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loaded({required ProductEntity productEntity}) = _Loaded;
  const factory ProductDetailsState.failure({required ProductFailure productFailure}) = _Failure;
}
