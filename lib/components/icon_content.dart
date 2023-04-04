import 'package:aula/constans.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String text;
  const IconContent({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$text',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
