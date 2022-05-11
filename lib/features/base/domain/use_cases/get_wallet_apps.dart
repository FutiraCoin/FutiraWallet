import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/coin/coin_model.dart';
import 'package:flutter_tdd/features/base/data/models/dapp/app_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/explore_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';


class GetWalletApps extends UseCase<List<AppModel>, bool> {

  @override
  Future<List<AppModel>> call(bool params)async {
    var result =await getIt<BaseRepository>().getApps(params);
    return result.fold((l) => [], (r) => r);
  }


}