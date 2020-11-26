import 'package:flutter/material.dart';
import 'package:myapp/screens/main/views/about_view/widgets/icon_column.dart';
import 'package:myapp/screens/main/views/about_view/widgets/icon_row.dart';
import 'package:myapp/theme/breakpoints.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/spacing.dart';
import 'package:myapp/widgets/background/background_wrapper.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      bool isMobile = constrains.maxWidth <= Breakpoints.phone;
      if (isMobile) {
        return BackgroundWrapper(
          image:
              'https://i.picsum.photos/id/1002/4312/2868.jpg?hmac=5LlLE-NY9oMnmIQp7ms6IfdvSUQOzP_O3DPMWmyNxwo',
          child: Padding(
            padding: EdgeInsets.all(ThemeSpacing.large),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello, this is Me',
                        style:
                            TextStyle(color: ThemeColor.light, fontSize: 25)),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: constrains.maxWidth * 0.60,
                      child: Text(
                          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ',
                          style:
                              TextStyle(color: ThemeColor.light, fontSize: 15)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                IconColumn(),
              ],
            ),
          ),
        );
      } else {
        return BackgroundWrapper(
          image:
              'https://i.picsum.photos/id/1002/4312/2868.jpg?hmac=5LlLE-NY9oMnmIQp7ms6IfdvSUQOzP_O3DPMWmyNxwo',
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(ThemeSpacing.large),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, this is Me',
                      style: TextStyle(color: ThemeColor.light, fontSize: 25)),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Text(
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ',
                        style:
                            TextStyle(color: ThemeColor.light, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconRow(),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
