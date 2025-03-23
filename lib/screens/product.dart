import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('Soda'),
          ),
          SliverList.list(
            children: [
              ListTile(
                title: Text('数量'),
                subtitle: Text('12 Can'),
              ),
              ListTile(
                title: Text('位置'),
                subtitle: Text('Kitchen'),
              ),
              ListTile(
                title: Text('下次到期'),
                subtitle: Text('2025年5月1日'),
              ),
              ListTile(
                title: Text('上次购买'),
                subtitle: Text('2025年3月1日'),
              ),
              ListTile(
                title: Text('上次使用'),
                subtitle: Text('未使用'),
              ),
              ListTile(
                title: Text('过期率'),
                subtitle: Text('0%'),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            PopupMenuButton(
              itemBuilder: (_) {
                return <PopupMenuEntry<dynamic>>[
                  PopupMenuItem(child: Text('编辑产品')),
                  PopupMenuItem(child: Text('库存条目')),
                  PopupMenuDivider(),
                  PopupMenuItem(child: Text('加入购物清单')),
                  PopupMenuItem(child: Text('消耗全部')),
                  PopupMenuItem(child: Text('消耗所有变质的')),
                ];
              },
            ),
            VerticalDivider(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 4,
                  children: [
                    ActionChip(
                      avatar: Icon(Icons.shopping_cart_rounded),
                      label: Text('购买'),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.inventory_2_rounded),
                      label: Text('消耗'),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.swap_horiz_rounded),
                      label: Text('转移'),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.inventory_rounded),
                      label: Text('清点'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
