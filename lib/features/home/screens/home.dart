import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/data/local/store.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final database = ref.read(objectboxProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('OhMyStuff'),
            actions: [
              IconButton(
                onPressed: () => context.push('/settings'),
                icon: Icon(Icons.settings_outlined),
              ),
            ],
          ),
          SliverList.list(
            children: [
              ListTile(
                leading: Icon(Icons.widgets_outlined),
                title: Text('Stock Overview'),
                trailing: Text('10'),
                onTap: () => context.push('/stocks'),
              ),
              ListTile(
                leading: Badge(
                  child: Icon(Icons.shopping_cart_outlined),
                ),
                title: Text('Shopping List'),
                trailing: Text('3'),
                onTap: () => context.push('/shopping'),
              ),
              ListTile(
                leading: Icon(Icons.arrow_downward_rounded),
                title: Text('Purchase'),
                onTap: () => context.push('/purchase'),
              ),
              ListTile(
                leading: Icon(Icons.arrow_outward_rounded),
                title: Text('Consume'),
                onTap: () => context.push('/consume'),
              ),
              ListTile(
                leading: Icon(Icons.swap_horiz_rounded),
                title: Text('Transfer'),
                onTap: () => context.push('/transfer'),
              ),
              ListTile(
                leading: Icon(Icons.checklist_rounded),
                title: Text('Count'),
                onTap: () => context.push('/count'),
              ),
              ListTile(
                leading: Icon(Icons.check_rounded),
                title: Text('Packing List'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.restore_rounded),
                title: Text('Journal'),
                onTap: () => context.push('/journal'),
              ),
              Divider(),
              ListTile(
                leading: Badge(
                  child: Icon(Icons.tag_rounded),
                ),
                title: Text('Expired'),
                trailing: Text('1'),
                onTap: () => context.push('/stocks'),
              ),
              ListTile(
                leading: Badge(
                  child: Icon(Icons.tag_rounded),
                ),
                title: Text('Expiring Soon'),
                trailing: Text('3'),
                onTap: () => context.push('/stocks'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner_rounded),
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
              icon: Icon(Icons.auto_awesome_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
