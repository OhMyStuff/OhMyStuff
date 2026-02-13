import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'objectbox.g.dart';

part 'store.g.dart';

@Riverpod(keepAlive: true)
FutureOr<Store> objectbox(Ref ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final filename = path.join(dir.path, 'default');
  final store = await openStore(directory: filename);

  print('[OMS] FILENAME $filename');

  return store;
}
