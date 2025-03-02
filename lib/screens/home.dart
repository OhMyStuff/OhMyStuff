import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'consume.dart';
import 'journal.dart';
import 'overview.dart';
import 'products.dart';
import 'purchase.dart';
import 'transfer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text('OhMyStuff'),
          actions: [
            IconButton(
              onPressed: () => context.go('/settings'),
              icon: Icon(Icons.settings_outlined),
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(text: '概览'),
              Tab(text: '库存'),
              Tab(text: '位置'),
              Tab(text: '入库'),
              Tab(text: '出库'),
              Tab(text: '转移'),
              Tab(text: '清点'),
              Tab(text: '日志'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OverviewPage(),
            ProductsPage(),
            Placeholder(),
            PurchasePage(),
            ConsumePage(),
            TransferPage(),
            Placeholder(),
            JournalPage(),
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
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.filter_list_rounded),
              // ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
