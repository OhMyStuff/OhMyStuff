import 'package:flutter/material.dart';

import '../../../core/widgets/form/chips_text_field.dart';
import '../../../core/widgets/form/custom_text_field.dart';
import '../../../core/widgets/form/number_text_field.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({super.key, this.id});

  final String? id;

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
                readOnly: true,
                defaultValue: id,
              ),
              NumberTextField(
                label: '数量',
                defaultValue: 1.0,
                onSaved: (value) {
                  print('[OMS] $value');
                },
              ),
              ChipsTextField(
                label: '位置',
                trailing: IconButton.filledTonal(
                  onPressed: () {},
                  icon: Icon(Icons.map_outlined),
                ),
                defaultChip: '0',
                chips: [
                  (id: '0', name: 'Kitchen'),
                  (id: '1', name: 'Bedroom'),
                  (id: '2', name: 'Balcony'),
                  (id: '3', name: 'Living Room'),
                ],
                onSaved: (value) {
                  print('[OMS] $value');
                },
              ),
              NumberTextField(
                label: '价格 (CNY)',
                defaultValue: 1.0,
                onSaved: (value) {
                  print('[OMS] $value');
                },
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
