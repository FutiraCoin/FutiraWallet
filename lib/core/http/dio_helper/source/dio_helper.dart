import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/http/dio_helper/utils/auth_interceptor.dart';

import '../../../errors/failures.dart';
import '../../../helpers/di.dart';
import '../../generic_http/api_names.dart';
import '../../models/request_body_model.dart';
import '../utils/cache_manager.dart';
import '../utils/dio_header.dart';

abstract class DioHelper {
  Dio get dio =>
      Dio(
        BaseOptions(
            baseUrl: ApiNames.baseUrl,
          headers: getIt<DioHeader>().call(),
        ),
      )
        ..interceptors.add(CacheManager()().interceptor)
        // ..interceptors.add(AuthInterceptor())
        ..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          responseHeader: true,
          logPrint: (data) => log(data.toString(),
          )));

  Future<Either<ServerFailure, Response>> call(RequestBodyModel params);
}
