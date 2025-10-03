import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('购买物品（快速操作）'),
          ),
          SliverList.list(
            children: [
              CustomTextField(
                label: '物品名称',
              ),
              CustomTextField(
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
                label: '位置',
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
                label: '价格 (CNY)',
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
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart_outlined),
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
              icon: Icon(Icons.auto_awesome_outlined),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
