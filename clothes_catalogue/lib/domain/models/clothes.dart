/*

 CLOTHES MODEL

---------------------------
Properties
  - id
  - name
  - description
  - image
  - material
 */


import 'dart:typed_data';

class Clothes {
  final int id;
  final String name;
  final String description;
  final Uint8List image;
  final String material;

  const Clothes({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.material,
  });
}