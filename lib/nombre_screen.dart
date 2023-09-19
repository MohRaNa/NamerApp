import 'package:flutter/material.dart';

class NombreScreen extends StatelessWidget {
  final String nombre;

  NombreScreen(this.nombre);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Nombre'),
      ),
      body: Center(
        child: Text(
          'Nombre: $nombre',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
