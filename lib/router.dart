import 'package:go_router/go_router.dart';

import 'screens/about.dart';
import 'screens/home.dart';
import 'screens/journal.dart';
import 'screens/stocks.dart';
import 'screens/purchase.dart';
import 'screens/customize.dart';
import 'screens/product.dart';
import 'screens/settings.dart';
import 'screens/shopping.dart';

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
              builder: (_, __) => ProductPage(),
            ),
          ],
        ),
        GoRoute(
          path: 'shopping',
          builder: (_, __) => ShoppingPage(),
        ),
        GoRoute(
          path: 'purchase',
          builder: (_, __) => PurchasePage(),
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
              path: 'about',
              builder: (_, __) => AboutPage(),
            ),
            GoRoute(
              path: 'customize',
              builder: (_, __) => CustomizePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
