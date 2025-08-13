import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.leading,
    this.label,
    this.trailing,
  });

  final Widget? leading;
  final String? label;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    Widget result = TextField(
      decoration: InputDecoration(
        icon: leading,
        labelText: label,
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
