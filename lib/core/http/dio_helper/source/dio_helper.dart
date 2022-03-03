import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../errors/failures.dart';
import '../../generic_http/api_names.dart';
import '../../models/request_body_model.dart';
import '../utils/cache_manager.dart';

abstract class DioHelper {
  Dio get dio =>
      Dio(
        BaseOptions(
            baseUrl: ApiNames.baseUrl,
            contentType: "application/x-www-form-urlencoded; charset=utf-8"),
      )
        ..interceptors.add(CacheManager()().interceptor)
        ..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          responseHeader: true,
          logPrint: (data) => log(data.toString(),
          )));

  Future<Either<ServerFailure, Response>> call(RequestBodyModel params);
}
