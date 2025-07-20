import 'package:flutter/material.dart';

import '../widgets/quick_action_bar.dart';

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
      bottomNavigationBar: QuickActionBar(),
    );
  }
}
