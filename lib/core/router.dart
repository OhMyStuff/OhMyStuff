import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/product/screens/form.dart';
import '../features/settings/screens/about.dart';
import '../features/settings/screens/backup.dart';
import '../features/stock/screens/consume.dart';
import '../features/stock/screens/count.dart';
import '../features/settings/screens/debug.dart';
import '../features/home/screens/home.dart';
import '../features/journal/screens/list.dart';
import '../features/shopping/screens/form.dart';
import '../features/stock/screens/list.dart';
import '../features/stock/screens/purchase.dart';
import '../features/settings/screens/customize.dart';
import '../features/stock/screens/detail.dart';
import '../features/settings/screens/settings.dart';
import '../features/shopping/screens/list.dart';
import '../features/stock/screens/transfer.dart';

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
            GoRoute(
              path: ':id',
              builder: (_, state) {
                final id = int.parse(state.pathParameters['id']!);
                return StockPage(id: id);
              },
            ),
          ],
        ),
        GoRoute(
          path: 'products',
          builder: (_, __) => StocksPage(),
          routes: [
            GoRoute(
              path: 'new',
              builder: (_, __) => ProductFormPage(),
            ),
          ],
        ),
        GoRoute(
          path: 'shopping',
          builder: (_, __) => ShoppingListPage(),
          routes: [
            GoRoute(
              path: 'new',
              builder: (_, __) => ShoppingFormPage(),
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
            GoRoute(
              path: 'debug',
              builder: (_, __) => DebugPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
