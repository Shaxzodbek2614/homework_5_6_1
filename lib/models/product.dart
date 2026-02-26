import 'dart:ui';

class Product {
  final int id;
  final String image;
  final Color color;
  final String? name;
  int soni;
  final double price;

  Product({
    required this.id,
    required this.image,
    required this.color,
    this.name,
    required this.soni,
    required this.price
  });
}
