import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.freezed.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    String? uuid,
    String? name,
    ({String id, String name})? defaultLocation,
  }) = _ProductFormState;
}
