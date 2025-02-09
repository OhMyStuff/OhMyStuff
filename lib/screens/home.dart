import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_bottom.dart';
import '../widgets/custom_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OhMyStuff'),
        actions: [
          IconButton(
            onPressed: () => context.go('/settings'),
            icon: Icon(Icons.menu_rounded),
          ),
        ],
        bottom: CustomBottom(),
      ),
      body: ListView(
        children: [
          CustomTile(
            title: 'Soda',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Cookies',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Chocolate',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Eggs',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Yogurt',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Noodles',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Cheese',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Cucumber',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Tomato',
            subtitle: [],
            onTap: () {},
          ),
          CustomTile(
            title: 'Milk',
            subtitle: [],
            onTap: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () => context.go('/masterdata'),
              icon: Icon(Icons.format_list_bulleted_rounded),
            ),
            IconButton(
              onPressed: () => context.go('/journal'),
              icon: Icon(Icons.restore_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_list_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
