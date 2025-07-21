import 'package:flutter/material.dart';

class ConsumePage extends StatelessWidget {
  const ConsumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
          leading: Icon(Icons.location_on_rounded),
          title: Text('位置'),
          subtitle: Text('未选择'),
          onTap: () {},
        ),
      ],
    );
  }
}
