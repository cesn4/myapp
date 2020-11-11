import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/project_model.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/spacing.dart';
import 'package:myapp/widgets/arrow_button.dart';
import 'package:myapp/widgets/background_wrapper.dart';

class ProjectScreen extends StatelessWidget {
  final ProjectModel project;

  ProjectScreen({this.project});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgroundWrapper(
          image:
              'https://i.picsum.photos/id/1063/4867/3215.jpg?hmac=-ksdmOruOUma2z6ENQo9Yqp9T7lsnokLo8SFfAt-UNU',
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(ThemeSpacing.large),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(project.title,
                      style: TextStyle(color: ThemeColor.light, fontSize: 30)),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 500,
                      child: Text(project.summary,
                          style:
                              TextStyle(color: ThemeColor.light, fontSize: 15)))
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 50,
            child: ArrowButton(
              onTap: () => Navigator.pop(context),
            )),
        Positioned(
          right: 50,
          bottom: 50,
          child: Column(
            children: [
              Icon(
                Icons.link_rounded,
                color: ThemeColor.light,
              ),
              SizedBox(height: 20),
              Icon(
                Icons.code,
                color: ThemeColor.light,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
