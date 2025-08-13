import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class ConsumePage extends StatelessWidget {
  const ConsumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('消耗物品'),
          ),
          SliverList.list(
            children: [
              CustomTextField(
                leading: Icon(Icons.widgets_rounded),
                label: '物品名称',
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
              ListTile(
                leading: Icon(Icons.location_on_rounded),
                title: Text('位置'),
                subtitle: Text('未选择'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_outward_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.nfc_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.clear_rounded),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
