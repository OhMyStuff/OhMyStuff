import 'package:flutter/material.dart';

class JournalTile extends StatelessWidget {
  const JournalTile(
      {super.key, required this.title, required this.subtitle, this.onTap});

  final String title;
  final List<Widget> subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: subtitle,
      ),
      onTap: onTap,
    );
  }
}
