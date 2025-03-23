import 'package:go_router/go_router.dart';

import 'screens/about.dart';
import 'screens/customize.dart';
import 'screens/home.dart';
import 'screens/product.dart';
import 'screens/settings.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => HomePage(),
      routes: [
        GoRoute(
          path: 'product',
          builder: (_, __) => ProductPage(),
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
