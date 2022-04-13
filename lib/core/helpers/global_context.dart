
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GlobalContext {

  final navigationKey = GlobalKey<NavigatorState>();

  BuildContext context() => navigationKey.currentContext!;
}