/*

CLOTHES BOX MODEL

---------------------------
Properties
  - id
  - name
  - description
  - List if clothes

--------------------------
Methods
  - addClothes
  - removeClothes

 */

class ClothesBox {
  int id;
  String name;
  String description;
  List<String> listClothesId;

  ClothesBox({
    required this.id,
    required this.name,
    required this.description,
    required this.listClothesId,
  });


  void addClothes(String id) {
    listClothesId.add(id);
  }

  void removeClothes(String id) {
    listClothesId.remove(id);
  }

  bool hasClothes(String id) {
    return listClothesId.contains(id);
  }

}