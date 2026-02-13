import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/local/models/stock.dart';
import '../data/local/store.dart';

part 'stocks.g.dart';

@riverpod
class Stocks extends _$Stocks {
  @override
  FutureOr<List<Stock>> build() async {
    final store = await ref.watch(objectboxProvider.future);

    return store.box<Stock>().getAll();
  }

  Future<int> add(Stock stock) async {
    final store = await ref.watch(objectboxProvider.future);
    final result = store.box<Stock>().put(stock);

    ref.invalidateSelf();

    return result;
  }

  Future<bool> delete(int id) async {
    final store = await ref.watch(objectboxProvider.future);
    final result = store.box<Stock>().remove(id);

    ref.invalidateSelf();

    return result;
  }
}
