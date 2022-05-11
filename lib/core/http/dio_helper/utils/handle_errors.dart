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
      if (data is String) data = json.decode(response.data);
      String message = "";
      switch (response.statusCode) {
        case 503:
        case 404:
          CustomToast.showSnakeBar(message);
          if (message == "Not Authorized") {
            _tokenExpired();
          }
          break;
        // case 500:
        //   CustomToast.showSnakeBar(message.toString());
          break;
        case 502:
          CustomToast.showSnakeBar("check your request");
          break;
        case 422:
        case 400:
        case 500:
        if (data["Errors"] != null) {
         var errors = List<String>.from(data["Errors"].map((e) => e)).join('\n');
          CustomToast.showSnakeBar(errors);
        } else {
            CustomToast.showSnakeBar(message);
          }
          break;
        case 401:
          CustomToast.showSnakeBar(data["title"].toString());
          break;
        case 301:
        case 302:
          _tokenExpired();
          break;
      }
      // try {
      //
      // } catch (e) {
      //   CustomToast.showSnakeBar(e.toString());
      // }
    }
  }

  Either<ServerFailure, Response> statusError(
      Response response, Function(dynamic) errorFunc) {
    if (response.statusCode!=200 && response.statusCode!=201&& response.statusCode!=206) {
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
