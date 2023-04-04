import 'package:aula/components/custom_card.dart';
import 'package:aula/components/icon_content.dart';
import 'package:aula/constans.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      text: 'Masculino',
                      iconData: Icons.male,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      text: 'Feminino',
                      iconData: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Altura',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1.83',
                        style: kNumberTextStyle,
                      ),
                      Text('cm')
                    ],
                  ),
                  Slider(
                    value: 0,
                    onChanged: (double value) {
                      
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomCard(
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
