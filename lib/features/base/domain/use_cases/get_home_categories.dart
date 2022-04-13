import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/category/category_model.dart';

import '../../data/repositories/impl_base_repository.dart';

class GetHomeCategories extends UseCase<List<CategoryModel>, bool> {

  @override
  Future<List<CategoryModel>> call(bool params)async {
    var result =await getIt<ImplBaseRepository>().getCategories(params);
    return result.fold((l) => [], (r) => r);
  }


}