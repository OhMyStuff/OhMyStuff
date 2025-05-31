import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('Transfer'),
          ),
          SliverList.list(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.widgets_rounded),
                    labelText: '物品',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit_outlined),
                    ),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.category_rounded),
                    labelText: '数量',
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_up_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                      ],
                    ),
                    filled: true,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.arrow_outward_rounded),
                title: Text('从位置'),
                subtitle: Text('未选择'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.arrow_forward_rounded),
                title: Text('到位置'),
                subtitle: Text('未选择'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.swap_horiz_rounded),
      ),
    );
  }
}
