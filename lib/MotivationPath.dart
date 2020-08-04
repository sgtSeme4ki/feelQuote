import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './MotivationQuote.dart';
import 'dart:math';

//TODO: add Quote-Strings

class MotivationPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic pictureList = [
      'images/views/demotivated0.jpg',
      'images/views/demotivated1.jpg',
      'images/views/demotivated2.jpg',
      'images/views/demotivated3.jpg',
      'images/views/demotivated4.jpg',
      'images/views/demotivated5.jpg',
      'images/views/demotivated6.jpg',
      'images/views/demotivated7.jpg'
    ];

    Random rnd = new Random();
    int randomIndex = rnd.nextInt(8);
    String imageName = pictureList[randomIndex].toString();

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageName), fit: BoxFit.cover),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(color: Colors.black45, child: MotivationQuote())
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.replay),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MotivationPath()),
              );
            },
          ),
        ),
      ]),
    );
  }
}
