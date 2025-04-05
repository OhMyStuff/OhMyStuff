import 'package:go_router/go_router.dart';

import 'screens/about.dart';
import 'screens/customize.dart';
import 'screens/journal.dart';
import 'screens/overview.dart';
import 'screens/product.dart';
import 'screens/products.dart';
import 'screens/settings.dart';
import 'screens/shopping.dart';
import 'widgets/custom_navigation.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return CustomNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, __) => OverviewPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/products',
              builder: (_, __) => ProductsPage(),
            ),
            GoRoute(
              path: '/product',
              builder: (_, __) => ProductPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/shopping',
              builder: (_, __) => ShoppingPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/journal',
              builder: (_, __) => JournalPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
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
    ),
  ],
);
