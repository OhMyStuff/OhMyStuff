import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/local/models/stock.dart';

part 'stocks.g.dart';

@riverpod
class Stocks extends _$Stocks {
  @override
  List<Stock> build() {
    final result = [
      // 主食库存
      Stock(
        id: 'd1000001-0001-4000-a000-000000000001',
        productId: 'b1000001-0001-4000-a000-000000000001',
        locationId: 'c1000001-0001-4000-a000-000000000008',
        quantity: 2.0,
        unitPrice: 29.90,
        purchaseDate: DateTime(2026, 5, 10),
        expirationDate: DateTime(2027, 5, 10),
        notes: '东北珍珠米5kg×2袋',
        priority: 1,
        createdAt: DateTime(2026, 5, 10),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000002',
        productId: 'b1000001-0001-4000-a000-000000000002',
        locationId: 'c1000001-0001-4000-a000-000000000008',
        quantity: 2.0,
        unitPrice: 45.80,
        purchaseDate: DateTime(2026, 4, 20),
        expirationDate: DateTime(2027, 10, 20),
        notes: '花生油1.8L×2桶备用',
        priority: 1,
        createdAt: DateTime(2026, 4, 20),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000003',
        productId: 'b1000001-0001-4000-a000-000000000003',
        locationId: 'c1000001-0001-4000-a000-000000000008',
        quantity: 2.0,
        unitPrice: 68.00,
        purchaseDate: DateTime(2026, 5, 5),
        expirationDate: DateTime(2027, 11, 5),
        notes: '明前龙井250g×2罐',
        priority: 2,
        createdAt: DateTime(2026, 5, 5),
      ),
      // 个护库存
      Stock(
        id: 'd1000001-0001-4000-a000-000000000004',
        productId: 'b1000001-0001-4000-a000-000000000004',
        locationId: 'c1000001-0001-4000-a000-000000000005',
        quantity: 1.0,
        unitPrice: 35.90,
        purchaseDate: DateTime(2026, 5, 1),
        expirationDate: DateTime(2028, 5, 1),
        notes: '新开一瓶，750ml装',
        priority: 1,
        createdAt: DateTime(2026, 5, 1),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000005',
        productId: 'b1000001-0001-4000-a000-000000000005',
        locationId: 'c1000001-0001-4000-a000-000000000005',
        quantity: 2.0,
        unitPrice: 28.50,
        purchaseDate: DateTime(2026, 4, 15),
        expirationDate: DateTime(2028, 4, 15),
        notes: '家庭装1L×2瓶，囤货',
        priority: 1,
        createdAt: DateTime(2026, 4, 15),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000006',
        productId: 'b1000001-0001-4000-a000-000000000006',
        locationId: 'c1000001-0001-4000-a000-000000000005',
        quantity: 3.0,
        unitPrice: 12.90,
        purchaseDate: DateTime(2026, 5, 15),
        expirationDate: DateTime(2027, 5, 15),
        notes: '120g×3支，够用一阵子',
        priority: 2,
        createdAt: DateTime(2026, 5, 15),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000007',
        productId: 'b1000001-0001-4000-a000-000000000007',
        locationId: 'c1000001-0001-4000-a000-000000000003',
        quantity: 2.0,
        unitPrice: 15.90,
        purchaseDate: DateTime(2026, 5, 10),
        expirationDate: DateTime(2027, 5, 10),
        notes: '主卧和包里各放一支',
        priority: 3,
        createdAt: DateTime(2026, 5, 10),
      ),
      // 清洁库存
      Stock(
        id: 'd1000001-0001-4000-a000-000000000008',
        productId: 'b1000001-0001-4000-a000-000000000008',
        locationId: 'c1000001-0001-4000-a000-000000000001',
        quantity: 1.0,
        unitPrice: 42.00,
        purchaseDate: DateTime(2026, 5, 8),
        expirationDate: DateTime(2028, 5, 8),
        notes: '薰衣草香型3kg，刚买的',
        priority: 1,
        createdAt: DateTime(2026, 5, 8),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000009',
        productId: 'b1000001-0001-4000-a000-000000000009',
        locationId: 'c1000001-0001-4000-a000-000000000001',
        quantity: 2.0,
        unitPrice: 8.50,
        purchaseDate: DateTime(2026, 5, 12),
        expirationDate: DateTime(2028, 5, 12),
        notes: '柠檬洗洁精500g×2瓶',
        priority: 1,
        createdAt: DateTime(2026, 5, 12),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000010',
        productId: 'b1000001-0001-4000-a000-000000000010',
        locationId: 'c1000001-0001-4000-a000-000000000001',
        quantity: 1.0,
        unitPrice: 6.90,
        purchaseDate: DateTime(2026, 5, 15),
        expirationDate: DateTime(2027, 5, 15),
        notes: '1L装，日常清洁消毒用',
        priority: 2,
        createdAt: DateTime(2026, 5, 15),
      ),
      Stock(
        id: 'd1000001-0001-4000-a000-000000000011',
        productId: 'b1000001-0001-4000-a000-000000000011',
        locationId: 'c1000001-0001-4000-a000-000000000009',
        quantity: 2.0,
        unitPrice: 26.90,
        purchaseDate: DateTime(2026, 5, 20),
        expirationDate: DateTime(2029, 5, 20),
        notes: '12包×2箱，够用两个月',
        priority: 3,
        createdAt: DateTime(2026, 5, 20),
      ),
    ];

    return result;
  }
}
