class SelectedCategoryEntity {
  List<CategoryEntity> cats;
  int selectedCat;
  int selectedSub;

  SelectedCategoryEntity({
    required this.cats,
    required this.selectedCat,
    required this.selectedSub,
  });
}

class CategoryEntity {
  int id;
  String name;
  bool opened;
  List<CategoryEntity> subCats;

  CategoryEntity(
      {required this.id,
      required this.name,
      required this.subCats,
      this.opened = true});
}
