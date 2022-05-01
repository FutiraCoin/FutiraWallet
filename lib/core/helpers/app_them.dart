import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/my_app.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThem{

  AppThem._();

  static AppThem instance = AppThem._();

  ThemeData get themeData => ThemeData(
    focusColor: MyColors.primary,
    primaryColor: MyColors.primary,
    fontFamily: GoogleFonts.cairo().fontFamily,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: MyColors.primary
      )
    ),
    textTheme: TextTheme(
      subtitle1:GoogleFonts.cairo(fontSize: 14,),
    ),
  );

}