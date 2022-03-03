// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../http/dio_helper/actions/delete.dart' as _i3;
import '../http/dio_helper/actions/get.dart' as _i7;
import '../http/dio_helper/actions/patch.dart' as _i14;
import '../http/dio_helper/actions/post.dart' as _i15;
import '../http/dio_helper/actions/put.dart' as _i16;
import '../http/dio_helper/utils/dio_header.dart' as _i4;
import '../http/dio_helper/utils/dio_options.dart' as _i5;
import '../http/dio_helper/utils/handle_errors.dart' as _i9;
import '../http/dio_helper/utils/handle_json_response.dart' as _i10;
import '../http/dio_helper/utils/handle_request_body.dart' as _i11;
import '../http/generic_http/generic_http.dart' as _i6;
import '../network/network_info.dart' as _i13;
import 'global_notification.dart' as _i8;
import 'loading_helper.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Delete>(() => _i3.Delete());
  gh.lazySingleton<_i4.DioHeader>(() => _i4.DioHeader());
  gh.lazySingleton<_i5.DioOptions>(() => _i5.DioOptions());
  gh.lazySingleton<_i6.GenericHttpImpl<dynamic>>(
      () => _i6.GenericHttpImpl<dynamic>());
  gh.lazySingleton<_i7.Get>(() => _i7.Get());
  gh.lazySingleton<_i8.GlobalNotification>(() => _i8.GlobalNotification());
  gh.lazySingleton<_i9.HandleErrors>(() => _i9.HandleErrors());
  gh.lazySingleton<_i10.HandleJsonResponse<dynamic>>(
      () => _i10.HandleJsonResponse<dynamic>());
  gh.lazySingleton<_i11.HandleRequestBody>(() => _i11.HandleRequestBody());
  gh.lazySingleton<_i12.LoadingHelper>(() => _i12.LoadingHelper());
  gh.lazySingleton<_i13.NetworkInfoImpl>(() => _i13.NetworkInfoImpl());
  gh.lazySingleton<_i14.Patch>(() => _i14.Patch());
  gh.lazySingleton<_i15.Post>(() => _i15.Post());
  gh.lazySingleton<_i16.Put>(() => _i16.Put());
  return get;
}
