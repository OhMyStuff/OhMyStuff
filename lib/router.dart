import 'package:go_router/go_router.dart';

import 'screens/home.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => HomePage(),
    ),
  ],
);
