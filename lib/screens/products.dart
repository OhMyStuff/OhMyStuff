import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_tile.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTile(
          title: 'Soda',
          subtitle: [],
          onTap: () => context.go('/product'),
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
    );
  }
}
