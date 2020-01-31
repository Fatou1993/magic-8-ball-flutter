import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue[800],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: (){
          setState(() {
            _ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Center(
          child: Image.asset('images/ball$_ballNumber.png'),
        ),
      ),
    );
  }
}

