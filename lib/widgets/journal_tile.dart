import 'package:flutter/material.dart';

import 'undo_transaction.dart';

class JournalTile extends StatelessWidget {
  const JournalTile({super.key, required this.title, required this.subtitle});

  final String title;
  final List<Widget> subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: subtitle,
      ),
      onLongPress: () => showDialog(
        context: context,
        builder: (_) => UndoTransaction(),
      ),
    );
  }
}
