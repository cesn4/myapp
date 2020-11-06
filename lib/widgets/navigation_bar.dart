import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.blur_circular,
          color: Colors.white,
          size: 30.0,
        ),
        RotatedBox(
          child: Text(
            'Work',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          quarterTurns: 1,
        ),
        RotatedBox(
          child: Text(
            'About',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          quarterTurns: 1,
        ),
        RotatedBox(
          child: Text(
            'Contact',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          quarterTurns: 1,
        ),
      ],
    );
  }
}
