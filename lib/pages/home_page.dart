import 'package:flutter/material.dart';
import 'package:proyecto_ejemplo/components/gradient.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.exit_to_app,)),
          title: Text(
            'Hola!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Center(
              child: GradientText('Bienvenido al Programa!',
                  gradient: LinearGradient(
                      colors: [Colors.blue.shade500, Colors.purple.shade900]),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                  align: TextAlign.center),
            ),
            Image(image: AssetImage("images/rata.gif")),
            Center(
              child: GradientText(
                  'Son actualmente las... \n${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}',
                  gradient: LinearGradient(
                      colors: [Colors.blue.shade500, Colors.purple.shade900]),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  align: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
