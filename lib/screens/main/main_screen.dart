import 'package:flutter/material.dart';
import 'package:myapp/screens/main/views/about_view/about_view.dart';
import 'package:myapp/screens/main/views/contact_view/contact_view.dart';
import 'package:myapp/screens/main/views/home_view.dart';
import 'package:myapp/screens/main/views/works_view.dart';
import 'package:myapp/theme/breakpoints.dart';
import 'package:myapp/widgets/navigation/mobile_navigation.dart';
import 'package:myapp/widgets/navigation/desktop_navigation.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentViewIndex = 0;
  Image myImage;
  Image myImage2;
  Image myImage3;
  Image myImage4;
  bool _imagesLoaded = false;

  @override
  void initState() {
    super.initState();
    myImage = Image.network(
        'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68');
    myImage2 = Image.network(
        'https://i.picsum.photos/id/1002/4312/2868.jpg?hmac=5LlLE-NY9oMnmIQp7ms6IfdvSUQOzP_O3DPMWmyNxwo');
    myImage3 = Image.network(
        'https://i.picsum.photos/id/1018/3914/2935.jpg?hmac=3N43cQcvTE8NItexePvXvYBrAoGbRssNMpuvuWlwMKg');
    myImage4 = Image.network(
        'https://i.picsum.photos/id/1033/2048/1365.jpg?hmac=zEuPfX7t6U866nzXjWF41bf-uxkKOnf1dDrHXmhcK-Q');
  }

  @override
  void didChangeDependencies() async {
    await precacheImage(myImage.image, context);
    await precacheImage(myImage2.image, context);
    await precacheImage(myImage3.image, context);
    await precacheImage(myImage4.image, context);
    setState(() {
      _imagesLoaded = true;
    });

    super.didChangeDependencies();
  }

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
    if (_imagesLoaded == false) {
      return Scaffold(
        body: Center(
          child: Text('Loading'),
        ),
      );
    }
    return Scaffold(
      body: LayoutBuilder(builder: (context, constrains) {
        bool isMobile = constrains.maxWidth <= Breakpoints.phone;
        if (isMobile) {
          return Container(
            child: Stack(
              children: [
                _getCurrentView(),
                Positioned(
                    bottom: 0,
                    // left: 25,
                    child: MobileNavigation(
                      activeButton: _currentViewIndex,
                      homeViewTrigger: () => _setCurrentView(0),
                      worksViewTrigger: () => _setCurrentView(1),
                      aboutViewTrigger: () => _setCurrentView(2),
                      contactViewTrigger: () => _setCurrentView(3),
                    )),
              ],
            ),
          );
        } else {
          return Container(
            child: Stack(
              children: [
                _getCurrentView(),
                Positioned(
                  top: 50,
                  right: 50,
                  child: DesktopNavigation(
                    horizontal: false,
                    homeViewTrigger: () => _setCurrentView(0),
                    worksViewTrigger: () => _setCurrentView(1),
                    aboutViewTrigger: () => _setCurrentView(2),
                    contactViewTrigger: () => _setCurrentView(3),
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
