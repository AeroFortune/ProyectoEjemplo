import 'package:flutter/material.dart';
import 'package:proyecto_ejemplo/components/my_textfield.dart';
import 'package:proyecto_ejemplo/components/my_button.dart';
import 'package:proyecto_ejemplo/pages/register_page.dart';
import 'package:proyecto_ejemplo/widget_tree.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter es okay'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              'Bienvenido!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: MyTextField(
                controller: usernameController,
                hintText: 'Introduzca usuario!',
                obscureText: false),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: MyTextField(
                controller: passwordController,
                hintText: 'Introduzca contraseña!',
                obscureText: true),
          ),

          MyButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WidgetTree(),
                    ));
              },
              insertText: "Iniciar Sesion!"),

          MyButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ));
              },
              insertText: "Registrarse!")
        ],
      ),
    );
  }
}
