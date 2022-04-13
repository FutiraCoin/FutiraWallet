// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i15;
import '../../features/base/data/repositories/impl_base_repository.dart'
    as _i14;
import '../http/dio_helper/actions/delete.dart' as _i3;
import '../http/dio_helper/actions/get.dart' as _i8;
import '../http/dio_helper/actions/patch.dart' as _i19;
import '../http/dio_helper/actions/post.dart' as _i20;
import '../http/dio_helper/actions/put.dart' as _i21;
import '../http/dio_helper/utils/dio_header.dart' as _i4;
import '../http/dio_helper/utils/dio_options.dart' as _i5;
import '../http/dio_helper/utils/handle_errors.dart' as _i11;
import '../http/dio_helper/utils/handle_json_response.dart' as _i12;
import '../http/dio_helper/utils/handle_request_body.dart' as _i13;
import '../http/generic_http/generic_http.dart' as _i7;
import '../network/network_info.dart' as _i17;
import 'firebase_analytics_helper.dart' as _i6;
import 'global_context.dart' as _i9;
import 'global_notification.dart' as _i10;
import 'loading_helper.dart' as _i16;
import 'new_version_helper.dart' as _i18;
import 'rate_app_helper.dart' as _i22;
import 'utilities.dart' as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i9.GlobalContext>(() => _i9.GlobalContext());
  gh.lazySingleton<_i10.GlobalNotification>(() => _i10.GlobalNotification());
  gh.lazySingleton<_i11.HandleErrors>(() => _i11.HandleErrors());
  gh.lazySingleton<_i12.HandleJsonResponse<dynamic>>(
      () => _i12.HandleJsonResponse<dynamic>());
  gh.lazySingleton<_i13.HandleRequestBody>(() => _i13.HandleRequestBody());
  gh.lazySingleton<_i14.ImplBaseRepository>(() => _i14.ImplBaseRepository());
  gh.lazySingleton<_i15.ImplHomeRemoteDataSource>(
      () => _i15.ImplHomeRemoteDataSource());
  gh.lazySingleton<_i16.LoadingHelper>(() => _i16.LoadingHelper());
  gh.lazySingleton<_i17.NetworkInfoImpl>(() => _i17.NetworkInfoImpl());
  gh.lazySingleton<_i18.NewVersionHelper>(() => _i18.NewVersionHelper());
  gh.lazySingleton<_i19.Patch>(() => _i19.Patch());
  gh.lazySingleton<_i20.Post>(() => _i20.Post());
  gh.lazySingleton<_i21.Put>(() => _i21.Put());
  gh.lazySingleton<_i22.RateAppHelper>(() => _i22.RateAppHelper());
  gh.lazySingleton<_i23.Utilities>(() => _i23.Utilities());
  return get;
}
