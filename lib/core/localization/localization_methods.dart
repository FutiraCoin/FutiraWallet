import 'package:flutter/material.dart';
import 'set_localization.dart';


String tr(BuildContext context,String key) {
  return SetLocalization.of(context)!.getTranslateValue(key);
}
