import 'package:flutter/material.dart';

class UndoTransaction extends StatelessWidget {
  const UndoTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Undo transaction?'),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Undo'),
        ),
      ],
    );
  }
}
