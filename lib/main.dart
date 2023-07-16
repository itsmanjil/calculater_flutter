import 'package:calculator_app/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == '*' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '*') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Calculator'),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        backgroundColor: const Color.fromARGB(255, 186, 214, 154),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: const TextStyle(fontSize: 23, color: Colors.green),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: const TextStyle(fontSize: 48, color: Colors.white),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: 'AC',
                    fillColor: (0xFFFF1744),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: 'x',
                    fillColor: (0xFFFF9800),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '%',
                    fillColor: (0xFFFF9800),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '/',
                    fillColor: (0xFFFF9800),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: '7',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '8',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '9',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '*',
                    fillColor: (0xFFFF9800),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: '4',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '5',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '6',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '-',
                    fillColor: (0xFFFF9800),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: '1',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '2',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '3',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '+',
                    fillColor: (0xFFFF9800),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: '0',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '+/-',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '00',
                    fillColor: (0xFF4DD0E1),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: '=',
                    fillColor: (0xFF76FF03),
                    textColor: (0xDD000000),
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
