import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.leading,
    this.label,
    this.trailing,
    this.suffix,
    this.bottom,
  });

  final Widget? leading;
  final String? label;
  final Widget? trailing;
  final Widget? suffix;
  final Widget? bottom;

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
