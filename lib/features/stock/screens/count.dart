import 'package:flutter/material.dart';

import '../../../core/widgets/form/base/custom_text_field.dart';
import '../../../core/widgets/form/base/number_text_field.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key, this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('清点物品'),
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
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.checklist_rounded),
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
