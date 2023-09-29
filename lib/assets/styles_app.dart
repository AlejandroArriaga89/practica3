import 'package:flutter/material.dart';

class StyleApp {
  static ThemeData lightTheme(BuildContext context) {
    final theme = ThemeData.light();
    return theme.copyWith(
      colorScheme: const ColorScheme.light(
        primary: Color.fromARGB(255, 56, 133, 140),
        background: Color.fromARGB(255, 179, 179, 179),
        onBackground: Colors.black,
        surface: Color.fromARGB(255, 243, 243, 243),
        onSurface: Color.fromARGB(255, 130, 130, 130),
        secondary: Color.fromARGB(255, 124, 21, 14),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final theme = ThemeData.dark();
    return theme.copyWith(
      colorScheme: ColorScheme.dark(
        primary: Color.fromARGB(155, 230, 255, 228),
        background: Color.fromARGB(255, 67, 67, 67),
        onBackground: Colors.white,
        surface: const Color.fromARGB(255, 33, 33, 33),
        onSurface: Color.fromARGB(255, 130, 130, 130),
        secondary: Colors.red,
      ),
    );
  }
}
