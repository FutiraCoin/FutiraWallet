// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../http/dio_helper/actions/delete.dart' as _i3;
import '../http/dio_helper/actions/get.dart' as _i8;
import '../http/dio_helper/actions/patch.dart' as _i16;
import '../http/dio_helper/actions/post.dart' as _i17;
import '../http/dio_helper/actions/put.dart' as _i18;
import '../http/dio_helper/utils/dio_header.dart' as _i4;
import '../http/dio_helper/utils/dio_options.dart' as _i5;
import '../http/dio_helper/utils/handle_errors.dart' as _i10;
import '../http/dio_helper/utils/handle_json_response.dart' as _i11;
import '../http/dio_helper/utils/handle_request_body.dart' as _i12;
import '../http/generic_http/generic_http.dart' as _i7;
import '../network/network_info.dart' as _i14;
import 'firebase_analytics_helper.dart' as _i6;
import 'global_notification.dart' as _i9;
import 'loading_helper.dart' as _i13;
import 'new_version_helper.dart' as _i15;
import 'rate_app_helper.dart' as _i19;
import 'utilities.dart' as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Delete>(() => _i3.Delete());
  gh.lazySingleton<_i4.DioHeader>(() => _i4.DioHeader());
  gh.lazySingleton<_i5.DioOptions>(() => _i5.DioOptions());
  gh.lazySingleton<_i6.FirebaseAnalyticsHelper>(
      () => _i6.FirebaseAnalyticsHelper());
  gh.lazySingleton<_i7.GenericHttpImpl<dynamic>>(
      () => _i7.GenericHttpImpl<dynamic>());
  gh.lazySingleton<_i8.Get>(() => _i8.Get());
  gh.lazySingleton<_i9.GlobalNotification>(() => _i9.GlobalNotification());
  gh.lazySingleton<_i10.HandleErrors>(() => _i10.HandleErrors());
  gh.lazySingleton<_i11.HandleJsonResponse<dynamic>>(
      () => _i11.HandleJsonResponse<dynamic>());
  gh.lazySingleton<_i12.HandleRequestBody>(() => _i12.HandleRequestBody());
  gh.lazySingleton<_i13.LoadingHelper>(() => _i13.LoadingHelper());
  gh.lazySingleton<_i14.NetworkInfoImpl>(() => _i14.NetworkInfoImpl());
  gh.lazySingleton<_i15.NewVersionHelper>(() => _i15.NewVersionHelper());
  gh.lazySingleton<_i16.Patch>(() => _i16.Patch());
  gh.lazySingleton<_i17.Post>(() => _i17.Post());
  gh.lazySingleton<_i18.Put>(() => _i18.Put());
  gh.lazySingleton<_i19.RateAppHelper>(() => _i19.RateAppHelper());
  gh.lazySingleton<_i20.Utilities>(() => _i20.Utilities());
  return get;
}
