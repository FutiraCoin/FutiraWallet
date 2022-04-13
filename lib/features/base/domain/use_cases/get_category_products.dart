import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/cat_products/cat_products_model.dart';
import 'package:flutter_tdd/features/base/data/repositories/impl_base_repository.dart';
import 'package:flutter_tdd/features/base/domain/entites/category_items_params.dart';


class GetCategoryProducts extends UseCase<List<CatProductsModel>, CategoryItemsParams> {

  @override
  Future<List<CatProductsModel>> call(CategoryItemsParams params)async {
    var result =await getIt<ImplBaseRepository>().getCatProducts(params);
    return result.fold((l) => [], (r) => r);
  }


}