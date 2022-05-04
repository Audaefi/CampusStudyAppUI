import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.openSans(fontSize: 14.0,fontWeight: FontWeight.w500, color: Colors.brown),
    headline2: GoogleFonts.openSans(fontSize: 16.0,fontWeight: FontWeight.bold),
    bodyText1: GoogleFonts.openSans(fontSize: 14.0),
    bodyText2: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    subtitle1: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
    caption: GoogleFonts.openSans(fontSize: 12.0, color: Colors.grey),
  );
}

/*AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    textTheme: TextTheme(
      headline6: GoogleFonts.nanumGothic(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}


ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
    primaryColor: Colors.orange,
  );
}*/
