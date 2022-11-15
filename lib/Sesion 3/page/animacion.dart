import 'package:flutter/material.dart';
import 'dart:math';

// stf: Se crea automaticamente el builder
class AnimacionDemo extends StatefulWidget {
  const AnimacionDemo({super.key});

  @override
  State<AnimacionDemo> createState() => _AnimacionDemoState();
}

class _AnimacionDemoState extends State<AnimacionDemo> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.deepPurple;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Formas y colores',
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      //
      // Botón Flotante
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          setState(
            () {
              final random = Random();
              _width = random.nextInt(500).toDouble();
              _height = random.nextInt(300).toDouble();
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                (random.nextInt(100) + 10) / 100,
              );
            },
          );
        },
        elevation: 10,
        splashColor: Colors.amber,
        foregroundColor: Colors.orangeAccent,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        child: const Icon(
          Icons.replay_sharp,
          size: 30,
        ),
      ),
    );
  }
}
