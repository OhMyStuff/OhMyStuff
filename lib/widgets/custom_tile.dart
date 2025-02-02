import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {super.key,
      required this.title,
      required this.subtitle,
      this.imagePath,
      this.onTap});

  final String title;
  final List<Widget> subtitle;
  final String? imagePath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          image: null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.image_rounded),
      ),
      title: Text(title),
      subtitle: Wrap(
        spacing: 6,
        runSpacing: 5,
        children: subtitle,
      ),
      onTap: onTap,
    );
  }
}
