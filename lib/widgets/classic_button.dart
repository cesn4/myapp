import 'package:flutter/material.dart';

class ClassicButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.transparent,
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 2.0)),
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
        child: Text(
          'View Work',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      onPressed: () {},
    );
  }
}
