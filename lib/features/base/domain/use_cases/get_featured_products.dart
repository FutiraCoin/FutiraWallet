import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/products/product_model.dart';

import '../../data/repositories/impl_base_repository.dart';

class GetFeaturedProducts extends UseCase<List<ProductModel>, bool> {

  @override
  Future<List<ProductModel>> call(bool params)async {
    var result =await getIt<ImplBaseRepository>().getFeaturedProducts(params);
    return result.fold((l) => [], (r) => r);
  }


}