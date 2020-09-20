import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRollingApp());
}

class DiceRollingApp extends StatefulWidget {
  @override
  _DiceRollingAppState createState() => _DiceRollingAppState();
}

class _DiceRollingAppState extends State<DiceRollingApp> {
  int nextDiceImage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text('Dice Rolling App', 
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 40,
            ),
            )
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(), 
            Expanded( 
              flex: 1,
              child: Center(child: Image.asset('assets/dice/dice_$nextDiceImage.png')),
            ),
            Spacer(),
            RaisedButton(
                onPressed: (){
                  setState(() => nextDiceImage = Random().nextInt(6) + 1); 
                }, 
                child: Text('Roll the Dice!'),
              ),
          ],
        ),
      ),
    );
  }
}
