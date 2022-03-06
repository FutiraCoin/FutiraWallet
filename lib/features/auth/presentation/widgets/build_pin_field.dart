import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuildPinField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onComplete;

  const BuildPinField({
    Key? key,
    required this.controller,
    required this.onComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
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
      controller: controller,
    );
  }
}
