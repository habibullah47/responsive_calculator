import 'package:flutter/material.dart';
import 'package:responsive_calculator/colors.dart';

import 'button_widget/ButtonWidget.dart';

void main() {
  runApp(const OptimizeCalculator());
}

class OptimizeCalculator extends StatefulWidget {
  const OptimizeCalculator({Key? key}) : super(key: key);

  @override
  State<OptimizeCalculator> createState() => _OptimizeCalculatorState();
}

class _OptimizeCalculatorState extends State<OptimizeCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Text('hadfisjfhadjakdhj'),
              ),
            ),
            Expanded(
              flex: 2,
              child: buildButtons(),
            ),
          ],
        ),
      ),
    );
  }
}

class buildButtons extends StatelessWidget {
  const buildButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50),
        ),
        color: MyColor.backgroundBody,
      ),
      child: Column(
        children: [
          buildButtonRow('C', '()', '%', '÷'),
          buildButtonRow('7', '8', '9', '×'),
          buildButtonRow('4', '5', '6', '-'),
          buildButtonRow('1', '2', '3', '+'),
          buildButtonRow('+/-', '0', '.', '='),
        ],
      ),
    );
  }

  Widget buildButtonRow(
      String first, String second, String third, String fourth) {
    final row = [first, second, third, fourth];

    return Expanded(
      child: Row(
          children: row
              .map(
                (text) => ButtonWidget(
                  text: text,
                  onClicked: () => print(text),
                  onClickedLong: () {},
                ),
              )
              .toList()),
    );
  }
}
