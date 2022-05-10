import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/domain/entites/token_balance_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';


class GetTokenBalance extends UseCase<String, TokenBalanceParams> {

  @override
  Future<String> call(TokenBalanceParams params)async {
    var result =await getIt<BaseRepository>().getTokenBalance(params);
    return result.fold((l) => "0", (r) => r);
  }


}