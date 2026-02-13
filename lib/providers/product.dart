import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/local/models/product.dart';
import '../data/local/store.dart';

part 'product.g.dart';

@riverpod
FutureOr<Product?> product(Ref ref, int id) async {
  final store = await ref.watch(objectboxProvider.future);

  return store.box<Product>().get(id);
}
