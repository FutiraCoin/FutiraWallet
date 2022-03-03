import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../errors/failures.dart';
import '../../../helpers/custom_toast.dart';

@lazySingleton
class HandleErrors {
  void catchError(
      {Response? response,
      required Function(dynamic) errorFunc}) {
    if (response == null) {
      log("failed response Check Server");
      CustomToast.showSimpleToast(msg: "Check Server");
    } else {
      log("failed response ${response.statusCode}");
      log("failed response ${response.data}");
      var data = response.data;
      try {
        if (data is String) data = json.decode(response.data);
        String message = "";
        if(response.statusCode!=422){
          message = errorFunc(data).toString();
        }
        switch (response.statusCode) {
          case 503:
          case 404:
            CustomToast.showSnakeBar(message);
            if (message == "Not Authorized") {
              _tokenExpired();
            }
            break;
          case 500:
            CustomToast.showSnakeBar(message.toString());
            break;
          case 502:
            CustomToast.showSnakeBar("check your request");
            break;
          case 422:
          case 400:
            if (data["errors"] != null) {
              List<dynamic> errors = data["errors"];
              log("response errors $errors");
              List<String> lst = List<String>.from(data["errors"].map((e) => e["msg"]));
              for (var e in lst) {
                CustomToast.showSnakeBar(e);
              }
            } else {
              CustomToast.showSnakeBar(message);
            }
            break;
          case 401:
          case 301:
          case 302:
            _tokenExpired();
            break;
        }
      } catch (e) {
        CustomToast.showSnakeBar(e.toString());
      }
    }
  }

  Either<ServerFailure, Response> statusError(
      Response response, Function(dynamic) errorFunc) {
    if (!response.data["success"]) {
      CustomToast.showSnakeBar(response.data["message"].toString());
      return Left(ServerFailure());
    }
    return Right(response);
  }

  void _tokenExpired() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("user");
    Phoenix.rebirth(getIt<BuildContext>());
  }
}
