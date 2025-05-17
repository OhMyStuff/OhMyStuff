import 'package:flutter/material.dart';

import '../widgets/quick_action_bar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OhMyStuff'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(child: Text('(⁠・⁠o⁠・⁠)')),
          ),
          Divider(height: 0),
          QuickActionBar(),
        ],
      ),
    );
  }
}
