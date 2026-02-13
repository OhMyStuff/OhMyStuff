import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/local/models/location.dart';
import '../data/local/models/product.dart';
import '../data/local/store.dart';

class DebugPage extends ConsumerWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> products = [
      Product(
        'Soda',
        sku: 'soda-001',
      ),
      Product(
        'Cookies',
        sku: 'cookies-002',
      ),
      Product(
        'Chocolate',
        sku: 'chocolate-003',
      ),
      Product(
        'Eggs',
        sku: 'eggs-004',
      ),
      Product(
        'Yogurt',
        sku: 'yogurt-005',
      ),
      Product(
        'Noodles',
        sku: 'noodles-006',
      ),
      Product(
        'Cheese',
        sku: 'cheese-007',
      ),
      Product(
        'Cucumber',
        sku: 'cucumber-008',
      ),
      Product(
        'Tomato',
        sku: 'tomato-009',
      ),
      Product(
        'Milk',
        sku: 'milk-010',
      ),
    ];

    final List<Location> locations = [
      Location('Kitchen'),
      Location('Bedroom'),
      Location('Balcony'),
      Location('Living Room'),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('调试'),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 4,
                children: [
                  FilledButton.tonal(
                    onPressed: () async {
                      final store = await ref.read(objectboxProvider.future);

                      store.box<Product>().putMany(products);
                      store.box<Location>().putMany(locations);
                    },
                    child: Text('添加测试数据'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
