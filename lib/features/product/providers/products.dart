import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/local/models/product.dart';
import '../../../core/data/local/store.dart';

part 'products.g.dart';

@riverpod
class Products extends _$Products {
  @override
  FutureOr<List<Product>> build() async {
    final store = await ref.watch(objectboxProvider.future);

    return store.box<Product>().getAll();
  }

  Future<int> add(Product product) async {
    final store = await ref.watch(objectboxProvider.future);
    final result = store.box<Product>().put(product);

    ref.invalidateSelf();

    return result;
  }

  Future<bool> delete(int id) async {
    final store = await ref.watch(objectboxProvider.future);
    final result = store.box<Product>().remove(id);

    ref.invalidateSelf();

    return result;
  }
}
