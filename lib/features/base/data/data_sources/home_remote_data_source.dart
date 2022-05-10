import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/base/data/models/coin/coin_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/explore_params.dart';


abstract class HomeRemoteDataSource {

  Future<Either<Failure,List<CoinModel>>> getCoins(ExploreParams param);

}