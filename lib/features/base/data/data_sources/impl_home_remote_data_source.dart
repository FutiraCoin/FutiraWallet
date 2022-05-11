import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/base/data/models/coin/coin_model.dart';
import 'package:flutter_tdd/features/base/data/models/dapp/app_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/explore_params.dart';
import 'package:flutter_tdd/features/base/domain/entites/token_balance_params.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {

  @override
  Future<Either<Failure, List<CoinModel>>> getCoins(ExploreParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.marketCoins,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param.refresh,
      requestBody: param.toJson(),
      toJsonFunc: (json) =>
          List<CoinModel>.from(json.map((e) => CoinModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<CoinModel>>()(model);
  }

  @override
  Future<Either<Failure, String>> getTokenBalance(TokenBalanceParams param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.tokenBaseUrl,
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      refresh: param.refresh,
      requestBody: param.toJson(),
      responseKey: (json)=> json["result"]
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, List<AppModel>>> getApps(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.appsUrl,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      responseKey: (json)=> json["dapps"],
      toJsonFunc: (json) =>
      List<AppModel>.from(json.map((e) => AppModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<AppModel>>()(model);
  }


}
