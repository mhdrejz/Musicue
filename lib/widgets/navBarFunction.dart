import 'package:flutter/material.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/homeScreen.dart';
import 'package:musicue/screens/library.dart';
import 'package:musicue/screens/playingScreen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/settings.dart';

class CustomnavBarFunction extends StatelessWidget {
  const CustomnavBarFunction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey.shade100,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 55,
                  width: 70,
                  child: dbox(
                      Child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 55,
                  width: 70,
                  child: dbox(
                      Child: IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>  PlayingScreen(index: index, songList: , assetsAudioPlayer: assetsAudioPlayer, SongName:SongName),
                      //   ),
                      // );
                    },
                    icon: Icon(
                      Icons.play_circle_outline,
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
              label: "play"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 55,
                  width: 70,
                  child: dbox(
                    Child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LibraryScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.library_music_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              label: "library"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 55,
                  width: 70,
                  child: dbox(
                    Child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Settings(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              label: "profile")
        ]);
  }
}
