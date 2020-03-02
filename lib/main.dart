import 'package:flutter/material.dart';
import './SplashScreen.dart';
import './LoginScreen.dart';
import './HomeScreen/HomeScreenHorizontal.dart';
import './HomeScreen/HomeScreenList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notshi',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/LoginScreen': (context) => LoginScreen(),
        '/HomeScreenHorizontal': (context) => HomeScreenHorizontal(),
        '/HomeScreenList': (context) => HomeScreenList(),
      },
    );
  }
}
