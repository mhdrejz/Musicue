import 'package:flutter/material.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/home2.dart';
import 'package:musicue/screens/homeScreen.dart';
import 'package:musicue/screens/playingScreen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musicue',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
