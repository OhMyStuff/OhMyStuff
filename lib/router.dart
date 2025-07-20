import 'package:go_router/go_router.dart';

import 'screens/about.dart';
import 'screens/consume.dart';
import 'screens/customize.dart';
import 'screens/inventory.dart';
import 'screens/journal.dart';
import 'screens/locations.dart';
import 'screens/overview.dart';
import 'screens/product.dart';
import 'screens/products.dart';
import 'screens/purchase.dart';
import 'screens/settings.dart';
import 'screens/shopping.dart';
import 'screens/transfer.dart';
import 'widgets/custom_navigation.dart';

final router = GoRouter(
  initialLocation: '/overview',
  redirect: (context, state) {
    if (state.uri.hasScheme) {
      return state.uri.path;
    }
    return null;
  },
  routes: [
    StatefulShellRoute(
      builder: (context, state, navigationShell) {
        return navigationShell;
      },
      navigatorContainerBuilder: (context, navigationShell, children) {
        return CustomNavigation(
          navigationShell: navigationShell,
          children: children,
        );
      },
      branches: [
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/overview',
              builder: (_, __) => OverviewPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/stocks',
              builder: (_, __) => ProductsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/shopping',
              builder: (_, __) => ShoppingPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/locations',
              builder: (_, __) => LocationsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/purchase',
              builder: (_, __) => PurchasePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/consume',
              builder: (_, __) => ConsumePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/transfer',
              builder: (_, __) => TransferPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/inventory',
              builder: (_, __) => InventoryPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          preload: true,
          routes: [
            GoRoute(
              path: '/journal',
              builder: (_, __) => JournalPage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/product',
      builder: (_, __) => ProductPage(),
    ),
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
);
