import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/local/models/product.dart';

part 'products.g.dart';

@riverpod
class Products extends _$Products {
  @override
  List<Product> build() {
    final result = [
      // 食品类
      Product(
        id: 'b1000001-0001-4000-a000-000000000001',
        sku: 'GRA-RICE-001',
        name: '大米',
        unitId: 'a2222222-2222-4000-a000-222222222222',
        categoryId: 'cat-staple-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000008',
        defaultDueDays: 365,
        reorderPoint: 2.0,
        description: '东北珍珠米，5kg装',
        createdAt: DateTime(2026, 1, 1),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000002',
        sku: 'OIL-PEANUT-002',
        name: '花生油',
        unitId: 'a3333333-3333-4000-a000-333333333333',
        categoryId: 'cat-oil-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000001',
        defaultDueDays: 540,
        reorderPoint: 0.5,
        description: '压榨一级花生油，1.8L装',
        createdAt: DateTime(2026, 3, 1),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000003',
        sku: 'BEV-GREEN-003',
        name: '绿茶',
        unitId: 'a6666666-6666-4000-a000-666666666666',
        categoryId: 'cat-beverage-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000008',
        defaultDueDays: 540,
        reorderPoint: 1.0,
        description: '明前龙井，250g铁罐装',
        createdAt: DateTime(2026, 4, 10),
      ),
      // 日化个护
      Product(
        id: 'b1000001-0001-4000-a000-000000000004',
        sku: 'BATH-SHAMPOO-004',
        name: '洗发水',
        unitId: 'a5555555-5555-4000-a000-555555555555',
        categoryId: 'cat-personal-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000005',
        defaultDueDays: 730,
        reorderPoint: 500.0,
        description: '生姜去屑洗发露，750ml',
        createdAt: DateTime(2026, 2, 1),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000005',
        sku: 'BATH-SOAP-005',
        name: '沐浴露',
        unitId: 'a5555555-5555-4000-a000-555555555555',
        categoryId: 'cat-personal-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000005',
        defaultDueDays: 730,
        reorderPoint: 500.0,
        description: '牛奶润肤沐浴露，1L家庭装',
        createdAt: DateTime(2026, 2, 15),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000006',
        sku: 'ORAL-TOOTH-006',
        name: '牙膏',
        unitId: 'a8888888-8888-4000-a000-888888888888',
        categoryId: 'cat-personal-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000005',
        defaultDueDays: 365,
        reorderPoint: 120.0,
        description: '草本美白牙膏，120g装',
        createdAt: DateTime(2026, 5, 5),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000007',
        sku: 'SKIN-HAND-007',
        name: '护手霜',
        unitId: 'a8888888-8888-4000-a000-888888888888',
        categoryId: 'cat-personal-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000003',
        defaultDueDays: 365,
        reorderPoint: 50.0,
        description: '绵羊油护手霜，80g管装',
        createdAt: DateTime(2026, 4, 1),
      ),
      // 清洁用品
      Product(
        id: 'b1000001-0001-4000-a000-000000000008',
        sku: 'CLEAN-DETERGENT-008',
        name: '洗衣液',
        unitId: 'a3333333-3333-4000-a000-333333333333',
        categoryId: 'cat-clean-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000001',
        defaultDueDays: 730,
        reorderPoint: 1.0,
        description: '薰衣草香型洗衣液，3kg桶装',
        createdAt: DateTime(2026, 3, 5),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000009',
        sku: 'CLEAN-DISH-009',
        name: '洗洁精',
        unitId: 'a5555555-5555-4000-a000-555555555555',
        categoryId: 'cat-clean-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000001',
        defaultDueDays: 730,
        reorderPoint: 500.0,
        description: '柠檬去油洗洁精，500g瓶装',
        createdAt: DateTime(2026, 4, 15),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000010',
        sku: 'CLEAN-BLEACH-010',
        name: '84消毒液',
        unitId: 'a3333333-3333-4000-a000-333333333333',
        categoryId: 'cat-clean-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000001',
        defaultDueDays: 365,
        reorderPoint: 0.5,
        description: '含氯消毒液，1L瓶装',
        createdAt: DateTime(2026, 5, 1),
      ),
      Product(
        id: 'b1000001-0001-4000-a000-000000000011',
        sku: 'CLEAN-TISSUE-011',
        name: '抽纸',
        unitId: 'a7777777-7777-4000-a000-777777777777',
        categoryId: 'cat-clean-001',
        defaultLocationId: 'c1000001-0001-4000-a000-000000000009',
        defaultDueDays: 1095,
        reorderPoint: 6.0,
        description: '原生木浆抽纸，3层×100抽×12包',
        createdAt: DateTime(2026, 5, 10),
      ),
    ];

    return result;
  }
}
