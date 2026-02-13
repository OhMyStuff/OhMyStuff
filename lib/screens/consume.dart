import 'package:flutter/material.dart';

import '../widgets/chips_text_field.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/number_text_field.dart';

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
                label: '物品名称（必填）',
                defaultValue: '测试产品',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                  return null;
                },
                onSaved: (value) {
                  print('[OMS] $value');
                },
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
                defaultChip: 0,
                chips: {
                  0: 'Kitchen',
                  1: 'Bedroom',
                  2: 'Balcony',
                  3: 'Living Room',
                },
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
