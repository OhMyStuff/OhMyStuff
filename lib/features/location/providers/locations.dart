import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/local/models/location.dart';

part 'locations.g.dart';

@riverpod
class Locations extends _$Locations {
  @override
  List<Location> build() {
    final result = [
      Location(
        id: 'c1000001-0001-4000-a000-000000000001',
        name: '厨房',
        description: '一楼厨房，主要烹饪区域',
        priority: 1,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000002',
        name: '客厅',
        description: '家庭公共活动区域',
        priority: 5,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000003',
        name: '主卧',
        description: '主卧室',
        priority: 6,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000004',
        name: '次卧',
        description: '客房/儿童房',
        priority: 7,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000005',
        name: '卫生间',
        description: '一楼卫生间',
        priority: 8,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000006',
        name: '阳台',
        description: '南向阳台，存放耐储存物品',
        priority: 9,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000007',
        name: '冰箱',
        parentLocationId: 'c1000001-0001-4000-a000-000000000001',
        description: '双开门冰箱，冷藏食材',
        priority: 2,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000008',
        name: '橱柜',
        parentLocationId: 'c1000001-0001-4000-a000-000000000001',
        description: '吊柜与地柜，存放干货粮油',
        priority: 3,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000009',
        name: '储物间',
        description: '杂物间，存放囤货',
        priority: 10,
        createdAt: DateTime(2026, 1, 1),
      ),
      Location(
        id: 'c1000001-0001-4000-a000-000000000010',
        name: '车库',
        description: '车库储物架，存放工具和备用物资',
        priority: 11,
        createdAt: DateTime(2026, 2, 1),
      ),
    ];

    return result;
  }

  List<Location> search(String query) {
    if (query.isEmpty) return state;
    final lowerQuery = query.toLowerCase();

    return state.where((location) {
      return location.name.toLowerCase().contains(lowerQuery) ||
          (location.description?.toLowerCase().contains(lowerQuery) ?? false);
    }).toList();
  }
}
