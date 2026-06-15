import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

enum UnitType {
  count,
  weight,
  volume,
  length,
  area,
  custom,
}

@freezed
abstract class Unit with _$Unit {
  const factory Unit({
    required String id,
    required String name,
    String? plural,
    String? symbol,
    @Default(UnitType.count) UnitType type,
    String? baseUnitId,
    @Default(1.0) double baseRate,
    @Default(0) int priority,
  }) = _Unit;

  factory Unit.fromJson(Map<String, Object?> json) => _$UnitFromJson(json);
}
