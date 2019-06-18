import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceWidget = 3;
  var rightDiceWidget = 2;

  test() {
    setState(() {
      leftDiceWidget = Random().nextInt(6) + 1;
      rightDiceWidget = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                test();
              },
              child: Image.asset('images/dice$leftDiceWidget.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                test();
              },
              child: Image.asset('images/dice$rightDiceWidget.png'),
            ),
          )
        ],
      ),
    );
  }
}
