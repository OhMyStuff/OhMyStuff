import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/products.dart';
import '../widgets/custom_tile.dart';

class StocksPage extends ConsumerWidget {
  const StocksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stocks = ref.watch(productsProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('库存总览'),
          ),
          stocks.when(
            data: (data) {
              return SliverList.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CustomTile(
                    title: data[index].name,
                    subtitle: [
                      Text(data[index].id.toString()),
                    ],
                    onTap: () => context.push('/stocks/${data[index].id}'),
                  );
                },
              );
            },
            error: (_, __) {
              return SliverToBoxAdapter(child: Text('error'));
            },
            loading: () {
              return SliverToBoxAdapter(child: LinearProgressIndicator());
            },
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
