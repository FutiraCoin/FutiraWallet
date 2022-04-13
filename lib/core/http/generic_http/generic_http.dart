import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:injectable/injectable.dart';

import '../../network/network_info.dart';
import '../dio_helper/actions/delete.dart';
import '../dio_helper/actions/get.dart';
import '../dio_helper/actions/patch.dart';
import '../dio_helper/actions/post.dart';
import '../dio_helper/actions/put.dart';
import '../dio_helper/utils/handle_json_response.dart';
import '../models/http_request_model.dart';
import '../models/request_body_model.dart';

abstract class GenericHttp<T> {
  Future<Either<Failure, T>> call(HttpRequestModel model);
}

@lazySingleton
class GenericHttpImpl<T> extends GenericHttp<T> {

  @preResolve
  @override
  Future<Either<Failure, T>> call(HttpRequestModel model) async {
    RequestBodyModel params = RequestBodyModel(
      url: model.url,
      showLoader: model.showLoader ?? false,
      forceRefresh: model.refresh,
      errorFunc: model.errorFunc ?? (data) => data,
      body: model.requestBody ?? {},
    );
    final connected = await getIt<NetworkInfoImpl>().isConnected;
    if (!connected) {
      return Left(NetWorkFailure());
    }
    Either<ServerFailure, Response> response;
    switch (model.requestMethod) {
      case RequestMethod.get:
        response = await getIt<Get>()(params);
        break;
      case RequestMethod.post:
        response = await getIt<Post>()(params);
        break;
      case RequestMethod.delete:
        response = await getIt<Delete>()(params);
        break;
      case RequestMethod.put:
        response = await getIt<Put>()(params);
        break;
      case RequestMethod.patch:
        response = await getIt<Patch>()(params);
        break;
    }
    var customType = getIt<HandleJsonResponse<T>>()(
      response,
      model.responseType,
      model.toJsonFunc ?? (val) {},
      model.responseKey,
    );
    return customType;
  }


}
