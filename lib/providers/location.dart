import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/local/models/location.dart';
import '../data/local/store.dart';

part 'location.g.dart';

@riverpod
FutureOr<Location?> location(Ref ref, int id) async {
  final store = await ref.watch(objectboxProvider.future);

  return store.box<Location>().get(id);
}
