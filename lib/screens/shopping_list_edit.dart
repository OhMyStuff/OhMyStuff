import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class ShoppingListEditPage extends StatelessWidget {
  const ShoppingListEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('新建条目'),
          ),
          SliverList.list(
            children: [
              CustomTextField(
                leading: Icon(Icons.widgets_rounded),
                label: '物品名称',
                suffix: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.qr_code_scanner_rounded),
                ),
              ),
              CustomTextField(
                leading: Icon(Icons.category_rounded),
                label: '数量',
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
