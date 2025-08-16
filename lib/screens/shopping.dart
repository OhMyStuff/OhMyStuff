import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/shopping_tile.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('购物清单'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/shopping/new'),
        child: Icon(Icons.add_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.storefront_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
