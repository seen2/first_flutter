import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static dynamic lightTheme = (context) => (ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(color: Colors.black))));
}
