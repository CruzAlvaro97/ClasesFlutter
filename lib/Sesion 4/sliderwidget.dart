import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 20;
  double _cupernum = 0;
  double _inicio = 0;
  double _fin = 100;
  // Valor inicial del slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //
            // Slider
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: '${_currentSliderValue.round()}%',
              onChanged: ((double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              }),
            ),
            //
            // SizedBoxCupertino
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                min: 0.0,
                max: 100.0,
                value: _cupernum,
                divisions: 5,
                activeColor: CupertinoColors.activeBlue,
                thumbColor: CupertinoColors.systemYellow,
                onChanged: (value) {
                  setState(() {
                    _cupernum = value;
                  });
                },
              ),
            ),
            //
            // RangeSlider
            RangeSlider(
              min: 0.0,
              max: 100.0,
              labels: RangeLabels("S/$_inicio", "S/$_fin"),
              divisions: 10,
              activeColor: Colors.limeAccent,
              inactiveColor: Colors.grey,
              values: RangeValues(_inicio, _fin),
              onChanged: ((value) {
                setState(() {
                  _inicio = value.start;
                  _fin = value.end;
                });
              }),
            )
          ],
        ),
      ),
    );
  }
}
