import 'package:flutter/material.dart';

class ShoppingTile extends StatelessWidget {
  const ShoppingTile({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
