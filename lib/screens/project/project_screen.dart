import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/project_model.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/widgets/arrow_button.dart';

class ProjectScreen extends StatelessWidget {
  final ProjectModel project;

  ProjectScreen({this.project});
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
                      'https://i.picsum.photos/id/1063/4867/3215.jpg?hmac=-ksdmOruOUma2z6ENQo9Yqp9T7lsnokLo8SFfAt-UNU'))),
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
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title,
                        style:
                            TextStyle(color: ThemeColor.light, fontSize: 30)),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: 500,
                        child: Text(project.summary,
                            style: TextStyle(
                                color: ThemeColor.light, fontSize: 15)))
                  ],
                ),
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
              Icon( Icons.link_rounded, color: ThemeColor.light,),
              SizedBox(height: 20),
              Icon( Icons.code, color: ThemeColor.light,),
            ],
          ),
        )
      ],
    ));
  }
}
