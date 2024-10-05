/*

ISAR CLOTHES BOX MODEL


---------------------------


 */

import 'package:clothes_catalogue/domain/models/clothes_box.dart';
import 'package:isar/isar.dart';

// to generate isar todo object run: dart run build_runner build
part 'isar_clothes_box.g.dart';

@collection
class IsarClothesBox {
  Id id = Isar.autoIncrement;
  late String name;
  late String description;
  late List<String> listClothesId;


  /// Convert IsarClothesBox model to ClothesBox model
  ///
  /// This function can be used to convert the IsarClothesBox model to the ClothesBox model.
  ///
  /// Returns the ClothesBox object
  ClothesBox toDomain() {
    return ClothesBox(
      id: id,
      name: name,
      description: description,
      listClothesId: listClothesId,
    );
  }
  /// Convert ClothesBox model to IsarClothesBox model
  ///
  /// This function can be used to convert the ClothesBox model to the IsarClothesBox model.
  ///
  /// [clothesBox] the ClothesBox object to convert
  ///
  /// Returns the IsarClothesBox object
  static IsarClothesBox fromDomain(ClothesBox clothesBox) {
    return IsarClothesBox()
      ..id = clothesBox.id
      ..name = clothesBox.name
      ..description = clothesBox.description
      ..listClothesId = clothesBox.listClothesId;
  }
}