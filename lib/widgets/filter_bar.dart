import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(height: 0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 6),
              TextButton.icon(
                onPressed: () {},
                icon: Text('Status'),
                label: Icon(Icons.keyboard_arrow_up_rounded),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Text('Location'),
                label: Icon(Icons.keyboard_arrow_up_rounded),
              ),
              VerticalDivider(),
              TextButton.icon(
                onPressed: () {},
                icon: Text('Sort: Name'),
                label: Icon(Icons.keyboard_arrow_up_rounded),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Text('Fields'),
                label: Icon(Icons.keyboard_arrow_up_rounded),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
