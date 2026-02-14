import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ohmystuff/core/widgets/custom_text_field.dart';

class NumberTextField extends HookWidget {
  const NumberTextField({
    super.key,
    required this.label,
    this.defaultValue,
    this.min = 0,
    this.max,
    this.step = 1,
    required this.onSaved,
  });

  final String label;
  final double? defaultValue;
  final double min;
  final double? max;
  final double step;
  final void Function(String? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final validValue = useState<double?>(defaultValue);
    final errorText = useState<String?>(null);
    final formatters = [
      FilteringTextInputFormatter.allow(RegExp(r'[\d.\-]')),
    ];

    String? validate(String? value) {
      final num = double.tryParse(value ?? '');
      if (num == null) return '请输入有效数字';
      if (num < min) return '最小值为 $min';
      if (max != null && num > max!) return '最大值为 $max';

      return null;
    }

    void setValue(double? newValue) {
      final error = validate(newValue.toString());
      if (error != null) {
        errorText.value = error;
        return;
      }

      validValue.value = newValue;
      errorText.value = null;
    }

    void changeValue(double delta) {
      final current = validValue.value ?? min;
      double newValue =
          (current + delta * step).clamp(min, max ?? double.infinity);
      controller.text = newValue.toString();
      setValue(newValue);
    }

    useEffect(() {
      if (defaultValue != null) {
        controller.text = defaultValue.toString();
        setValue(defaultValue);
      }

      return null;
    }, []);

    return CustomTextField(
      controller: controller,
      label: label,
      keyboardType: TextInputType.number,
      inputFormatters: formatters,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton.filledTonal(
            icon: const Icon(Icons.keyboard_arrow_up_rounded),
            onPressed: () => changeValue(1),
          ),
          IconButton.filledTonal(
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            onPressed: () => changeValue(-1),
          ),
        ],
      ),
      error: errorText.value,
      validator: validate,
      onChanged: (value) {
        final num = double.tryParse(value);
        setValue(num);
      },
      onSaved: onSaved,
    );
  }
}
