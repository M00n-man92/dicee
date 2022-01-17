//FAKE DICEEE

import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

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
  int leftbuttonnum = 1;
  int rightbuttonnum = 1;
  void pressed() {
    rightbuttonnum = Random().nextInt(6) + 1;
    leftbuttonnum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  pressed();
                });
              },
              child: Image.asset('images/dice$leftbuttonnum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  pressed();
                });
              },
              child: Image.asset('images/dice$rightbuttonnum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: Text('Ask me anything'),
              backgroundColor: Colors.blue.shade900,
            ),
            body: eightball()),
      ),
    );

class eightball extends StatefulWidget {
  @override
  _eightballState createState() => _eightballState();
}

class _eightballState extends State<eightball> {
  int onpressed = 1;
  int ran;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ran = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ran.png'),
            ),
          )
        ],
      ),
    );
  }
}
