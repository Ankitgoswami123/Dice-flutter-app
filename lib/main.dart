import 'package:flutter/material.dart';
import 'Dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent.shade700,
        appBar: AppBar(
          title: Center(child: Text("Dicee")),
          backgroundColor: Colors.redAccent.shade400,
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

  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child:
          FlatButton(
            onPressed: () {
              setState(() {
                LeftDiceNumber = Random().nextInt(6)+1;
              });
            },
            child: Image.asset('images/dice$LeftDiceNumber.png'),),),
          Expanded(child:
          FlatButton(
            onPressed: () {
             setState(() {
               RightDiceNumber = Random().nextInt(6)+1;
             });
            },
            child: Image.asset('images/dice$RightDiceNumber.png'),),
          ),
        ],
      ),
    );
  }
}


