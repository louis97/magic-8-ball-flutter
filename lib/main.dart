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
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me anything'),
      ),
      body: Container(
        child:Ball(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/stars.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int number=new Random().nextInt(5)+1;

  f(){
    setState(() {
      number=new Random().nextInt(5)+1;
      //print('pressed: $number');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$number.png'),
              onPressed: (){
              f();
            },
            ),
          )
        ],
      ),
    );
  }
}