import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_1/Sesion%204/inicio4.dart';
import 'package:flutter_ejemplo_1/widgetsdemo.dart';
import 'Sesion 5/inicio5.dart';
import 'Sesion3/page/inicio3.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SESIONES'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //
          children: [
            ButtonWidget(
              text: 'Sesión 3',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            ButtonWidget(
              text: 'Sesión 4',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Inicio4()));
              },
            ),
            ButtonWidget(
              text: 'Sesión 5',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Inicio5()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
