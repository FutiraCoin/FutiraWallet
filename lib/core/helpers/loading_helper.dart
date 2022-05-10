import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:injectable/injectable.dart';

import 'di.dart';
import 'global_context.dart';

@lazySingleton
class LoadingHelper {
  void showLoadingDialog() {
    EasyLoading.show(
        maskType: EasyLoadingMaskType.black,
        dismissOnTap: false,
        indicator: SpinKitCubeGrid(
          size: 40.0,
          itemBuilder: (context, index) {
            return Container(
              height: 10,
              width: 10,
              margin: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                color: MyColors.primary,
                shape: BoxShape.circle,
              ),
            );
          },
        ),
        status: "loading");
  }

  showInvalidSession() {
    BuildContext context = getIt<GlobalContext>().context();
    showModal(
      context: context,
      builder: (con){
        return AlertDialog();
      },
    );
  }

  showLoadingView({Color? color}) {
    return Center(
      child: SpinKitFoldingCube(
        color: color ?? MyColors.primary,
        size: 40.0,
      ),
    );
  }
  showBalanceLoadingView({Color? color}) {
    return Center(
      child: SpinKitThreeBounce(
        color: color ?? MyColors.primary,
        size: 20.0,
      ),
    );
  }

  showCatLoadingView({Color? color}) {
    return Center(
      child: SpinKitRipple(
        color: color ?? MyColors.primary,
        size: 40.0,
      ),
    );
  }

  void dismissDialog() {
    EasyLoading.dismiss();
  }
}
