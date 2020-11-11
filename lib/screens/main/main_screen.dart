import 'package:flutter/material.dart';
import 'package:myapp/screens/main/views/about_view.dart';
import 'package:myapp/screens/main/views/contact_view/contact_view.dart';
import 'package:myapp/screens/main/views/home_view.dart';
import 'package:myapp/screens/main/views/works_view.dart';
import 'package:myapp/widgets/navigation_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentViewIndex = 3;

  _getCurrentView() {
    switch (_currentViewIndex) {
      case 0:
        return HomeView();
      case 1:
        return WorksView();
      case 2:
        return AboutView();
      case 3:
        return ContactView();
    }
  }

  _setCurrentView(int viewIndex) {
    setState(() {
      _currentViewIndex = viewIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _getCurrentView(),
            Positioned(
              top: 50,
              right: 50,
              child: NavigationBar(
                homeViewTrigger: () => _setCurrentView(0),
                worksViewTrigger: () => _setCurrentView(1),
                aboutViewTrigger: () => _setCurrentView(2),
                contactViewTrigger: () => _setCurrentView(3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
