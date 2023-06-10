import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:proyecto_ejemplo/components/gradient.dart';
import 'package:proyecto_ejemplo/components/my_textfield.dart';
import 'package:proyecto_ejemplo/components/my_button.dart';
import 'package:proyecto_ejemplo/pages/home_page.dart';
import 'package:proyecto_ejemplo/pages/register_page.dart';
import 'package:proyecto_ejemplo/widget_tree.dart';
import 'package:proyecto_ejemplo/components/navigator_global.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          title: const Text('Iniciar Sesión', textAlign: TextAlign.center), backgroundColor: Colors.blue, centerTitle: true,),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 26.0),
                child: Center(
                  child: GradientText('Bienvenido!', gradient: LinearGradient(colors: [Colors.greenAccent, Colors.lightBlue]) , style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: MyTextField(
                    icon: Icons.person_2_outlined,
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
                    if (verificarDatos(usernameController, passwordController)) {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: WidgetTree(),
                              type: PageTransitionType.bottomToTop));
                    } else {
                      GlobalNavigator.showAlertDialog('Usuario equivocado!');
                    }
                  },
                  insertText: "Iniciar Sesion!"),

              MyButton(
                  onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.topToBottom,
                            child: RegisterPage(),
                          ));
                  },
                  insertText: "Registrarse!")
            ],
          ),
        ),
      ),
    );
  }
}

bool verificarDatos(usernameController, passwordController){

  var user = usernameController.text;
  var pass = passwordController.text;

  print("current data is ${user} and ${pass}");

  usernameController.clear();
  passwordController.clear();

  if (user == "user"  && pass == "pass"){
    return true;
  } else {
    return false;
  }
}