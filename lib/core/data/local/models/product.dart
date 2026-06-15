import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String id,
    String? sku,
    required String name,
    required String unitId,
    String? categoryId,
    String? defaultLocationId,
    int? defaultDueDays,
    double? reorderPoint,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? attributes,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
