import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.secondary,
        title: Text('Inicio de Sesión',
            style: TextStyle(color: colorScheme.onPrimary)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Usuario',
              style: TextStyle(
                color: colorScheme.onBackground,
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                style: TextStyle(
                  color: colorScheme.onBackground,
                  decorationColor: colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contraseña',
              style: TextStyle(
                color: colorScheme.onBackground,
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                style: TextStyle(
                  color: colorScheme.onBackground,
                  decorationColor: colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  // Lógica de inicio de sesión
                },
                style: ElevatedButton.styleFrom(
                  primary: colorScheme.secondary,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      color: colorScheme.onPrimary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
