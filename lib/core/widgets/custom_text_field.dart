import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.label,
    this.defaultValue,
    this.keyboardType,
    this.inputFormatters,
    this.trailing,
    this.error,
    this.bottom,
    this.validator,
    this.onChanged,
    this.onSaved,
  });

  final TextEditingController? controller;
  final String? label;
  final String? defaultValue;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? trailing;
  final String? error;
  final Widget? bottom;
  final String? Function(String? value)? validator;
  final void Function(String value)? onChanged;
  final void Function(String? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    Widget result = TextFormField(
      controller: controller,
      initialValue: defaultValue,
      decoration: InputDecoration(
        labelText: label,
        errorText: error,
        filled: true,
      ),
      validator: validator,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      onSaved: onSaved,
    );

    if (trailing != null) {
      result = Row(
        children: [
          Expanded(child: result),
          SizedBox(width: 8),
          trailing!,
          SizedBox(width: 8),
        ],
      );
    }

    if (bottom != null) {
      result = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          result,
          SizedBox(height: 4),
          bottom!,
        ],
      );
    }

    result = Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: result,
    );

    return result;
  }
}
