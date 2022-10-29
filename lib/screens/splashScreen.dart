import 'dart:async';
import 'package:flutter/material.dart';
import 'package:musicue/screens/homeScreen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestPermission();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  void requestPermission() {
    Permission.storage.request();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Row(
              children: const [
                dbox(Child: Text(' ')),
                dbox(Child: Text(' ')),
                dbox(Child: Text(' ')),
                dbox(
                    Child: Text(
                  ' [ ',
                  style: TextStyle(fontSize: 30),
                )),
                dbox(
                    Child: Text(
                  'M',
                  style: TextStyle(fontSize: 20),
                )),
                dbox(
                    Child: Text(
                  'U',
                  style: TextStyle(fontSize: 20),
                )),
                dbox(
                    Child: Text(
                  'S',
                  style: TextStyle(fontSize: 20),
                )),
                dbox(
                    Child: Text(
                  ' I ',
                  style: TextStyle(fontSize: 20),
                )),
                dbox(
                    Child: Text(
                  'C',
                  style: TextStyle(fontSize: 20),
                )),
                dbox(
                    Child: Text(
                  'U',
                  style: TextStyle(fontSize: 20),
                )),
                dbox(
                    Child: Text(
                  'E',
                  style: TextStyle(fontSize: 20),
                )),
                dbox(
                    Child: Text(
                  ' ] ',
                  style: TextStyle(fontSize: 30),
                )),
                dbox(Child: Text(' ')),
                dbox(Child: Text(' ')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
