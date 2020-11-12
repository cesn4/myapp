import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/constants/titles.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/font.dart';
import 'package:myapp/theme/spacing.dart';
import 'package:myapp/widgets/background_wrapper.dart';
import 'package:myapp/widgets/classic_button.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentTitleIndex = 0;
  Timer _titleTimer;
  Image myImage;
  @override
  void initState() {
    super.initState();
    myImage = Image.network(
        'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68');
    if (mounted) {
      _titleTimer =
          Timer.periodic(Duration(seconds: 2), (Timer t) => updateTitleIndex());
    }
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
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
    return BackgroundWrapper(
      image:
          'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      child: Padding(
        padding: EdgeInsets.all(ThemeSpacing.max),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                titles[_currentTitleIndex],
                style: TextStyle(
                    fontSize: ThemeFontSize.large,
                    fontWeight: FontWeight.w800,
                    color: ThemeColor.light),
              ),
              ClassicButton(
                title: 'View Work',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
