import 'package:flutter/material.dart';

//TODO: imprint, etc.

class GDPR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/views/backgroundTest.jpg'),
          fit: BoxFit.cover,
        )),
      ),
      Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(10),
        child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      )
    ]));
  }
}
