import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_tile.dart';
import '../widgets/filter_bar.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stocks'),
        // bottom: FilterBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                CustomTile(
                  title: 'Soda',
                  subtitle: [],
                  onTap: () => context.push('/product'),
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
          ),
          Divider(height: 0),
          FilterBar(),
        ],
      ),
    );
  }
}
