

import '../../../../core/helpers/di.dart';
import '../../../../core/usecases/use_case.dart';
import '../../data/models/products/product_model.dart';
import '../../data/repositories/impl_base_repository.dart';

class GetMarketProducts extends UseCase<List<ProductModel>, bool> {

  @override
  Future<List<ProductModel>> call(bool params)async {
    var result =await getIt<ImplBaseRepository>().getMarketProducts(params);
    return result.fold((l) => [], (r) => r);
  }


}