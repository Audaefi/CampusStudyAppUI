import 'dart:ui';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? Color(0xff010103) :Color(0xfffcf7f7),
      //primarySwatch: Colors.grey,
      primaryColor: isDarkTheme ? Colors.black : Color(0xffe5dfdf),
      accentColor: isDarkTheme ? Colors.indigo : Colors.white,
      secondaryHeaderColor : isDarkTheme ? Color(0xff171718) : Color(0xfff2f5f6),
      backgroundColor: isDarkTheme ? Colors.blueGrey.shade900 : Colors.grey.shade300,
      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xff93bf78),
      hintColor: isDarkTheme ? Colors.grey.shade900 : Colors.grey.shade300,
      //highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xffeeeaea),
      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      cardColor: isDarkTheme ? Color(0xFF171616) : Color(0xFFF3ECF3),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme:  AppBarTheme(elevation: 0.0),
    );
  }
}
