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
                label: '物品名称（必填）',
              ),
              CustomTextField(
                label: '数量单位',
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                bottom: Wrap(
                  spacing: 4,
                  children: [
                    ChoiceChip(
                      label: Text('个'),
                      selected: true,
                      onSelected: (value) {},
                    ),
                    ChoiceChip(
                      label: Text('克'),
                      selected: false,
                      onSelected: (value) {},
                    ),
                    ChoiceChip(
                      label: Text('件'),
                      selected: false,
                      onSelected: (value) {},
                    ),
                    ChoiceChip(
                      label: Text('包'),
                      selected: false,
                      onSelected: (value) {},
                    ),
                  ],
                ),
              ),
              CustomTextField(
                label: '默认位置',
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                bottom: Wrap(
                  spacing: 4,
                  children: [
                    ChoiceChip(
                      label: Text('Kitchen'),
                      selected: true,
                      onSelected: (value) {},
                    ),
                    ChoiceChip(
                      label: Text('Bedroom'),
                      selected: false,
                      onSelected: (value) {},
                    ),
                    ChoiceChip(
                      label: Text('Balcony'),
                      selected: false,
                      onSelected: (value) {},
                    ),
                    ChoiceChip(
                      label: Text('Living Room'),
                      selected: false,
                      onSelected: (value) {},
                    ),
                  ],
                ),
              ),
              CustomTextField(
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
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner_rounded),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
