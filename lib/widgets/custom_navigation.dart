import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class CustomNavigation extends HookWidget {
  const CustomNavigation({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(
      initialLength: children.length,
      initialIndex: navigationShell.currentIndex,
    );

    useEffect(() {
      if (tabController.index != navigationShell.currentIndex) {
        tabController.animateTo(navigationShell.currentIndex);
      }

      return null;
    }, [navigationShell.currentIndex]);

    return Scaffold(
      appBar: AppBar(
        title: Text('OhMyStuff'),
        actions: [
          IconButton(
            onPressed: () => context.push('/settings'),
            icon: Icon(Icons.settings_outlined),
          )
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          tabAlignment: TabAlignment.start,
          tabs: [
            Tab(text: '概览'),
            Tab(text: '库存'),
            Tab(text: '购物清单'),
            Tab(text: '位置'),
            Tab(text: '入库'),
            Tab(text: '出库'),
            Tab(text: '转移'),
            Tab(text: '清点'),
            Tab(text: '日志'),
          ],
          onTap: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        ),
      ),
      body: TabBarView(
        controller: tabController,
        physics: NeverScrollableScrollPhysics(),
        children: children,
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
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
