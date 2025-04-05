import 'package:flutter/material.dart';

import '../widgets/shopping_tile.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping list'),
      ),
      body: ListView(
        children: [
          ShoppingTile(
            title: 'Soda',
          ),
          ShoppingTile(
            title: 'Eggs',
          ),
          ShoppingTile(
            title: 'Milk',
          ),
        ],
      ),
    );
  }
}
