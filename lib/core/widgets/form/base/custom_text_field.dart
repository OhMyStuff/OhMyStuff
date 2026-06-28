import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.autofocus = false,
    this.readOnly = false,
    this.initialValue,
    this.label,
    this.keyboardType,
    this.inputFormatters,
    this.trailing,
    this.error,
    this.bottom,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.onTap,
  });

  final TextEditingController? controller;
  final bool autofocus;
  final bool readOnly;
  final String? initialValue;
  final String? label;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? trailing;
  final String? error;
  final Widget? bottom;
  final String? Function(String? value)? validator;
  final void Function(String value)? onChanged;
  final void Function(String? value)? onSaved;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Widget result = TextFormField(
      controller: controller,
      autofocus: autofocus,
      readOnly: readOnly,
      initialValue: initialValue,
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
      onTap: onTap,
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
