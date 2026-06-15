import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqlite3/sqlite3.dart';

part 'database.g.dart';

@Riverpod(keepAlive: true)
FutureOr<Database> database(Ref ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final filename = path.join(dir.path, 'default.db');
  final database = sqlite3.open(filename);

  print('[OMS] FILENAME $filename');
  print('[OMS] DATABASE VERSION ${sqlite3.version}');

  database.execute('PRAGMA foreign_keys = ON;');

  database.execute('''
    CREATE TABLE IF NOT EXISTS PRODUCTS (
        ID                      TEXT    PRIMARY KEY,
        SKU                     TEXT    UNIQUE
                                        NOT NULL,
        NAME                    TEXT    UNIQUE
                                        NOT NULL,
        CATEGORY_ID             TEXT,
        UNIT_ID                 TEXT,
        DEFAULT_LOCATION_ID     TEXT,
        DEFAULT_SHELF_LIFE_DAYS INTEGER NOT NULL,
        SAFETY_STOCK            REAL    NOT NULL
                                DEFAULT (0),
        DESCRIPTION             TEXT,
        IS_ACTIVE               INTEGER DEFAULT (1)
                                        NOT NULL,
        FOREIGN KEY (DEFAULT_LOCATION_ID) REFERENCES LOCATIONS(ID) ON DELETE SET NULL
    );
  ''');

  database.execute('''
    CREATE TABLE IF NOT EXISTS STOCKS (
        ID              TEXT	PRIMARY KEY,
        PRODUCT_ID      TEXT	NOT NULL,
        QUANTITY        REAL  NOT NULL,
        PRICE           REAL  NOT NULL,
        LOCATION_ID     TEXT,
        PURCHASE_DATE   TEXT  NOT NULL,
        EXPIRATION_DATE TEXT,
        NOTES           TEXT,
        FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(ID) ON DELETE CASCADE,
      	FOREIGN KEY (LOCATION_ID) REFERENCES LOCATIONS(ID) ON DELETE SET NULL
    );
  ''');

  database.execute('''
    CREATE TABLE IF NOT EXISTS LOCATIONS (
        ID          TEXT	PRIMARY KEY,
        NAME        TEXT	UNIQUE
                          NOT NULL,
        PARENT_ID	  TEXT,
        DESCRIPTION	TEXT,
        FOREIGN KEY (PARENT_ID) REFERENCES LOCATIONS(ID) ON DELETE SET NULL
    );
  ''');

  ref.onDispose(() {
    database.close();
    print('[OMS] DATABASE DISPOSED');
  });

  return database;
}
