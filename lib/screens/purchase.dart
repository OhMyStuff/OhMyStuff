import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
            leading: Icon(Icons.calendar_month_rounded),
            title: Text('到期日期'),
            subtitle: Text('2025年3月1日'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.location_on_rounded),
            title: Text('位置'),
            subtitle: Text('未选择'),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.notes_rounded),
                labelText: '备注',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit_outlined),
                ),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
