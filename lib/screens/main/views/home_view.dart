import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/constants/titles.dart';
import 'package:myapp/theme/breakpoints.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/font.dart';
import 'package:myapp/theme/spacing.dart';
import 'package:myapp/widgets/background/background_wrapper.dart';
import 'package:myapp/widgets/buttons/classic_button.dart';

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
    return LayoutBuilder(builder: (context, constrains) {
      bool isMobile = constrains.maxWidth <= Breakpoints.phone;
      return BackgroundWrapper(
        image:
            'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
        child: Padding(
          padding: isMobile
              ? EdgeInsets.symmetric(horizontal: 25, vertical: 50)
              : EdgeInsets.all(ThemeSpacing.max),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Text(
                  titles[_currentTitleIndex],
                  textAlign: TextAlign.center,
                  style: isMobile
                      ? TextStyle(
                          fontSize: ThemeFontSize.large * 0.8,
                          fontWeight: FontWeight.w800,
                          color: ThemeColor.light)
                      : TextStyle(
                          fontSize: ThemeFontSize.large,
                          fontWeight: FontWeight.w800,
                          color: ThemeColor.light),
                ),
                isMobile
                    ? Container() : ClassicButton(
                        title: 'View Work',
                        onPressed: () {},
                      )
              ],
            ),
          ),
        ),
      );
    });
  }
}
