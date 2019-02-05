import 'package:flutter/material.dart';
import 'bottom_navbarpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitHome Learning Bottom NavBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBarPage(title: 'FitHome Learning Bottom NavBar'),
    );
  }
}
