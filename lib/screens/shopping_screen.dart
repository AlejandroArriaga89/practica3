import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:practica3/image_carousel.dart';
import 'package:practica3/assets/global_values.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuracion',
            ),
          ],
          backgroundColor: Theme.of(context).colorScheme.surface,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.surface,
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Theme.of(context).colorScheme.onSurface,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            DayNightSwitcherIcon(
              isDarkModeEnabled: GlobalValues.flagTheme.value,
              onStateChanged: (isDarkModeEnabled) {
                GlobalValues.flagTheme.value = isDarkModeEnabled;
              },
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
          title: Center(
            child: Image.asset(
              'images/logo.png',
              width: 40, // Ajusta el ancho de tu logo según sea necesario
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Hero(
                  tag: CarouselWithIndicatorDemo(),
                  child: CarouselWithIndicatorDemo(),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .surface, // Usar el color de fondo del tema
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Honda Civic 2017', // Cambiar el nombre del producto
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  // Usar el color primario del tema
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Spacer(),
                              IconButton(
                                iconSize: 40.0,
                                icon: _isFavorited
                                    ? const Icon(
                                        Icons.favorite_border,
                                        color: Colors.black45, // Color estático
                                      )
                                    : const Icon(
                                        Icons.favorite,
                                        color: Colors.red, // Color estático
                                      ),
                                onPressed: _toggleFavorite,
                              ),
                            ],
                          ),
                          Text(
                            '\$200,000.00 mxn',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.00,
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary, // Usar el color de acento del tema
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Descripción del auto',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.color, // Usar el color de texto del tema
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'El Honda Civic del 2017 es un automóvil compacto conocido por su confiabilidad, eficiencia de combustible y estilo moderno. Ofrece espacio interior generoso, '
                            'tecnología avanzada y una conducción cómoda. Es una opción popular en su categoría.',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.color, // Usar el color de texto del tema
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Apartar o agendar visita', // Cambiar el texto del botón
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.secondary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
