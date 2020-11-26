import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

class IconColumn extends StatelessWidget {
  const IconColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.account_tree,
          color: ThemeColor.light,
        ),
        Icon(
          Icons.access_alarm,
          color: ThemeColor.light,
        ),
        Icon(
          Icons.dangerous,
          color: ThemeColor.light,
        ),
        Icon(
          Icons.tab,
          color: ThemeColor.light,
        ),
        Icon(
          Icons.backpack,
          color: ThemeColor.light,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}