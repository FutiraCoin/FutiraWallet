import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/base/data/models/ads/ad_model.dart';
import 'package:flutter_tdd/features/base/data/models/agent/agent_model.dart';
import 'package:flutter_tdd/features/base/data/models/cat_products/cat_products_model.dart';
import 'package:flutter_tdd/features/base/data/models/category/category_model.dart';
import 'package:flutter_tdd/features/base/data/models/products/product_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/category_items_params.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@lazySingleton
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {
  @override
  Future<Either<Failure, List<AdModel>>> getAds(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.ADS,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      toJsonFunc: (json) =>
          List<AdModel>.from(json.map((e) => AdModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<AdModel>>()(model);
  }

  @override
  Future<Either<Failure, List<AgentModel>>> getAgents(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.AGENTS_FEATURED,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      toJsonFunc: (json) =>
          List<AgentModel>.from(json.map((e) => AgentModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<AgentModel>>()(model);
  }

  @override
  Future<Either<Failure, List<CatProductsModel>>> getCatProducts(
      CategoryItemsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.CATEGORIES_ITEMS_HOME,
      requestMethod: RequestMethod.get,
      requestBody: params.toJson(),
      responseType: ResType.list,
      toJsonFunc: (json) => List<CatProductsModel>.from(
          json.map((e) => CatProductsModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<CatProductsModel>>()(model);
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.CATEGORIES_HOME,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      toJsonFunc: (json) =>
          List<CategoryModel>.from(json.map((e) => CategoryModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<CategoryModel>>()(model);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getFeaturedProducts(
      bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.FEATURED_ITEMS,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      toJsonFunc: (json) =>
          List<ProductModel>.from(json.map((e) => ProductModel.fromJson(e))),
    );
    return await GenericHttpImpl<List<ProductModel>>()(model);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getMarketProducts(
      bool param) async {
    List<ProductModel> data = [];
    await Future.delayed(Duration(seconds: 3));
    return Right(data);
  }
}
