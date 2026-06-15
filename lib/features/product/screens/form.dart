import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/widgets/form/chips_text_field.dart';
import '../../../core/widgets/form/custom_text_field.dart';
import '../../../core/widgets/form/number_text_field.dart';

class ProductFormPage extends HookConsumerWidget {
  const ProductFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final Map<String, dynamic> data = {};

    Future<void> onSubmit() async {
      if (formKey.currentState!.validate()) {
        try {
          formKey.currentState!.save();
          print('[OMS] $data');
          if (!context.mounted) return;
          context.pop();
        } on Exception catch (e) {
          print('[OMS] $e');
        }
      }
    }

    return Scaffold(
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text('创建物品'),
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
                  onSaved: (value) => data['name'] = value,
                ),
                NumberTextField(
                  label: '数量',
                  defaultValue: 1.0,
                  onSaved: (value) => data['quantity'] = value,
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
                  onSaved: (value) => data['location'] = value,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onSubmit,
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
