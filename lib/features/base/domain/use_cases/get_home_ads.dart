import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/ads/ad_model.dart';

import '../../data/repositories/impl_base_repository.dart';

class GetHomeAds extends UseCase<List<AdModel>, bool> {

  @override
  Future<List<AdModel>> call(bool params)async {
    var result =await getIt<ImplBaseRepository>().getAds(params);
    return result.fold((l) => [], (r) => r);
  }


}