import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class ProductEditPage extends StatelessWidget {
  const ProductEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('创建物品'),
          ),
          SliverList.list(
            children: [
              CustomTextField(
                leading: Icon(Icons.widgets_rounded),
                label: '物品名称（必填）',
                suffix: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.qr_code_scanner_rounded),
                ),
              ),
              ListTile(
                leading: Icon(Icons.interests_rounded),
                title: Text('数量单位'),
                subtitle: Text('未选择'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.category_rounded),
                title: Text('物品分组'),
                subtitle: Text('未选择'),
                onTap: () {},
              ),
              CustomTextField(
                leading: Icon(Icons.location_on_rounded),
                label: '默认位置',
                suffix: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.qr_code_scanner_rounded),
                ),
              ),
              CustomTextField(
                leading: Icon(Icons.error_rounded),
                label: '安全库存',
                trailing: Row(
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
              ),
              CustomTextField(
                leading: Icon(Icons.notes_rounded),
                label: '备注',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete_rounded),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
