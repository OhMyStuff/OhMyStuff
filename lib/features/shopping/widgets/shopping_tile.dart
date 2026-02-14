import 'package:flutter/material.dart';

class ShoppingTile extends StatelessWidget {
  const ShoppingTile({
    super.key,
    required this.title,
    this.isChecked = false,
    this.onTap,
  });

  final String title;
  final bool isChecked;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      onTap: onTap,
    );
  }
}
