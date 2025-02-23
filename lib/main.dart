import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

import 'router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp.router(
          title: 'OhMyStuff',
          theme: ThemeData(colorScheme: lightDynamic),
          darkTheme: ThemeData(colorScheme: darkDynamic),
          routerConfig: router,
        );
      },
    );
  }
}
