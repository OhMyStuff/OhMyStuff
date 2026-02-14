import 'package:objectbox/objectbox.dart';

import 'location.dart';
import 'stock.dart';

@Entity()
class Product {
  Product(
    this.name, {
    this.id = 0,
    required this.sku,
    this.defaultShelfLifeDays = 0,
    this.safetyStock = 0.0,
    this.description,
    this.isActive = true,
  });

  @Id()
  int id;

  @Unique()
  String sku;

  @Unique()
  String name;

  @Backlink('product')
  final stocks = ToMany<Stock>();

  final defaultLocation = ToOne<Location>();

  int defaultShelfLifeDays;

  double safetyStock;

  String? description;

  bool isActive;
}
