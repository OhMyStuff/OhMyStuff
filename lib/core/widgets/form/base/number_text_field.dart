import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_text_field.dart';

class NumberTextField extends StatelessWidget {
  const NumberTextField({
    super.key,
    required this.label,
    this.defaultValue,
    this.min = 0,
    this.max,
    this.step = 1,
    this.onSaved,
  });

  final String label;
  final double? defaultValue;
  final double min;
  final double? max;
  final double step;
  final void Function(double? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(
      text: defaultValue?.toString(),
    );

    final formatters = [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9\-\.]')),
    ];

    String? validator(double? value) {
      if (value == null) return '请输入有效数字';
      if (value < min) return '数值不能小于 $min';
      if (max != null && value > max!) return '数值不能大于 $max';
      return null;
    }

    return FormField<double>(
      initialValue: defaultValue,
      validator: validator,
      onSaved: onSaved,
      builder: (field) {
        final error = field.hasInteractedByUser ? field.errorText : null;

        void adjust(double delta) {
          final current = field.value ?? min;
          final newValue =
              (current + delta * step).clamp(min, max ?? double.infinity);

          controller.text = newValue.toString();

          field.didChange(newValue);
        }

        return CustomTextField(
          controller: controller,
          label: label,
          error: error,
          keyboardType: TextInputType.number,
          inputFormatters: formatters,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton.filledTonal(
                icon: Icon(Icons.keyboard_arrow_up_rounded),
                onPressed: () => adjust(1),
              ),
              IconButton.filledTonal(
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                onPressed: () => adjust(-1),
              ),
            ],
          ),
          onChanged: (value) {
            final num = double.tryParse(value);

            field.didChange(num);
          },
        );
      },
    );
  }
}
