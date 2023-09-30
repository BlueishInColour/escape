import 'package:flutter/material.dart';

class LightPalette {
  Color backgroundColor = Colors.teal;
  Color primary = Colors.teal;
  Color secondary = Colors.teal;
  Color tetiary = Colors.teal;
}

LightPalette lPalette = LightPalette();

class DarkPalette {
  Color backgroundColor = Colors.teal;
  Color primary = Colors.teal;
  Color secondary = Colors.teal;
  Color tetiary = Colors.teal;
}

DarkPalette dPalette = DarkPalette();

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: lPalette.backgroundColor,
    ));
ThemeData darkMode = ThemeData(brightness: Brightness.dark);
