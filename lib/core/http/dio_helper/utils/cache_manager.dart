import 'package:tf_dio_cache/dio_http_cache.dart';

import '../../generic_http/api_names.dart';

class CacheManager {
  DioCacheManager call() {
    return DioCacheManager(
      CacheConfig(
        baseUrl: ApiNames.baseUrl,
        defaultRequestMethod: "POST",
      ),
    );
  }
}
