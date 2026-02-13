import 'package:objectbox/objectbox.dart';

import 'location.dart';
import 'product.dart';

@Entity()
class Stock {
  Stock({
    this.id = 0,
    this.quantity = 0.0,
    this.expirationDate,
    this.notes,
  });

  @Id()
  int id;

  final product = ToOne<Product>();

  final location = ToOne<Location>();

  double quantity;

  @Property(type: PropertyType.dateUtc)
  DateTime? expirationDate;

  String? notes;
}
