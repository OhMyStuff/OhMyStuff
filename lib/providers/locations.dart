import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/local/models/location.dart';
import '../data/local/store.dart';

part 'locations.g.dart';

@riverpod
class Locations extends _$Locations {
  @override
  FutureOr<List<Location>> build() async {
    final store = await ref.watch(objectboxProvider.future);

    return store.box<Location>().getAll();
  }

  Future<int> add(Location location) async {
    final store = await ref.watch(objectboxProvider.future);
    final result = store.box<Location>().put(location);

    ref.invalidateSelf();

    return result;
  }

  Future<bool> delete(int id) async {
    final store = await ref.watch(objectboxProvider.future);
    final result = store.box<Location>().remove(id);

    ref.invalidateSelf();

    return result;
  }
}
