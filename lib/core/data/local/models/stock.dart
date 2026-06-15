import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
abstract class Stock with _$Stock {
  const factory Stock({
    required String id,
    required String productId,
    required String locationId,
    @Default(1.0) double quantity,
    @Default(0.0) double unitPrice,
    DateTime? manufacturingDate,
    DateTime? purchaseDate,
    DateTime? expirationDate,
    String? notes,
    @Default(0) int priority,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Stock;

  factory Stock.fromJson(Map<String, Object?> json) => _$StockFromJson(json);
}
