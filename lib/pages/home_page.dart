import 'package:flutter/material.dart';
import 'package:proyecto_ejemplo/components/gradient.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hola!')),
      body: Center(
        child: GradientText('Bienvenido al Programa!', gradient: LinearGradient(
            colors: [Colors.blue.shade500, Colors.purple.shade900]),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60,),align: TextAlign.center ),
        ),
      );
  }
}
