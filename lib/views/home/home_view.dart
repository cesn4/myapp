import 'package:flutter/material.dart';
import 'package:myapp/widgets/classic_button.dart';
import 'package:myapp/widgets/navigation_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68'))),
          child: Container(
            padding: EdgeInsets.only(bottom: 100.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClassicButton(),
            ),
          ),
        ),
        Positioned(
          height: 280.0,
          top: 50,
          right: 50,
          child: NavigationBar(),
        )
      ],
    ));
  }
}
