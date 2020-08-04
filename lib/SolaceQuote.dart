import 'package:flutter/material.dart';
import 'dart:math';

class SolaceQuote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> quoteList = [
      'фджорваыфджвоа длфыоадыфвоаджф лфыдаофщыждстмьодофжцддута фос', //only Test-Strings
      'Test2',
      'Test3'
    ];

    Random rnd = new Random();
    int randomIndex = rnd.nextInt(3);

    return Text(
      quoteList.elementAt(randomIndex),
      style: TextStyle(color: Colors.white),
    );
  }
}
