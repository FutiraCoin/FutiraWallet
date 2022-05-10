import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_tdd/features/base/data/models/coin/coin_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/explore_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository {

  @override
  Future<Either<Failure, List<CoinModel>>> getCoins(ExploreParams param)async {
    return getIt<HomeRemoteDataSource>().getCoins(param);
  }


}