import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:new_version/new_version.dart';

@lazySingleton
class NewVersionHelper {

  final newVersion = NewVersion();


  void showDialog(BuildContext context){
    newVersion.showAlertIfNecessary(context: context);
  }

}