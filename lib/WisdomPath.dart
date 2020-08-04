import 'package:flutter/material.dart';
import 'dart:math';
import './WisdomQuote.dart';

//TODO: add Quote-Strings

class WisdomPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic pictureList = [
      'images/views/wisdom0.jpg',
      'images/views/wisdom1.jpg',
      'images/views/wisdom2.jpg',
      'images/views/wisdom3.jpg',
      'images/views/wisdom4.jpg',
      'images/views/wisdom5.jpg',
      'images/views/wisdom6.jpg',
      'images/views/wisdom7.jpg'
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
            Container(color: Colors.black45, child: WisdomQuote())
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
                MaterialPageRoute(builder: (context) => WisdomPath()),
              );
            },
          ),
        ),
      ]),
    );
  }
}