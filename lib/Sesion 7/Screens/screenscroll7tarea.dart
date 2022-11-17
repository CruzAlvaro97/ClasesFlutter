import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_1/Sesion%207/Screens/plantilla7tarea.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScreenScroller7tarea extends StatefulWidget {
  const ScreenScroller7tarea({super.key});

  @override
  State<ScreenScroller7tarea> createState() => _ScreenScroller7tareaState();
}

class _ScreenScroller7tareaState extends State<ScreenScroller7tarea> {
  late Controller controller;

  final List<dynamic> datos = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/04/13/23/56/annecy-3317984_960_720.jpg',
      'title': 'Annecy',
      'subtitle': '"Pearl of French Alps"',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/03/22/22/45/ferris-wheel-1273841_960_720.jpg',
      'title': 'Lyon',
      'subtitle': '"Capital of Lights"',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2021/08/14/01/58/museum-6544420_960_720.jpg',
      'title': 'Paris',
      'subtitle': '"the City of Light"',
    },
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    // ignore: avoid_print
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwiperTiktok'),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: datos.length,
        // matriz creada.
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext context, int index) {
          final dato = datos[index];
          //especie de for

          return PlantillaScroll7tarea(
            img: dato['img'],
            title: dato['title'],
            subtitle: dato['subtitle'],
          );
        },
      ),
    );
  }
}
