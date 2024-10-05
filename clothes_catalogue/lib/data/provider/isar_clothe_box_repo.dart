/*


ISAR CLOTHES BOX REPOSITORY

 */



import 'package:clothes_catalogue/data/models/isar_clothes_box.dart';
import 'package:clothes_catalogue/domain/models/clothes_box.dart';
import 'package:clothes_catalogue/domain/provider/clothes_box_repo.dart';
import 'package:isar/isar.dart';

class IsarClothesBoxRepo implements ClothesBoxRepo {
  final Isar db;
  IsarClothesBoxRepo(this.db);

  @override
  Future<void> addBox(ClothesBox clothesBox){
    final boxs = IsarClothesBox.fromDomain(clothesBox);
    return db.writeTxn(() => db.isarClothesBoxs.put(boxs));
  }

  @override
  Future<List<ClothesBox>> getBoxes() async{
    final clothesBox = await db.isarClothesBoxs.where().findAll();
    return clothesBox.map((clothesBox) => clothesBox.toDomain()).toList();
  }

  @override
  Future<void> removeBox(ClothesBox clothesBox) {
    final boxs = IsarClothesBox.fromDomain(clothesBox);
    return db.writeTxn(() => db.isarClothesBoxs.delete(boxs.id));
  }

  @override
  Future<void> updateBox(ClothesBox clothesBox) {
    final boxs = IsarClothesBox.fromDomain(clothesBox);
    return db.writeTxn(() => db.isarClothesBoxs.put(boxs));
  }

}