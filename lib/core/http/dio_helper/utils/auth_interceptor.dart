import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/models/request_body_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {

  final pref = getIt<SharedPreferences>();

  String? accessToken;

  bool isInvalidSession = false;

  // AuthInterceptor(this._dio, this.restClient);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onError(
      DioError err,
      ErrorInterceptorHandler handler,
      ) async {
    if (err.response?.statusCode == 403 ||
        err.response?.statusCode == 401) {
      final result = await refreshToken();
      if (result) {
        final result = await _retry(err, handler);
        if (result)
          return;
        else {
          if (err.requestOptions.headers["requiresToken"] ==
              true &&
              isInvalidSession) getIt<LoadingHelper>().showInvalidSession();
          isInvalidSession = true;
        }
      } else {
        if (err.requestOptions.headers["requiresToken"] ==
            true &&
            isInvalidSession) getIt<LoadingHelper>().showInvalidSession();
        isInvalidSession = true;
      }
    }
    handler.next(err);

    return;
  }


  Future<bool> refreshToken() async {
    try {

      final refreshToken = pref.getString("refreshToken");
      final resistanceAccessToken = pref.getString("token");

      RequestBodyModel params = RequestBodyModel(
        url: ApiNames.ITEMS,
        body: {
          'accessToken': resistanceAccessToken,
          'refreshToken': refreshToken,
        },
        errorFunc: (data) => data,
      );
      final result = await getIt<Post>()(params);

      if (result.isRight()) {
        var response = result.fold((l) => null, (r) => r);
        var data = response!.data;
        var accessToken = data['result'];
        if (accessToken != null && (accessToken?.isNotEmpty ?? false)) {
          pref.setString("token",accessToken);
          pref.setString("refreshToken",refreshToken??"");

          return Future.value(true);
        }
      }
      return Future.value(false);
    } catch (error, s) {
      print('refreshToken in AuthInterceptor error $error | s $s');
      return Future.value(false);
    }
  }

  Future<bool> _retry(
      DioError dioError,
      ErrorInterceptorHandler handler,
      ) async {
    try {
      final dio = Dio();
      final resistanceAccessToken = pref.getString("token");

      dioError.requestOptions.headers["Authorization"] =
          "Bearer " + resistanceAccessToken!;

      //create request with new access token
      final opts = Options(
        method: dioError.requestOptions.method,
        headers: dioError.requestOptions.headers,
      );
      print('opts.headers ${opts.headers}');

      final cloneReq = await dio.request(dioError.requestOptions.path,
          options: opts,
          data: dioError.requestOptions.data,
          queryParameters: dioError.requestOptions.queryParameters);

      handler.resolve(cloneReq);
      return Future.value(true);
    } catch (e) {
      print(
          'error happened in _retry and then we will logout from the application');
      return Future.value(false);
    }
  }
}
