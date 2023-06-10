import 'package:flutter/material.dart';
import 'package:proyecto_ejemplo/components/my_textfield.dart';
import 'package:proyecto_ejemplo/components/my_button.dart';
import 'package:proyecto_ejemplo/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});


  final nombreController = TextEditingController();
  final cedulaController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Registro de Cuenta'), backgroundColor: Colors.lightGreenAccent[100], centerTitle: true),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Center(
                child: Text(
                  'Registrarse',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: MyTextField(
                  icon: Icons.password,
                  controller: nombreController,
                  hintText: 'Introduzca nombre!',
                  obscureText: false),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: MyTextField(
                  icon: Icons.password,
                  controller: cedulaController,
                  hintText: 'Introduzca cedula!',
                  obscureText: false),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: MyTextField(
                  icon: Icons.password,
                  controller: usernameController,
                  hintText: 'Introduzca usuario!',
                  obscureText: false),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: MyTextField(
                  icon: Icons.password,
                  controller: passwordController,
                  hintText: 'Introduzca contraseña!',
                  obscureText: true),
            ),
            MyButton(
                onTap: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                insertText: "Registrarse!"),



          ],
        ),
      ),
    );
  }
}
