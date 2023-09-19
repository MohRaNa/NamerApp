import 'package:flutter/material.dart';
import 'nombre_screen.dart'; // Importa la pantalla de nombre
import 'matricula_screen.dart'; // Importa la pantalla de matrícula

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String nombre = "Mohamed";
  final String matricula = "A00826602";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => HomeScreen(nombre, matricula),
        '/nombre': (context) => NombreScreen(nombre),
        '/matricula': (context) => MatriculaScreen(matricula),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String nombre;
  final String matricula;

  HomeScreen(this.nombre, this.matricula);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi App Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/nombre'); // Navegar a la pantalla de nombre
              },
              child: Text('Ver Nombre'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/matricula'); // Navegar a la pantalla de matrícula
              },
              child: Text('Ver Matrícula'),
            ),
          ],
        ),
      ),
    );
  }
}
