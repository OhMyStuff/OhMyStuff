import 'package:flutter/material.dart';

import '../widgets/quick_action_bar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('OhMyStuff'),
          ),
        ],
      ),
      bottomNavigationBar: QuickActionBar(),
    );
  }
}
