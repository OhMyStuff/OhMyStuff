import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuickActionBar extends StatelessWidget {
  const QuickActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 6),
          TextButton.icon(
            onPressed: () => context.push('/purchase'),
            icon: Icon(Icons.shopping_cart_outlined),
            label: Text('Purchase'),
          ),
          TextButton.icon(
            onPressed: () => context.push('/consume'),
            icon: Icon(Icons.arrow_outward_rounded),
            label: Text('Consume'),
          ),
          TextButton.icon(
            onPressed: () => context.push('/transfer'),
            icon: Icon(Icons.swap_horiz_rounded),
            label: Text('Transfer'),
          ),
          TextButton.icon(
            onPressed: () => context.push('/inventory'),
            icon: Icon(Icons.inventory_rounded),
            label: Text('Inventory'),
          ),
        ],
      ),
    );
  }
}
