
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
  PageController _pageController = PageController();


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> pages = const [InfoPage(), HomePage(), EventosPage()];


  // pages.elementAt(currentPage)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) { setState(() {
              currentPage = index;
            }); },
            children: pages,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPage,
          backgroundColor: Colors.grey[50],
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: Colors.indigo,
          onTap: (int value) {
            setState(() {
              currentPage = value;
              _pageController.animateToPage(value, duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: 'Descripcion',
                backgroundColor: Colors.lightBlue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Home',
                backgroundColor: Colors.lightBlue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.event),
                label: 'Eventos',
                backgroundColor: Colors.lightBlue,
            ),

          ]

    ),
    );
  }
}

