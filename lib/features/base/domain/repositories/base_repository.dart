import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/base/domain/entites/category_items_params.dart';

import '../../data/models/ads/ad_model.dart';
import '../../data/models/agent/agent_model.dart';
import '../../data/models/cat_products/cat_products_model.dart';
import '../../data/models/category/category_model.dart';
import '../../data/models/products/product_model.dart';

abstract class BaseRepository {
  Future<Either<Failure,List<AdModel>>> getAds(bool param);
  Future<Either<Failure,List<AgentModel>>> getAgents(bool param);
  Future<Either<Failure,List<CatProductsModel>>> getCatProducts(CategoryItemsParams params);
  Future<Either<Failure,List<ProductModel>>> getFeaturedProducts(bool param);
  Future<Either<Failure,List<ProductModel>>> getMarketProducts(bool param);
  Future<Either<Failure,List<CategoryModel>>> getCategories(bool param);

}