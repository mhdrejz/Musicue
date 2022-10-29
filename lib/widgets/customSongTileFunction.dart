import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:musicue/screens/library.dart';
import 'package:musicue/screens/playingScreen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/widgets/diologBox.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongsListTile extends StatelessWidget {
  const SongsListTile({
    Key? key,
    required this.image,
    required this.songname,
    required this.singer,
    required this.index,
    required this.songList,
  }) : super(key: key);
  final String image;
  final String songname;
  final String singer;
  final int index;
  final List<SongModel> songList;

  @override
  Widget build(BuildContext context) {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer.withId('0');
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 90,
        child: InkWell(
          onTap: () {
            log(index.toString());
            log('Song List in CustomSongListTileFunction ${songList.length}');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  return PlayingScreen(
                    index: index,
                    assetsAudioPlayer: assetsAudioPlayer,
                    SongName: songname,
                    songList: songList,
                    ArtistName: singer,
                  );
                }),
              ),
            );
          },
          child: dbox(
            Child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
                title: Text(songname, style: TextStyle(color: Colors.black)),
                subtitle: Text(
                  singer,
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    // border: Border.all(width: 0.0),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      PopupMenuButton(
                          icon: Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          ),
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.redAccent,
                                        )),
                                    IconButton(
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LibraryScreen())),
                                        icon: Icon(Icons.playlist_add)),
                                  ],
                                ))
                              ]);
                    },
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: Colors.black,
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
