import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';

extension Validator on String {

  String? noValidate() {
    return null;
  }

  String? validateEmpty(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    }
    return null;
  }

  String? validateName(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    }else if(length<8 || length>30){
      return  message ?? tr(context,"validateName");
    }
    return null;
  }


  String? validateAddress(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    }else if(length<5 || length>100){
      return  message ?? tr(context,"validateName");
    }
    return null;
  }

  String? validatePassword(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (!RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this)) {
      return message ?? tr(context,"passValidation");
    }
    return null;
  }

  String? validateEmail(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return message ?? tr(context,"mailValidation");
    }
    return null;
  }

  String? validateEmailORNull(BuildContext context,{String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? tr(context,"mailValidation");
      }
    }
    return null;
  }

  String? validatePhone(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (!RegExp(
        r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
        .hasMatch(this) ||
        length < 10) {
      return message ?? tr(context,"phoneValidation");
    }
    return null;
  }

  String? validatePhoneOrNull(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return null;
    } else if (!RegExp(
        r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
        .hasMatch(this) ||
        length < 10) {
      return message ?? tr(context,"phoneValidation");
    }
    return null;
  }

  String? validatePasswordConfirm(BuildContext context,{required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (this != pass) {
      return message ?? tr(context,"confirmValidation");
    }
    return null;
  }
}

String? validateDropDown(BuildContext context, dynamic model,{String? message}) {
  if (model == null) {
    return message ?? tr(context,"fillField");
  }
  return null;
}
