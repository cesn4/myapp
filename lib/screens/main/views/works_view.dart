import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/constants/categories.dart';
import 'package:myapp/constants/projects.dart';
import 'package:myapp/constants/routes.dart';
import 'package:myapp/screens/project/project_screen.dart';
import 'package:myapp/theme/spacing.dart';
import 'package:myapp/widgets/background_wrapper.dart';
import 'package:myapp/widgets/category_item.dart';
import 'package:myapp/widgets/project_item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WorksView extends StatefulWidget {
  @override
  _WorksViewState createState() => _WorksViewState();
}

class _WorksViewState extends State<WorksView> {
  int _activeIndex = 0;

  _changeActiveIndex(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List projectTitles = projects
        .asMap()
        .entries
        .map((e) => ProjectItem(
              title: e.value.title,
              isActive: e.key == _activeIndex,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProjectScreen(project: projects[e.key]))),
            ))
        .toList();
    List projectCategories = categories
        .map((e) => CategoryItem(
              title: e,
              isActive: projects[_activeIndex].category.contains(e),
            ))
        .toList();
    return BackgroundWrapper(
      image:
          'https://i.picsum.photos/id/1018/3914/2935.jpg?hmac=3N43cQcvTE8NItexePvXvYBrAoGbRssNMpuvuWlwMKg',
      child: Padding(
        padding: EdgeInsets.only(right: ThemeSpacing.max),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: projectCategories),
            ),
            CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index, reason) => _changeActiveIndex(index),
                  aspectRatio: 1,
                  viewportFraction: 0.15,
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                ),
                items: projectTitles)
          ],
        ),
      ),
    );
  }
}
