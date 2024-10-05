/*

CLOTHES_BOX REPOSITORY

Qui definisco quello che le box possono fare
----------------------------------------------------
 */

import 'package:clothes_catalogue/domain/models/clothes_box.dart';

abstract class ClothesBoxRepo {

  /// Retrieves all the boxes from the repository
  Future<List<ClothesBox>> getBoxes();

  /// Adds a new box to the repository
  Future<void> addBox(ClothesBox clothesBox);

  /// Removes a box from the repository
  Future<void> removeBox(ClothesBox clothesBox);

  /// Updates a box in the repository
  Future<void> updateBox(ClothesBox clothesBox);

}
