import 'package:flutter/material.dart';
import 'package:myapp/constants/routes.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({Key key}) : super(key: key);

  @override
  _StartupScreenState createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  Image myImage;
  Image myImage2;
  Image myImage3;
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
  }

  @override
  void didChangeDependencies() {
    precacheImage(myImage.image, context).then((result) {
      setState(() {
        _imagesLoaded = true;
      });
      Navigator.popAndPushNamed(context, Routes.mainScreenRoute);
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _imagesLoaded ? Text('Loaded') : Text('Loading'),
      ),
    );
  }
}
