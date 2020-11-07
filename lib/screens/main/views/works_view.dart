import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/constants/categories.dart';
import 'package:myapp/constants/projects.dart';
import 'package:myapp/widgets/category_item.dart';
import 'package:myapp/widgets/project_item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WorksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List projectTitles =
        projects.map((e) => ProjectItem(title: e.title)).toList();
    List projectCategories = categories
        .map((e) => CategoryItem(
              title: e,
            ))
        .toList();
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
              padding: const EdgeInsets.only(left: 50, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 180,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: projectCategories),
                  ),
                  CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 1,
                        viewportFraction: 0.15,
                        scrollDirection: Axis.vertical,
                      ),
                      items: projectTitles)
                ],
              ),
            )));
  }
}
