import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required int id,
    required String title,
    required String description,
    required double price,
    required double discountPercentage,
    @JsonKey(name: 'rating') required double ratiNG
  }) = _ProductEntity;


  factory ProductEntity.fromJson(Map<String, dynamic> json) => _$ProductEntityFromJson(json);

}