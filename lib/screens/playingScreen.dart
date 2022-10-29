import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:musicue/funtions/functions.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/playlistScreen.dart';

import 'package:musicue/screens/sample.dart';
import 'package:musicue/widgets/navBarFunction.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayingScreen extends StatefulWidget {
  const PlayingScreen(
      {super.key,
      required this.index,
      required this.songList,
      required this.assetsAudioPlayer,
      required this.SongName,
      required this.ArtistName});
  final int index;
  final AssetsAudioPlayer assetsAudioPlayer;
  final String SongName;
  final String ArtistName;
  final List<SongModel> songList;

  @override
  State<PlayingScreen> createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
  // final List<Audio> songAudio = [
  //   Audio('assets/songs/Athmave.mp3'),
  //   Audio('assets/songs/hope.mp3'),
  //   Audio('assets/songs/Paadi.mp3'),
  //   Audio('assets/songs/Sirikkadhey.mp3'),
  //   Audio('assets/songs/Sirikkalam.mp3'),
  //   Audio('assets/songs/XXXTENTACION.mp3'),
  // ];

  bool isplaying = true;

  List<Audio> songConvertedList = [];
  convertSongModel() {
    for (var song in widget.songList) {
      songConvertedList.add(Audio.file(song.uri!));
    }
  }

  Future<void> playSongs() async {
    await widget.assetsAudioPlayer.open(
      Playlist(
        audios: songConvertedList,
        startIndex: widget.index,
      ),
      autoStart: true,
    );
    log(widget.index.toString());
    log('Song List is ${widget.songList.length}');
    log('Song Converted Is ${songConvertedList.length.toString()}');
  }

  @override
  void initState() {
    // TODO: implement initState
    convertSongModel();
    super.initState();
    playSongs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomnavBarFunction(),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              // backbutton and menu button

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
                  Text('N O W P L A Y I N G'),
                  Container(
                    height: 60,
                    width: 60,
                    child: dbox(
                        Child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (playlist()),
                                  ));
                            },
                            icon: Icon(Icons.playlist_add))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: dbox(
                    Child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 300,
                          width: 300,
                          child: Image.asset(
                            'assets/images/img demo 3.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.ArtistName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: SizedBox(
                                  width: 260,
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    widget.SongName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FavScreen()));
                              },
                              icon: Icon(
                                Icons.favorite,
                                size: 32,
                                color: Colors.red,
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          dbox(Child: Icon(Icons.shuffle)),
                          dbox(Child: Icon(Icons.repeat)),
                        ],
                      ),
                      assetsAudioPlayer.builderRealtimePlayingInfos(
                          builder: (context, Infos) {
                        Duration curentDuration = Infos.currentPosition;
                        Duration totalDuration = Infos.duration;
                        return Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: dbox(
                            Child: ProgressBar(
                              thumbGlowRadius: 3,
                              progressBarColor: Colors.grey,
                              thumbRadius: 6,
                              thumbColor: Colors.grey,
                              progress: curentDuration,
                              total: totalDuration,
                              onSeek: (to) {
                                assetsAudioPlayer.seek(to);
                              },
                            ),
                          ),
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: SizedBox(
                          height: 60,
                          child: Row(
                            children: [
                              Expanded(
                                  child: dbox(
                                      Child: IconButton(
                                          onPressed: () {
                                            widget.assetsAudioPlayer.previous();
                                          },
                                          icon: Icon(Icons.skip_previous)))),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: dbox(
                                      Child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (isplaying == true) {
                                                widget.assetsAudioPlayer
                                                    .pause();
                                                isplaying == false;
                                              } else {
                                                widget.assetsAudioPlayer.play();
                                                isplaying == true;
                                              }
                                              isplaying = !isplaying;
                                            });
                                          },
                                          icon: isplaying == true
                                              ? Icon(Icons.pause)
                                              : Icon(Icons.play_arrow)),
                                    ),
                                  )),
                              Expanded(
                                  child: dbox(
                                      Child: IconButton(
                                          onPressed: () {
                                            widget.assetsAudioPlayer.next();
                                          },
                                          icon: Icon(Icons.skip_next))))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );

    // return Scaffold(
    //   bottomNavigationBar: CustomnavBarFunction(),
    //   body: Container(
    //     color: Colors.grey.shade100,
    //     child: SafeArea(
    //         child: Padding(
    //       padding: const EdgeInsets.all(15.0),
    //       child: Column(
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadius.circular(10),
    //             child: AppBar(
    //               actions: [
    //                 dbox(
    //                   Child: Container(
    //                     height: 50,
    //                     width: 55,
    //                     child: IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(
    //                           Icons.more_vert,
    //                           color: Colors.black,
    //                         )),
    //                   ),
    //                 )
    //               ],
    //               leading: dbox(
    //                 Child: IconButton(
    //                   onPressed: () {
    //                     Navigator.pop(context);
    //                   },
    //                   icon: Icon(
    //                     Icons.arrow_back,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ),
    //               iconTheme: IconThemeData(color: Colors.black),
    //               backgroundColor: Colors.grey[200],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(top: 10),
    //             child: dbox(
    //               Child: Container(
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(13),
    //                   // color: Colors.grey.shade400
    //                 ),
    //                 height: 400,
    //                 width: 300,
    //                 child: Center(
    //                   child: Container(
    //                     child: ClipRRect(
    //                         borderRadius: BorderRadius.circular(13),
    //                         child: Image.asset(
    //                           'assets/images/img demo 2.jpg',
    //                           fit: BoxFit.cover,
    //                         )),
    //                     height: 250,
    //                     width: 200,
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(13),
    //                       // color: Colors.grey.shade700
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Container(
    //             child: Padding(
    //               padding: const EdgeInsets.all(30.0),
    //               child: Column(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       Text(
    //                         '0:00',
    //                         style: TextStyle(fontSize: 13, color: Colors.black),
    //                       ),
    //                       Icon(Icons.shuffle),
    //                       Icon(Icons.repeat),
    //                       Text(
    //                         '4:22',
    //                         style: TextStyle(fontSize: 13, color: Colors.black),
    //                       )
    //                     ],
    //                   ),
    //                   SizedBox(height: 15),
    //                   SizedBox(
    //                     height: 18,
    //                     child: dbox(
    //                       Child: LinearPercentIndicator(
    //                         progressColor: Colors.green,
    //                         backgroundColor: Colors.transparent,
    //                         lineHeight: 8,
    //                         percent: 0.6,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 15,
    //                   ),
    //                   SizedBox(
    //                     height: 60,
    //                     child: Row(
    //                       children: const [
    //                         Expanded(
    //                             child: dbox(Child: Icon(Icons.skip_previous))),
    //                         Expanded(
    //                             flex: 2,
    //                             child: Padding(
    //                               padding:
    //                                   EdgeInsets.symmetric(horizontal: 20.0),
    //                               child: dbox(Child: Icon(Icons.play_arrow)),
    //                             )),
    //                         Expanded(child: dbox(Child: Icon(Icons.skip_next)))
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     )),
    //   ),
    // );
  }
}
