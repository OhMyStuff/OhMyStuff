import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class ChipsTextField extends StatelessWidget {
  const ChipsTextField({
    super.key,
    required this.label,
    this.trailing,
    this.defaultChip,
    required this.chips,
    this.onSaved,
  });

  final String label;
  final Widget? trailing;
  final String? defaultChip;
  final List<({String id, String name})> chips;
  final void Function(({String id, String name})? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    return FormField<({String id, String name})?>(
      initialValue: chips.where((chip) => chip.id == defaultChip).firstOrNull,
      onSaved: onSaved,
      builder: (field) {
        final selected = field.value;
        final controller = TextEditingController(
          text: selected?.name ?? '',
        );

        final bottom = Wrap(
          spacing: 4,
          children: chips.map((chip) {
            return ChoiceChip(
              label: Text(chip.name),
              selected: selected?.id == chip.id,
              onSelected: (value) {
                if (value) {
                  field.didChange(chip);
                }
              },
            );
          }).toList(),
        );

        return CustomTextField(
          controller: controller,
          readOnly: true,
          label: label,
          trailing: trailing,
          bottom: bottom,
        );
      },
    );
  }
}
