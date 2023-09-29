import 'package:flutter/material.dart';
import 'package:practica3/assets/global_values.dart';
import 'package:practica3/assets/styles_app.dart';
import 'package:practica3/routes.dart';
import 'package:practica3/screens/shopping_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: GlobalValues.flagTheme,
        builder: (context, value, _) {
          return MaterialApp(
            home: FirstScreen(),
            routes: getRoutes(),
            theme: value
                ? StyleApp.darkTheme(context)
                : StyleApp.lightTheme(context),
          );
        });
  }
}
