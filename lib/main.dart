import 'package:flutter/material.dart';
import 'package:myapp/constants/routes.dart';
import 'package:myapp/screens/main/main_screen.dart';
import 'package:myapp/screens/main/views/home_view.dart';
import 'package:myapp/screens/main/views/works_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.mainScreenRoute,
      routes: {
        Routes.mainScreenRoute: (context) => MainScreen(),
      },
    );
  }
}
