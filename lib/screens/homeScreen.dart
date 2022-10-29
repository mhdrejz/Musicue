import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/library.dart';
import 'package:musicue/screens/playlistScreen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/searchScreen.dart';
import 'package:musicue/screens/settings.dart';
import 'package:musicue/widgets/allSongFunction.dart';
import 'package:musicue/widgets/appBar.dart';
import 'package:musicue/widgets/customCards.dart';
import 'package:musicue/widgets/customSongTileFunction.dart';
import 'package:musicue/widgets/drawer.dart';
import 'package:musicue/widgets/navBarFunction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  GlobalKey<ScaffoldState> _globalkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      key: _globalkey,
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomnavBarFunction(),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FavScreen(),
                            ),
                          );
                        },
                        child: customCard1(libraryname: 'L I K E D')),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LibraryScreen(),
                            ),
                          );
                        },
                        child: customCard2(libraryname: ' R E C E N T L Y')),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const playlist(),
                            ),
                          );
                        },
                        child: customCard3(libraryname: ' P L A Y L I S T'))
                  ],
                ),
              ),
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
              Divider(
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Expanded(child: AllSongFunction()),
              )
            ],
          ),
        )),
      ),

      //   bottomNavigationBar: CustomnavBarFunction(),
      //   body: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: SafeArea(
      //       child: Column(
      //         children: [
      //           ClipRRect(
      //             borderRadius: BorderRadius.circular(10),
      //             child: AppBar(
      //               backgroundColor: Colors.grey.shade100,
      //               centerTitle: true,
      //               title: Text(
      //                 'MUSICUE',
      //                 style: TextStyle(
      //                   fontSize: 30,
      //                   fontStyle: FontStyle.normal,
      //                   fontWeight: FontWeight.w600,
      //                   color: Colors.black,
      //                 ),
      //               ),
      //               leading: dbox(
      //                   Child: IconButton(
      //                       onPressed: () {},
      //                       icon: Icon(
      //                         Icons.menu,
      //                         color: Colors.black,
      //                       ))),
      //               actions: [
      //                 dbox(
      //                   Child: Container(
      //                     height: 50,
      //                     width: 55,
      //                     child: Icon(
      //                       Icons.search,
      //                       color: Colors.black,
      //                     ),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),

      //           // body........//

      //           Padding(
      //             padding: const EdgeInsets.only(top: 10),
      //             child: Padding(
      //               padding: const EdgeInsets.only(top: 10),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   InkWell(
      //                       onTap: () {
      //                         Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                             builder: (context) => const FavScreen(),
      //                           ),
      //                         );
      //                       },
      //                       child: customCard1(libraryname: 'Liked songs')),
      //                   InkWell(
      //                       onTap: () {
      //                         Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                             builder: (context) => const LibraryScreen(),
      //                           ),
      //                         );
      //                       },
      //                       child: customCard2(libraryname: 'recently played')),
      //                   InkWell(
      //                       onTap: () {
      //                         Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                               builder: (context) => const playlist()),
      //                         );
      //                       },
      //                       child: customCard3(libraryname: 'playlist'))
      //                 ],
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(top: 15),
      //             child: Container(
      //               width: 400,
      //               height: 500,
      //               child: Column(
      //                 children: [
      //                   Row(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.all(8.0),
      //                         child: Text('LIBRARY',
      //                             style: TextStyle(
      //                                 fontSize: 24,
      //                                 fontWeight: FontWeight.w500,
      //                                 color: Colors.black54)),
      //                       )
      //                     ],
      //                   ),
      //                   Expanded(
      //                       child: ListView(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 8, bottom: 8),
      //                         child: dbox(
      //                             Child: InkWell(
      //                                 onTap: () {
      //                                   Navigator.push(
      //                                     context,
      //                                     MaterialPageRoute(
      //                                       builder: (context) =>
      //                                           const PlayingScreen(),
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: listtile())),
      //                       ),
      //                     ],
      //                   )
      //                   )
      //                 ],
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),

      //   ),
    );
  }
}
