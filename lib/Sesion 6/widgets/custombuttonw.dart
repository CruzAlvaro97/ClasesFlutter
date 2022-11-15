import 'package:flutter/material.dart';

class CusttomButtonWidget extends StatelessWidget {
  final Function aumentarB;
  final Function disminuirB;
  final Function resetB;

  const CusttomButtonWidget(
      {super.key,
      required this.aumentarB,
      required this.disminuirB,
      required this.resetB});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.tealAccent,
          elevation: 0,
          heroTag: const Text('btn3'),
          tooltip: 'Disminuir',
          child: const Icon(
            Icons.remove_circle_outline_rounded,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () => disminuirB(),
        ),
        FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          elevation: 0,
          heroTag: const Text(
            'btn2',
          ),
          tooltip: 'Reset',
          child: const Icon(
            Icons.restore_sharp,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => resetB(),
        ),
        FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          elevation: 0,
          heroTag: const Text('btn1'),
          tooltip: 'Aumentar',
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () => aumentarB(),
        ),
      ],
    );
  }
}
