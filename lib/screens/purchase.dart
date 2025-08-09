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
            title: Text('消耗物品（快速操作）'),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList.list(
              children: [
                SizedBox(height: 8),
                CustomTextField(),
                Divider(
                  indent: 64.0,
                  endIndent: 64.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: FilledButton.tonalIcon(
                      onPressed: () {},
                      icon: Icon(Icons.check_rounded),
                      label: Text('出库 3 件物品'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.widgets_rounded),
        label: Text('选择物品'),
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
