import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/widgets/form/base/chips_picker_field.dart';
import '../../../core/widgets/form/base/custom_text_field.dart';
import '../providers/form.dart';

class ProductFormPage extends HookConsumerWidget {
  const ProductFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productFormProvider);
    final notifier = ref.read(productFormProvider.notifier);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('创建物品'),
          ),
          SliverList.list(
            children: [
              CustomTextField(
                label: '名称',
                initialValue: state.name,
                onChanged: (value) {
                  notifier.updateName(value);
                },
              ),
              ChipsPickerField(
                label: '选择位置',
                trailing: IconButton.filledTonal(
                  onPressed: () {},
                  icon: Icon(Icons.qr_code_scanner_rounded),
                ),
                value: state.defaultLocation,
                chips: [
                  (id: 'c1000001-0001-4000-a000-000000000001', name: '厨房'),
                  (id: 'c1000001-0001-4000-a000-000000000002', name: '客厅'),
                  (id: 'c1000001-0001-4000-a000-000000000003', name: '主卧'),
                ],
                onPick: () async {
                  final result = await context.push<ChipRecord?>(
                    '/locations/lookup',
                  );
                  if (result != null) {
                    notifier.updateDefaultLocation(result);
                  }
                },
                onChanged: (value) {
                  notifier.updateDefaultLocation(value);
                },
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (notifier.submit()) {
            context.pop();
          }
        },
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
