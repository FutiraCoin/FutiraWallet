
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/input_field_style/custom_input_decoration.dart';
import 'package:flutter_tdd/core/constants/input_field_style/custom_input_text_style.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

class InitCustomPackages{

  InitCustomPackages._();

  static InitCustomPackages get instance => InitCustomPackages._();

  void initCustomWidgets({required String language}) {
    WidgetUtils.init(
        style: CustomInputTextStyle(lang: language),
        primary: MyColors.primary,
        language: language,
        inputStyle: (
            {String? label,
              String? hint,
              Widget? prefixIcon,
              Widget? suffixIcon,
              Widget? suffixWidget,
              Widget? prefixWidget,
              Color? hintColor,
              Color? fillColor,
              BorderRadius? radius,
              Color? focusBorderColor,
              EdgeInsets? padding,
              Color? enableColor}) =>
            CustomInputDecoration(
                lang: language,
                labelTxt: label,
                hint: hint,
                prefIcon: prefixIcon,
                sufIcon: suffixIcon,
                hintColor: hintColor,
                enableColor: enableColor,
                customFillColor: fillColor,
                borderRadius: radius,
                focsColor: focusBorderColor,
                padding: padding));
  }

}