import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'set_localization.dart';


String tr(String key) {
  return SetLocalization.of(getIt<GlobalContext>().context())!.getTranslateValue(key);
}
