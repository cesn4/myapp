import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/constants/projects.dart';
import 'package:myapp/widgets/project_title.dart';

class WorksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List projectTitles =
        projects.map((e) => ProjectTitle(title: e.title)).toList();
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.picsum.photos/id/1018/3914/2935.jpg?hmac=3N43cQcvTE8NItexePvXvYBrAoGbRssNMpuvuWlwMKg'))),
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
            child: Padding(
              padding: EdgeInsets.all(50),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: projectTitles,
              ),
            )));
  }
}
