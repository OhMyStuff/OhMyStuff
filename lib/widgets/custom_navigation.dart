import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: const [
          NavigationDestination(
            label: 'Overview',
            icon: Icon(Icons.dashboard_rounded),
          ),
          NavigationDestination(
            label: 'Stocks',
            icon: Icon(Icons.widgets_rounded),
          ),
          NavigationDestination(
            label: 'Shopping',
            icon: Icon(Icons.shopping_cart_rounded),
          ),
          NavigationDestination(
            label: 'Journal',
            icon: Icon(Icons.restore_rounded),
          ),
          NavigationDestination(
            label: 'Settings',
            icon: Icon(Icons.settings_rounded),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
