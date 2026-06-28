import 'package:flutter/material.dart';

import '../../../core/widgets/form/base/custom_text_field.dart';
import '../../../core/widgets/form/base/number_text_field.dart';

class ConsumePage extends StatelessWidget {
  const ConsumePage({super.key, this.id});

  final String? id;

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
                readOnly: true,
              ),
              NumberTextField(
                label: '数量',
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
