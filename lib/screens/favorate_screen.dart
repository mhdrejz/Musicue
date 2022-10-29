import 'dart:math';

import 'package:flutter/material.dart';
import 'package:musicue/screens/playingScreen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/searchScreen.dart';
import 'package:musicue/widgets/appBar.dart';
import 'package:musicue/widgets/customSongTileFunction.dart';
import 'package:musicue/widgets/listtile.dart';
import 'package:musicue/widgets/allSongFunction.dart';
import 'package:musicue/widgets/navBarFunction.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomnavBarFunction(),
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: dbox(
                            Child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back))),
                      ),
                      Text('L I K E D S O N G S'),
                      Container(
                        height: 60,
                        width: 60,
                        child: dbox(
                            Child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SearchScreen(),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.search))),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 580,
                      child: Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          children: const [
                            SongsListTile(
                              image: 'assets/images/img demo 4.jpg',
                              songname: 'B E K H A Y A L I',
                              singer: 'A R J I T  S I G H',
                              index: 0,
                              songList: [],
                            ),
                            SongsListTile(
                              image: 'assets/images/img demo 5.jpg',
                              songname: 'H O P E',
                              singer: 'X X X T E N T A C T I O N',
                              index: 1,
                              songList: [],
                            ),
                            SongsListTile(
                              image: 'assets/images/img demo 2.jpg',
                              songname: 'M O O N  L I G H T',
                              singer: 'X X X T E N T A C T I O N',
                              index: 2,
                              songList: [],
                            ),
                            SongsListTile(
                              image: 'assets/images/img demo 8.jpg',
                              songname: 'R O C K A N K U T H U',
                              singer: 'A N I R U D H',
                              index: 3,
                              songList: [],
                            ),
                            SongsListTile(
                              image: 'assets/images/img demo 9 gv prakash.jpg',
                              songname: 'Y A T H E  Y A T H E',
                              singer: 'G V P R A K A S H',
                              index: 4,
                              songList: [],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
