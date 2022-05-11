// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/base/data/data_sources/add_custom_wallet_data_source.dart'
    as _i3;
import '../../features/base/data/data_sources/add_custom_wallet_impl.dart'
    as _i4;
import '../../features/base/data/data_sources/home_remote_data_source.dart'
    as _i17;
import '../../features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i18;
import '../../features/base/data/repositories/impl_base_repository.dart' as _i6;
import '../../features/base/domain/repositories/base_repository.dart' as _i5;
import '../http/dio_helper/actions/delete.dart' as _i7;
import '../http/dio_helper/actions/get.dart' as _i12;
import '../http/dio_helper/actions/patch.dart' as _i22;
import '../http/dio_helper/actions/post.dart' as _i23;
import '../http/dio_helper/actions/put.dart' as _i24;
import '../http/dio_helper/utils/dio_header.dart' as _i8;
import '../http/dio_helper/utils/dio_options.dart' as _i9;
import '../http/dio_helper/utils/handle_errors.dart' as _i15;
import '../http/dio_helper/utils/handle_request_body.dart' as _i16;
import '../http/generic_http/generic_http.dart' as _i11;
import '../network/network_info.dart' as _i20;
import 'firebase_analytics_helper.dart' as _i10;
import 'global_context.dart' as _i13;
import 'global_notification.dart' as _i14;
import 'loading_helper.dart' as _i19;
import 'new_version_helper.dart' as _i21;
import 'rate_app_helper.dart' as _i25;
import 'utilities.dart' as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddCustomWalletDataSource>(
      () => _i4.AddCustomWalletDataSourceImpl());
  gh.factory<_i5.BaseRepository>(() => _i6.ImplBaseRepository());
  gh.lazySingleton<_i7.Delete>(() => _i7.Delete());
  gh.lazySingleton<_i8.DioHeader>(() => _i8.DioHeader());
  gh.lazySingleton<_i9.DioOptions>(() => _i9.DioOptions());
  gh.lazySingleton<_i10.FirebaseAnalyticsHelper>(
      () => _i10.FirebaseAnalyticsHelper());
  gh.lazySingleton<_i11.GenericHttpImpl<dynamic>>(
      () => _i11.GenericHttpImpl<dynamic>());
  gh.lazySingleton<_i12.Get>(() => _i12.Get());
  gh.lazySingleton<_i13.GlobalContext>(() => _i13.GlobalContext());
  gh.lazySingleton<_i14.GlobalNotification>(() => _i14.GlobalNotification());
  gh.lazySingleton<_i15.HandleErrors>(() => _i15.HandleErrors());
  gh.lazySingleton<_i16.HandleRequestBody>(() => _i16.HandleRequestBody());
  gh.factory<_i17.HomeRemoteDataSource>(() => _i18.ImplHomeRemoteDataSource());
  gh.lazySingleton<_i19.LoadingHelper>(() => _i19.LoadingHelper());
  gh.lazySingleton<_i20.NetworkInfoImpl>(() => _i20.NetworkInfoImpl());
  gh.lazySingleton<_i21.NewVersionHelper>(() => _i21.NewVersionHelper());
  gh.lazySingleton<_i22.Patch>(() => _i22.Patch());
  gh.lazySingleton<_i23.Post>(() => _i23.Post());
  gh.lazySingleton<_i24.Put>(() => _i24.Put());
  gh.lazySingleton<_i25.RateAppHelper>(() => _i25.RateAppHelper());
  gh.lazySingleton<_i26.Utilities>(() => _i26.Utilities());
  return get;
}
