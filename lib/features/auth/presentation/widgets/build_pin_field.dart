import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuildPinField extends StatelessWidget {
  final Function(String) onComplete;
  final EdgeInsetsGeometry? margin;

  const BuildPinField({
    Key? key,
    required this.onComplete, this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin:margin?? const EdgeInsets.symmetric(horizontal: 20),
      child: PinCodeTextField(
        length: 6,
        appContext: context,
        onChanged: (String value) {},
        backgroundColor: Colors.transparent,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 60,
            fieldWidth: 55,
            inactiveColor: MyColors.greyWhite,
            activeColor: MyColors.primary,
            selectedColor: MyColors.primary,
            selectedFillColor: MyColors.white,
            inactiveFillColor: MyColors.white,
            activeFillColor: MyColors.white,
            disabledColor: MyColors.black,
        ),
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
        onCompleted: onComplete,
      ),
    );
  }
}
