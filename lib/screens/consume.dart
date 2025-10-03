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
