import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/number_text_field.dart';

class ShoppingFormPage extends StatelessWidget {
  const ShoppingFormPage({super.key});

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
              CustomTextField(
                label: '备注',
                defaultValue: '这是一段描述',
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
