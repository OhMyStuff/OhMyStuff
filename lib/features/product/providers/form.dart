import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/form.dart';

part 'form.g.dart';

@riverpod
class ProductForm extends _$ProductForm {
  @override
  ProductFormState build() {
    // return ProductFormState();
    return ProductFormState(
      uuid: 'c1000001-0001-4000-a000-000000000001',
      name: '物品名称',
      defaultLocation: (id: 'c1000001-0001-4000-a000-000000000001', name: '厨房'),
    );
  }

  bool submit() {
    print('[OMS] ON SUBMIT: $state');
    return false;
  }

  void updateName(String name) {
    state = state.copyWith(
      name: name,
    );
  }

  void updateDefaultLocation(({String id, String name})? location) {
    state = state.copyWith(
      defaultLocation: location,
    );
  }
}
