import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:injectable/injectable.dart';

import '../../../errors/failures.dart';
import '../../../helpers/loading_helper.dart';
import '../../models/request_body_model.dart';
import '../source/dio_helper.dart';
import '../utils/dio_header.dart';
import '../utils/handle_errors.dart';

@lazySingleton
class Delete extends DioHelper {

  @override
  Future<Either<ServerFailure,Response>> call(
      RequestBodyModel params) async {
    if (params.showLoader) getIt<LoadingHelper>().showLoadingDialog();
    try {
      var response = await dio.delete(params.url, data: params.body);
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      return getIt<HandleErrors>().statusError(response,params.errorFunc);
    } on DioError catch (e) {
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      getIt<HandleErrors>().catchError(errorFunc: params.errorFunc, response: e.response);
      return Left(ServerFailure());
    }
  }
}
