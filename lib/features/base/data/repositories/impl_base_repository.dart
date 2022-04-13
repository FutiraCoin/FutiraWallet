import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/base/data/data_sources/impl_home_remote_data_source.dart';
import 'package:flutter_tdd/features/base/data/models/ads/ad_model.dart';
import 'package:flutter_tdd/features/base/data/models/agent/agent_model.dart';
import 'package:flutter_tdd/features/base/data/models/cat_products/cat_products_model.dart';
import 'package:flutter_tdd/features/base/data/models/category/category_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/category_items_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/products/product_model.dart';

@lazySingleton
class ImplBaseRepository extends BaseRepository {

  @override
  Future<Either<Failure, List<AdModel>>> getAds(bool param)async {
    return getIt<ImplHomeRemoteDataSource>().getAds(param);
  }

  @override
  Future<Either<Failure, List<AgentModel>>> getAgents(bool param) {
    return getIt<ImplHomeRemoteDataSource>().getAgents(param);
  }

  @override
  Future<Either<Failure, List<CatProductsModel>>> getCatProducts(CategoryItemsParams params) {
    return getIt<ImplHomeRemoteDataSource>().getCatProducts(params);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getMarketProducts(bool param) {
    return getIt<ImplHomeRemoteDataSource>().getMarketProducts(param);
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories(bool param) {
    return getIt<ImplHomeRemoteDataSource>().getCategories(param);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getFeaturedProducts(bool param) {
    return getIt<ImplHomeRemoteDataSource>().getFeaturedProducts(param);
  }


}