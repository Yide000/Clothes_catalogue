/*

CLOTHES REPOSITORY

Qui definisco quello che i vestiti possono fare
----------------------------------------------------

 */

import 'package:clothes_catalogue/domain/models/clothes.dart';
 
abstract class ClothesRepo {

  /// Ritorna la lista di tutti i vestiti presenti
  Future<List<Clothes>> getClothes();

  /// Aggiunge un vestito
  Future<void> addClothes(Clothes clothes);

  /// Rimuove un vestito
  Future<void> removeClothes(Clothes clothes);

  /// Aggiorna un vestito
  Future<void> updateClothes(Clothes clothes);
  
}


