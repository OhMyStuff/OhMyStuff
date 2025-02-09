import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget implements PreferredSizeWidget {
  const CustomBottom({super.key});

  @override
  Size get preferredSize => Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 8),
          TextButton.icon(
            onPressed: () {},
            icon: Text('状态'),
            label: Icon(Icons.keyboard_arrow_down_rounded),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Text('位置'),
            label: Icon(Icons.keyboard_arrow_down_rounded),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Text('排序：名称'),
            label: Icon(Icons.keyboard_arrow_down_rounded),
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
