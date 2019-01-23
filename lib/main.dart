import 'package:app_exploration/home_screen.dart';
import 'package:app_exploration/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  AppState createState() {
    return new AppState();
  }
}

class AppState extends State<App>  with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) =>FadeTransition(
          child:  new HomeScreen(), opacity: new CurvedAnimation(parent: animation, curve: Curves.easeIn),)
      },
    );
  }
}


