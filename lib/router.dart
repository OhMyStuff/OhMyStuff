import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/about.dart';
import 'screens/consume.dart';
import 'screens/customize.dart';
import 'screens/inventory.dart';
import 'screens/journal.dart';
import 'screens/overview.dart';
import 'screens/product.dart';
import 'screens/products.dart';
import 'screens/purchase.dart';
import 'screens/settings.dart';
import 'screens/shopping.dart';
import 'screens/transfer.dart';
import 'widgets/custom_navigation.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
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
              routes: [
                GoRoute(
                  path: '/purchase',
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (_, __) => PurchasePage(),
                ),
                GoRoute(
                  path: '/consume',
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (_, __) => ConsumePage(),
                ),
                GoRoute(
                  path: '/transfer',
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (_, __) => TransferPage(),
                ),
                GoRoute(
                  path: '/inventory',
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (_, __) => InventoryPage(),
                ),
              ],
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
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (_, __) => AboutPage(),
                ),
                GoRoute(
                  path: 'customize',
                  parentNavigatorKey: _rootNavigatorKey,
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
