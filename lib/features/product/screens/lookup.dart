import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/custom_tile.dart';
import '../../product/providers/products.dart';
import '../../product/models/operation.dart';
import '../../../core/widgets/search_header.dart';

class ProductLookupPage extends ConsumerWidget {
  const ProductLookupPage({
    super.key,
    required this.operation,
    this.multiSelect = false,
  });

  final LookupOperation operation;
  final bool multiSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(operation.title),
          ),
          SliverPersistentHeader(
            delegate: SearchHeaderDelegate(
              label: '搜索产品',
            ),
            pinned: true,
          ),
          SliverList.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return CustomTile(
                title: product.name,
                subtitle: [
                  Text(product.id),
                ],
                onTap: () => context.push('${operation.path}/${product.id}'),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.nfc_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.auto_awesome_outlined),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
