import 'package:flutter/material.dart';
import 'package:proyecto_ejemplo/pages/eventos_page.dart';
import 'package:proyecto_ejemplo/pages/home_page.dart';
import 'package:proyecto_ejemplo/pages/info_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentPage = 1;

  List<Widget> pages = const [
    InfoPage(),
    HomePage(),
    EventosPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.text_fields), label: 'Descripcion'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.bubble_chart), label: 'Eventos'),
        ],
        selectedIndex: currentPage,
        onDestinationSelected: (int value){
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
