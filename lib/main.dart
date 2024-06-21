import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: Text("Dice"),
      backgroundColor: Colors.red,
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dadoizquierdo = 1, dadoderecho = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dadoizquierdo = Random().nextInt(6) + 1;
                  print("Dado izquierdo presionado:$dadoizquierdo");
                });
              },
              child: Image.asset("images/dice$dadoizquierdo.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dadoderecho = Random().nextInt(6) + 1;
                  print("Dado derecho presionado:$dadoderecho");
                });
              },
              child: Image.asset("images/dice$dadoderecho.png"),
            ),
          ),
        ],
      ),
    );
  }
}
