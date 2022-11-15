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
          backgroundColor: const Color.fromARGB(255, 8, 29, 133),
          heroTag: const Text('btn3'),
          tooltip: 'Disminuir',
          child: const Icon(Icons.remove_circle_outline_rounded),
          onPressed: () => disminuirB(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 166, 255, 252),
          heroTag: const Text(
            'btn2',
          ),
          tooltip: 'Reset',
          child: const Icon(
            Icons.restore_sharp,
            color: Colors.black,
          ),
          onPressed: () => resetB(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 97, 77, 45),
          heroTag: const Text('btn1'),
          tooltip: 'Aumentar',
          child: const Icon(Icons.add),
          onPressed: () => aumentarB(),
        ),
      ],
    );
  }
}
