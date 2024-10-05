/*

ISAR CLOTHES MODEL

---------------------------


 */

import 'dart:typed_data';

import 'package:clothes_catalogue/domain/models/clothes.dart';
import 'package:isar/isar.dart';

// to generate isar todo object run: dart run build_runner build
part 'isar_clothes.g.dart';

@collection
class IsarClothes {
  Id id = Isar.autoIncrement;
  late String name;
  late String description;
  late String image;
  late String material;

  /// Convert IsarClothes to Clothes model
  ///
  /// This function can be used to convert the IsarClothes model to the Clothes model.
  ///
  Clothes toDomain() {
    return Clothes(
      id: id,
      name: name,
      description: description,
      image: Uint8List.fromList(image.codeUnits),
      material: material,
    );
  }

  /// Convert Clothes model to IsarClothes model
  ///
  /// This function can be used to convert the Clothes model to the IsarClothes model.
  ///
  /// [clothes] the Clothes object to convert
  ///
  /// Returns the IsarClothes object
  ///
  static IsarClothes fromDomain(Clothes clothes) {
    return IsarClothes()
      ..id = clothes.id
      ..name = clothes.name
      ..description = clothes.description
      ..image = String.fromCharCodes(clothes.image)
      ..material = clothes.material;
  }
}