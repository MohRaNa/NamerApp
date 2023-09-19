import 'package:flutter/material.dart';

class MatriculaScreen extends StatelessWidget {
  final String matricula;

  MatriculaScreen(this.matricula);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Matrícula'),
      ),
      body: Center(
        child: Text(
          'Matrícula: $matricula',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
