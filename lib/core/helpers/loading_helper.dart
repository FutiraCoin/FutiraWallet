import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:injectable/injectable.dart';

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

  showLoadingView({Color? color}) {
    return Center(
      child: SpinKitFoldingCube(
        color: color ?? MyColors.primary,
        size: 40.0,
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

  void dismissDialog(){
    EasyLoading.dismiss();
  }

}
