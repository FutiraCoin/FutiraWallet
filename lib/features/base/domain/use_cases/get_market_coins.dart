import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/coin/coin_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/explore_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';



class GetMarketCoins extends UseCase<List<CoinModel>, ExploreParams> {

  @override
  Future<List<CoinModel>> call(ExploreParams params)async {
    var result =await getIt<BaseRepository>().getCoins(params);
    return result.fold((l) => [], (r) => r);
  }


}