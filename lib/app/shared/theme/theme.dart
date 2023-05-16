import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static final dark = ThemeData(
    primaryColor: const Color(0xff055AA3),
    highlightColor: const Color(0xffEDF4F8),
    secondaryHeaderColor: const Color(0xff51565A),
    cardColor: const Color(0xff172026),
    scaffoldBackgroundColor: const Color(0xff121517),
    textTheme: GoogleFonts.poppinsTextTheme(),
    splashColor: Colors.transparent,
    // highlightColor: Colors.transparent,
    // colorScheme: ColorScheme(
    //   brightness: ,
    //   primary: ,
    //   onPrimary: ,
    //   secondary: ,
    //   onSecondary: ,
    //   error: ,
    //   onError: ,
    //   background: ,
    //   onBackground: ,
    //   surface: ,
    //   onSurface: ,
    // ),
  );

  static final light = ThemeData(
    primaryColor: const Color(0xff055AA3),
    highlightColor: const Color(0xff172026),
    secondaryHeaderColor: const Color(0xff51565A),
    cardColor: const Color(0xffEDF4F8),
    scaffoldBackgroundColor: const Color(0xffD6DFE4),
    textTheme: GoogleFonts.poppinsTextTheme(),
    splashColor: Colors.transparent,
    // highlightColor: Colors.transparent,
    // colorScheme: ColorScheme(
    //   brightness: ,
    //   primary: ,
    //   onPrimary: ,
    //   secondary: ,
    //   onSecondary: ,
    //   error: ,
    //   onError: ,
    //   background: ,
    //   onBackground: ,
    //   surface: ,
    //   onSurface: ,
    // ),
  );
}

class ChangeTheme extends ChangeNotifier {
  bool isDark = true;

  void notifyTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
