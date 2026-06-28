import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'custom_text_field.dart';

typedef ChipRecord = ({String id, String name});

class ChipsPickerField extends HookWidget {
  const ChipsPickerField({
    super.key,
    required this.label,
    this.trailing,
    required this.chips,
    required this.value,
    this.validator,
    this.onChanged,
    required this.onPick,
  });

  final String label;
  final Widget? trailing;
  final List<ChipRecord> chips;
  final ChipRecord? value;
  final String? Function(ChipRecord? value)? validator;
  final ValueChanged<ChipRecord>? onChanged;
  final VoidCallback onPick;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    controller.text = value?.name ?? '';

    Widget result = CustomTextField(
      controller: controller,
      readOnly: true,
      label: label,
      trailing: trailing,
      bottom: Wrap(
        spacing: 4.0,
        children: [
          for (final chip in chips)
            ChoiceChip(
              label: Text(chip.name),
              selected: value?.id == chip.id,
              onSelected: (_) {
                if (value?.id == chip.id) return;

                controller.text = chip.name;
                onChanged?.call(chip);
              },
            ),
        ],
      ),
      onTap: onPick,
    );

    return result;
  }
}
