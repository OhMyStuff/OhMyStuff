import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('🚧'),
            TextButton(
              onPressed: () => context.go("/shopping"),
              child: Text('context.go("/shopping")'),
            ),
          ],
        ),
      ),
    );
  }
}
