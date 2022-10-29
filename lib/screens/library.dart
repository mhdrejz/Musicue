import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/playingScreen.dart';
import 'package:musicue/screens/playlistScreen.dart';

import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/searchScreen.dart';
import 'package:musicue/widgets/customSongTileFunction.dart';
import 'package:musicue/widgets/listtile.dart';
import 'package:musicue/widgets/navBarFunction.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

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
//backbutton and menu button

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
                  Text('L I B R A R Y'),
                  Container(
                    height: 60,
                    width: 60,
                    child: dbox(
                        Child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchScreen(),
                                ),
                              );
                            },
                            icon: Icon(Icons.search))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    dbox(
                      Child: Container(
                        width: 145,
                        height: 50,
                        child: Center(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const FavScreen(),
                                    ),
                                  );
                                },
                                child: Text('L I K E D S O N G S'))),
                      ),
                    ),
                    dbox(
                      Child: Container(
                        width: 145,
                        height: 50,
                        child: Center(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const playlist(),
                                  ),
                                );
                              },
                              child: Text('P L A Y L I S T')),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: dbox(
                    Child: Container(
                        child: Text(
                  'R E C E N T L Y P L A Y E D ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ))),
              ),
              Divider(
                thickness: 4,
              ),
              Expanded(
                  child: ListView(
                children: const [
                  SongsListTile(
                    image: 'assets/images/sushin shyam.jpg',
                    songname: 'A T H M A V E  P O',
                    singer: 'S U S H I N  S H Y A M',
                    index: 0,
                    songList: [],
                  ),
                  SongsListTile(
                    image: 'assets/images/xxxtentaction.jpg',
                    songname: 'H O P E',
                    singer: 'X X X T E N T A C T I O N',
                    index: 1,
                    songList: [],
                  ),
                  SongsListTile(
                    image: 'assets/images/shahabaz aman.jpg',
                    songname: 'P A A D I  N J A N',
                    singer: 'S H A H A B A Z  A M A N',
                    index: 2,
                    songList: [],
                  ),
                  SongsListTile(
                    image: 'assets/images/img demo 8.jpg',
                    songname: 'S I R I K A D H E Y',
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
              ))
            ],
          ),
        )),
      ),

      //   bottomNavigationBar: CustomnavBarFunction(),
      //   body: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       children: [
      //         AppBar(
      //           backgroundColor: Colors.grey.shade100,
      //           leading: dbox(
      //               Child: IconButton(
      //                   onPressed: () {
      //                     Navigator.pop(context);
      //                   },
      //                   icon: Icon(
      //                     Icons.arrow_back,
      //                     color: Colors.black,
      //                   ))),
      //           actions: [
      //             dbox(
      //                 Child: Container(
      //               height: 50,
      //               width: 55,
      //               child: Icon(
      //                 Icons.more_vert_outlined,
      //                 color: Colors.black,
      //               ),
      //             ))
      //           ],
      //         ),

      //         Padding(
      //           padding: const EdgeInsets.only(top: 10),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               InkWell(
      //                 onTap: () {
      //                   Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => const FavScreen(),
      //                     ),
      //                   );
      //                 },
      //                 child: dbox(
      //                   Child: Container(
      //                     height: 55,
      //                     width: 183,
      //                     child: Row(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.all(8.0),
      //                           child: Text(
      //                             'LIKED SONGS',
      //                             style: TextStyle(
      //                                 fontSize: 20,
      //                                 fontWeight: FontWeight.w500,
      //                                 color: Colors.black54),
      //                           ),
      //                         ),
      //                         Icon(
      //                           Icons.favorite,
      //                           color: Colors.black87,
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               InkWell(
      //                 onTap: () {
      //                   Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => const playlist(),
      //                     ),
      //                   );
      //                 },
      //                 child: dbox(
      //                   Child: Container(
      //                     height: 55,
      //                     width: 180,
      //                     child: Row(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.all(8.0),
      //                           child: Text(
      //                             'PLAYLIST',
      //                             style: TextStyle(
      //                                 fontSize: 20,
      //                                 fontWeight: FontWeight.w500,
      //                                 color: Colors.black54),
      //                           ),
      //                         ),
      //                         Icon(
      //                           Icons.playlist_add_check_rounded,
      //                           size: 35,
      //                           color: Colors.black,
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         // Padding(
      //         //   padding: const EdgeInsets.only(top: 10),
      //         //   child: Row(
      //         //     children: [
      //         //       Container(
      //         //         height: 50,
      //         //         width: 200,
      //         //         child: Text('Recently played',
      //         //             style: TextStyle(
      //         //                 fontSize: 24,
      //         //                 fontWeight: FontWeight.w500,
      //         //                 color: Colors.black54),
      //         // ),
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),

      //         Padding(
      //           padding: const EdgeInsets.only(
      //             top: 20,
      //           ),
      //           child: Container(
      //             width: 400,
      //             height: 580,
      //             child: Expanded(
      //                 child: ListView(
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 9),
      //                   child: Text(
      //                     'Recently played',
      //                     style: TextStyle(
      //                         fontSize: 24,
      //                         fontWeight: FontWeight.w500,
      //                         color: Colors.black54),
      //                   ),
      //                 ),
      //                 Divider(
      //                   thickness: 3,
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 12),
      //                   child: dbox(Child: listtile()),
      //                 ),
      //               ],
      //             )),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
    );
  }
}
