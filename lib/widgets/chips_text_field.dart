import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'custom_text_field.dart';

class ChipsTextField extends HookWidget {
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
  final int? defaultChip;
  final Map<int, String> chips;
  final void Function(String? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final selected = useState<int?>(defaultChip);

    useEffect(() {
      if (defaultChip != null && chips.containsKey(defaultChip)) {
        final defaultValue = chips[defaultChip]!;
        controller.text = defaultValue;
      }
      return null;
    }, []);

    void onInputChange(String value) {
      final matchingEntry = chips.entries.firstWhere(
        (entry) => entry.value == value,
        orElse: () => MapEntry(-1, ''),
      );

      if (matchingEntry.key != -1) {
        if (selected.value != matchingEntry.key) {
          selected.value = matchingEntry.key;
        }
      } else if (selected.value != null) {
        selected.value = null;
      }
    }

    final bottom = Wrap(
      spacing: 4,
      children: chips.entries.map((chip) {
        return ChoiceChip(
          label: Text(chip.value),
          selected: selected.value == chip.key,
          onSelected: (value) {
            if (value) {
              selected.value = chip.key;
              controller.text = chip.value;
            }
          },
        );
      }).toList(),
    );

    return CustomTextField(
      controller: controller,
      label: label,
      trailing: trailing,
      bottom: bottom,
      onChanged: onInputChange,
      onSaved: onSaved,
    );
  }
}
