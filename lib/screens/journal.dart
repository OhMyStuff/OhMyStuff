import 'package:flutter/material.dart';

import '../widgets/journal_tile.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        JournalTile(
          title: 'Cookies',
          subtitle: [
            Text('+1 Pack'),
            Text('2025/02/01 12:00'),
          ],
        ),
        JournalTile(
          title: 'Chocolate',
          subtitle: [
            Text('+1 Pack'),
            Text('2025/02/01 12:00'),
          ],
        ),
        JournalTile(
          title: 'Eggs',
          subtitle: [
            Text('-5 Pieces'),
            Text('2025/02/01 10:05'),
          ],
        ),
        JournalTile(
          title: 'Eggs',
          subtitle: [
            Text('+10 Pieces'),
            Text('2025/02/01 09:45'),
          ],
        ),
        JournalTile(
          title: 'Cookies',
          subtitle: [
            Text('-2 Packs'),
            Text('2025/02/01 09:00'),
          ],
        ),
        JournalTile(
          title: 'Cheese',
          subtitle: [
            Text('-1 Pack'),
            Text('2025/02/01 08:30'),
          ],
        ),
      ],
    );
  }
}
