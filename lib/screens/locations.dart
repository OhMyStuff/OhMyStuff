import 'package:flutter/material.dart';

import '../widgets/location_tile.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('Locations'),
          ),
          SliverList.list(
            children: [
              LocationTile(
                title: 'Living Room',
              ),
              LocationTile(
                title: 'Bedroom',
              ),
              LocationTile(
                title: 'Kitchen',
              ),
              LocationTile(
                title: 'Balcony',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
