import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/local/models/stock.dart';
import '../data/local/store.dart';

part 'stock.g.dart';

@riverpod
FutureOr<Stock?> stock(Ref ref, int id) async {
  final store = await ref.watch(objectboxProvider.future);

  return store.box<Stock>().get(id);
}
