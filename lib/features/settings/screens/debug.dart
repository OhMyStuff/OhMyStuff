import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/data/local/models/location.dart';
import '../../../core/data/local/models/product.dart';

class DebugPage extends ConsumerWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> products = [];

    final List<Location> locations = [];

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
                    onPressed: () async {},
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
