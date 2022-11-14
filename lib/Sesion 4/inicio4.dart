import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_1/Sesion%204/checkboxwidget.dart';
import 'package:flutter_ejemplo_1/Sesion%204/ddbuttonwidget.dart';
import 'package:flutter_ejemplo_1/Sesion%204/emailpasswidget.dart';
import 'package:flutter_ejemplo_1/Sesion%204/scrollwidget.dart';
import 'package:flutter_ejemplo_1/Sesion%204/sliderwidget.dart';
import 'package:flutter_ejemplo_1/widgetsdemo.dart';

class Inicio4 extends StatelessWidget {
  const Inicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 4'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //
            // Botón 1
            ButtonWidget(
              text: 'Email & Passwprd',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailPassWidget()));
              },
            ),
            //
            // Botón 2
            ButtonWidget(
              text: 'Checkbox & Switch',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckBoxWidget()));
              },
            ),
            //
            // Botón 3
            ButtonWidget(
              text: 'Slider',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SliderWidget()));
              },
            ),
            //
            // Botón 4
            ButtonWidget(
              text: 'Drop down button',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DropDownButtonWidget()));
              },
            ),
            //
            // Botón 4
            ButtonWidget(
              text: 'Scroll Listview Refresher',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScrollWidgetPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
