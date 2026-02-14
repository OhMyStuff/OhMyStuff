import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/chips_text_field.dart';
import '../../../core/widgets/number_text_field.dart';

class ProductFormPage extends HookConsumerWidget {
  const ProductFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    Future<void> onSubmit() async {
      if (formKey.currentState!.validate()) {
        try {
          formKey.currentState!.save();
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
                  onSaved: (value) {
                    print('[OMS] $value');
                  },
                ),
                ChipsTextField(
                  label: '计量单位',
                  trailing: IconButton.filledTonal(
                    onPressed: () {},
                    icon: Icon(Icons.interests_outlined),
                  ),
                  defaultChip: 0,
                  chips: {
                    0: '个',
                    1: '克',
                    2: '件',
                    3: '包',
                  },
                  onSaved: (value) {
                    print('[OMS] $value');
                  },
                ),
                ChipsTextField(
                  label: '默认位置',
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
                NumberTextField(
                  label: '安全库存',
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
