import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/library.dart';
import 'package:musicue/screens/playlistScreen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/searchScreen.dart';
import 'package:musicue/widgets/allSongFunction.dart';
import 'package:musicue/widgets/appBar.dart';
import 'package:musicue/widgets/customCards.dart';
import 'package:musicue/widgets/mainCards.dart';
import 'package:musicue/widgets/navBarFunction.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        bottomNavigationBar: CustomnavBarFunction(),
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: [
              MainCards(),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      'SONGS',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              // customCard1(libraryname: 'dd'),
              // customCard1(libraryname: 'dd'),
              // customCard1(libraryname: 'dd'),
              // customCard1(libraryname: 'dd'),
              // customCard1(libraryname: 'dd'),
            ],
          ),
        ));
  }
}
