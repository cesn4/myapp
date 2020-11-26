import 'package:flutter/material.dart';

class BackgroundWrapper extends StatelessWidget {
  final String image;
  final Widget child;
  const BackgroundWrapper({Key key, @required this.child, @required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    image))),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ],
                  stops: [
                0.0,
                0.8
              ])),
          child: child,
        ));
  }
}
