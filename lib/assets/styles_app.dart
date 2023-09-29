import 'package:flutter/material.dart';

class StyleApp {
  static ThemeData lightTheme(BuildContext context) {
    final theme = ThemeData.light();
    return theme.copyWith(
        //primaryColor: Color.fromARGB(255, 255, 100, 50),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Color.fromARGB(255, 56, 133, 140),
            ));
  }

  static ThemeData darkTheme(BuildContext context) {
    final theme = ThemeData.dark();
    return theme.copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Color.fromARGB(155, 230, 255, 228),
            ));
  }
}
