import 'package:aula/constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
    void Function(double) onChanged;
    double altura;

  SliderAltura({super.key, required this.onChanged, required this.altura});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              altura.toInt().toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        Slider(
          value: 120,
          min: 120,
          max: 220,
          onChanged: (double value) {},
        )
      ],
    );
  }
}
