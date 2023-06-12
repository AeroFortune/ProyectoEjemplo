import 'package:flutter/material.dart';

import '../components/gradient.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'bottomNav',
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                )),
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            title: Text(
              'Descripcion del Proyecto',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          body: PageView(
            children: [
              Container(
                color: Colors.indigoAccent,
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.all(60.0),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Image(
                          image: AssetImage("images/flutter.png"),
                          width: 230,
                          height: 230,
                        ),
                      ),
                      Text(
                        "Flutter es un framework de desarrollo multiplataforma híbrido que permite desarrollar para las plataformas iOS y Android. Los puntos fuertes de este framework son principalmente la facilidad para crear aplicaciones muy visuales y la rapidez de desarrollo.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                )),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(60.0),
                  child: Wrap(
                    children: [
                      const Image(
                          image: AssetImage("images/rata.gif"),
                          width: double.infinity),
                      const Text(
                        "En general, es un framework bastante genial de aprender, especialmente viniendo de Java.\nAlgunas de las cosas que podemos hacer con Flutter es: \n",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 400,
                                      child: Wrap(
                                        children: [
                                          Center(
                                              child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: Image(
                                              image: AssetImage(
                                                  "images/kirbys.gif"),
                                            ),
                                          )),
                                          Center(
                                            child: ElevatedButton(
                                              child: const Text("Cool, eh?"),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: const Text(
                              "Cosas como esto!",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                )),
              ),
              Container(
                color: Colors.lightGreen,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(60.0),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image(
                              image: AssetImage("images/aprendelo.jpeg"),),
                        ),
                      ),
                      Center(
                        child: GradientText('Aprendelo!',
                            gradient: LinearGradient(
                                colors: [Colors.lightGreen.shade50, Colors.white, Colors.lightGreen.shade50]),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                            align: TextAlign.center),
                      ),
                      Center(
                        child: GradientText('(por favor!)',
                            gradient: LinearGradient(
                                colors: [Colors.lightGreen.shade50, Colors.white, Colors.lightGreen.shade50]),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            align: TextAlign.center),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          )),
    );
  }
}
