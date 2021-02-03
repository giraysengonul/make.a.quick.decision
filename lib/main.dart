import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Anasayfa(),
  ),
);

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var Rastgeleuret = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            "Karar Ver(Make a quick decision)",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                Rastgeleuret = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage("images/ball$Rastgeleuret.png"),
            ),
          ),
        ),
      ),
    );
  }
}
