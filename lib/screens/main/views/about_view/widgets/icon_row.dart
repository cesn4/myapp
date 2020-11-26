import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

class IconRow extends StatelessWidget {
  const IconRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.account_tree,
            color: ThemeColor.light,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.access_alarm,
            color: ThemeColor.light,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.dangerous,
            color: ThemeColor.light,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.tab,
            color: ThemeColor.light,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.backpack,
            color: ThemeColor.light,
          ),
        ],
      ),
    );
  }
}
