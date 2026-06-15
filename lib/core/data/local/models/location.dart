import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  const factory Location({
    required String id,
    required String name,
    String? parentLocationId,
    String? description,
    @Default(0) int priority,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
