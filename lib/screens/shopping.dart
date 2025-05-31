import 'package:flutter/material.dart';

import '../widgets/shopping_tile.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('Shopping list'),
          ),
          SliverList.list(
            children: [
              ShoppingTile(
                title: 'Soda',
                isChecked: true,
              ),
              ShoppingTile(
                title: 'Eggs',
                isChecked: true,
              ),
              ShoppingTile(
                title: 'Milk',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
