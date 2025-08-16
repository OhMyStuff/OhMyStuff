import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.leading,
    this.label,
    this.trailing,
    this.suffix,
  });

  final Widget? leading;
  final String? label;
  final Widget? trailing;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    Widget result = TextField(
      decoration: InputDecoration(
        icon: leading,
        labelText: label,
        suffixIcon: suffix,
        filled: true,
      ),
    );

    if (trailing != null) {
      result = Row(
        children: [
          Expanded(child: result),
          SizedBox(width: 8),
          trailing!,
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
