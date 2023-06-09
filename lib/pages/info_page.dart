import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'bottomNav',
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Descripcion del Proyecto'),
        ),
        body: Column(children: [
          Text('Holaaaa'),
        ]),
      ),
    );
  }
}
