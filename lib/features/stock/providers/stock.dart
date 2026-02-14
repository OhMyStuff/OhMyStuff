import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/local/models/stock.dart';
import '../../../core/data/local/store.dart';

part 'stock.g.dart';

@riverpod
FutureOr<Stock?> stock(Ref ref, int id) async {
  final store = await ref.watch(objectboxProvider.future);

  return store.box<Stock>().get(id);
}
