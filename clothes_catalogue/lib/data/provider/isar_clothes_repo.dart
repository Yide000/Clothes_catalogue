/*

ISAR CLOTHES REPOSITORY

---------------------------

 */

import 'package:clothes_catalogue/data/models/isar_clothes.dart';
import 'package:clothes_catalogue/domain/models/clothes.dart';
import 'package:clothes_catalogue/domain/provider/clothes_repo.dart';
import 'package:isar/isar.dart';

class IsarClothesRepo implements ClothesRepo {

  final Isar db;

  IsarClothesRepo(this.db);

  @override
  Future<List<Clothes>> getClothes() async {
    final clothes = await db.isarClothes.where().findAll();

    return clothes.map((clothes) => clothes.toDomain()).toList();
  }
  
  @override
  Future<void> addClothes(Clothes clothes) {
    final isarClothes = IsarClothes.fromDomain(clothes);

    return db.writeTxn(() => db.isarClothes.put(isarClothes));
  }
  
  @override
  Future<void> removeClothes(Clothes clothes) {
    final isarClothes = IsarClothes.fromDomain(clothes);

    return db.writeTxn(() => db.isarClothes.delete(isarClothes.id));
  }
  
  @override
  Future<void> updateClothes(Clothes clothes) {
    final isarClothes = IsarClothes.fromDomain(clothes);

    return db.writeTxn(() => db.isarClothes.put(isarClothes));
  }
}