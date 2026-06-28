import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/custom_tile.dart';
import '../../location/providers/locations.dart';
import '../../../core/widgets/search_header.dart';

class LocationLookupPage extends HookConsumerWidget {
  const LocationLookupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useState('');
    final locations = ref.read(locationsProvider.notifier).search(query.value);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('选择位置'),
          ),
          SliverPersistentHeader(
            delegate: SearchHeaderDelegate(
              label: '搜索位置',
              onChanged: (value) => query.value = value,
            ),
            pinned: true,
          ),
          SliverList.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final location = locations[index];

              return CustomTile(
                title: location.name,
                subtitle: [
                  if (location.description != null) Text(location.description!),
                  Text(location.id),
                ],
                onTap: () => context.pop(
                  (
                    id: location.id,
                    name: location.name,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.nfc_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.auto_awesome_outlined),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
