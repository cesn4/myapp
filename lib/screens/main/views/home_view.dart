import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/constants/titles.dart';
import 'package:myapp/widgets/classic_button.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentTitleIndex = 0;
  Timer _titleTimer;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _titleTimer =
          Timer.periodic(Duration(seconds: 2), (Timer t) => updateTitleIndex());
    }
  }

  @override
  void dispose() {
    _titleTimer?.cancel();
    super.dispose();
  }

  updateTitleIndex() {
    setState(() {
      if (titles.length - 1 != _currentTitleIndex) {
        _currentTitleIndex = _currentTitleIndex + 1;
      } else {
        _currentTitleIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68'))),
      child: Align(
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
          padding: EdgeInsets.symmetric(vertical: 150.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Text(
                  titles[_currentTitleIndex],
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                ClassicButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
