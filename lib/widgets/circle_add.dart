import 'package:flutter/material.dart';

class CircleAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 24,
      height: 24,
      decoration: new BoxDecoration(
        color: Colors.white,
        image: new DecorationImage(
          image: AssetImage(
            "assets/icons/add.png",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
        border: new Border.all(
          color: Colors.green,
          width: 4.0,
        ),
      ),
    );
  }
}
