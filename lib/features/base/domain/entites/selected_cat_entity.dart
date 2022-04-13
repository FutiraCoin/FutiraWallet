import 'package:flutter_tdd/features/base/data/models/category/category_model.dart';

class SelectedCatEntity{
  int? selected;
  List<CategoryModel> cats;
  SelectedCatEntity({required this.cats, this.selected = 0});
}