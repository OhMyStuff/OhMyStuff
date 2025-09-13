import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/about.dart';
import 'screens/backup.dart';
import 'screens/consume.dart';
import 'screens/count.dart';
import 'screens/product_edit.dart';
import 'screens/home.dart';
import 'screens/journal.dart';
import 'screens/shopping_list_edit.dart';
import 'screens/stocks.dart';
import 'screens/purchase.dart';
import 'screens/customize.dart';
import 'screens/stock.dart';
import 'screens/settings.dart';
import 'screens/shopping.dart';
import 'screens/transfer.dart';

final router = GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    if (state.uri.hasScheme) {
      return state.uri.path;
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => HomePage(),
      routes: [
        GoRoute(
          path: 'stocks',
          builder: (_, __) => StocksPage(),
          routes: [
            GoRoute(
              path: 'soda',
              builder: (_, __) => StockPage(),
            ),
          ],
        ),
        GoRoute(
          path: 'products',
          builder: (_, __) => StocksPage(),
          routes: [
            GoRoute(
              path: 'new',
              builder: (_, __) => ProductEditPage(),
            ),
          ],
        ),
        GoRoute(
          path: 'shopping',
          builder: (_, __) => ShoppingPage(),
          routes: [
            GoRoute(
              path: 'new',
              builder: (_, __) => ShoppingListEditPage(),
            ),
          ],
        ),
        GoRoute(
          path: 'purchase',
          builder: (_, __) => PurchasePage(),
        ),
        GoRoute(
          path: 'consume',
          builder: (_, __) => ConsumePage(),
        ),
        GoRoute(
          path: 'transfer',
          builder: (_, __) => TransferPage(),
        ),
        GoRoute(
          path: 'count',
          builder: (_, __) => CountPage(),
        ),
        GoRoute(
          path: 'journal',
          builder: (_, __) => JournalPage(),
        ),
        GoRoute(
          path: 'settings',
          builder: (_, __) => SettingsPage(),
          routes: [
            GoRoute(
              path: 'customize',
              builder: (_, __) => CustomizePage(),
            ),
            GoRoute(
              path: 'backup',
              builder: (_, __) => BackupPage(),
            ),
            GoRoute(
              path: 'about',
              builder: (_, __) => AboutPage(),
              routes: [
                GoRoute(
                  path: 'license',
                  builder: (_, __) => LicensePage(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
