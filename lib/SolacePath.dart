import 'package:flutter/material.dart';
import 'dart:math';
import './SolaceQuote.dart';

//TODO: add Quote-Strings

class SolacePath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic pictureList = [
      'images/views/lonely0.jpg',
      'images/views/lonely1.jpg',
      'images/views/lonely2.jpg',
      'images/views/lonely3.jpg',
      'images/views/lonely4.jpg',
      'images/views/lonely5.jpg',
      'images/views/lonely6.jpg',
      'images/views/lonely7.jpg',
      'images/views/lonely8.jpg',
      'images/views/lonely9.jpg',
      'images/views/lonely10.jpg',
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

    int randomIndex = rnd.nextInt(19);
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
            Container(color: Colors.black45, child: SolaceQuote())
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
                MaterialPageRoute(builder: (context) => SolacePath()),
              );
            },
          ),
        ),
      ]),
    );
  }
}
