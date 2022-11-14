import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isSwitched = true;
  bool isChecked = false;
  bool isSwitchedCupertino = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox & Switch'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //
          // Switch
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          //
          // Checkbox
          Checkbox(
            value: isChecked,
            onChanged: ((value) {
              setState(() {
                isChecked = value!;
              });
            }),
          ),
          CupertinoSwitch(
            value: isSwitchedCupertino,
            onChanged: (bool? value) {
              setState(() {
                isSwitchedCupertino = value ?? false;
              });
            },
          ),
        ]),
      ),
    );
  }
}
