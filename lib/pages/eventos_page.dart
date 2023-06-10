import 'package:flutter/material.dart';
import 'package:proyecto_ejemplo/components/events_template.dart';

class EventosPage extends StatelessWidget {
  const EventosPage({super.key});

  //Image(image: AssetImage("images/sigurd on jesters.png"))

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Eventos"), backgroundColor: Colors.lightBlue[50]),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ROW 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EventsTemplate(
                      imageEvent: 'images/sigurd on jesters.png',
                      titleEvent: 'Sigurd chiste',
                      descEvent: 'Sigurd cuando:\n',
                      horaEvent: '8 PM',
                      color: Colors.blueAccent ,),
                EventsTemplate(
                  imageEvent: 'images/thumbnails/cats.png',
                  titleEvent: 'Reunion Gatuna!',
                  descEvent: 'Solo gatos! Si eres perro no vengas!',
                  horaEvent: '9 PM',
                  color: Colors.lightGreen,),
                ],
              ),
              // ROW 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EventsTemplate(
                    imageEvent: 'images/thumbnails/fachada_utp_2.jpg',
                    titleEvent: 'Fiesta UTP',
                    descEvent: 'Pronto se acaba el semestre!',
                    horaEvent: '2 PM',
                    color: Colors.amber ,),
                  EventsTemplate(
                    imageEvent: 'images/thumbnails/fridays.jpg',
                    titleEvent: 'Reunion Whatever',
                    descEvent: 'Wow...\n',
                    horaEvent: '9 PM',
                    color: Colors.redAccent,),
                ],
              ),
              // ROW 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EventsTemplate(
                    imageEvent: 'images/thumbnails/presentacion.jpg',
                    titleEvent: 'Presentacion!',
                    descEvent: 'Espera..\n eso es hoy...',
                    horaEvent: '1 PM',
                    color: Colors.lightBlueAccent ,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
