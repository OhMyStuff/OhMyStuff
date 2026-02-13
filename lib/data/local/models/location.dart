import 'package:objectbox/objectbox.dart';

import 'stock.dart';

@Entity()
class Location {
  Location(
    this.name, {
    this.id = 0,
    this.description,
  });

  @Id()
  int id;

  @Unique()
  String name;

  @Backlink('location')
  final stocks = ToMany<Stock>();

  final parent = ToOne<Location>();

  @Backlink('parent')
  final children = ToMany<Location>();

  String? description;
}
