import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_tile.dart';

class StocksPage extends StatelessWidget {
  const StocksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('库存总览'),
          ),
          SliverList.list(
            children: [
              CustomTile(
                title: 'Soda',
                subtitle: [],
                onTap: () => context.push('/stocks/soda'),
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
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
            ),
            IconButton(
              onPressed: () => context.push('/products/new'),
              icon: Icon(Icons.add_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
