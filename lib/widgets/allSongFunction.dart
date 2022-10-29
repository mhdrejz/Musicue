import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:musicue/widgets/customSongTileFunction.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AllSongFunction extends StatefulWidget {
  const AllSongFunction({super.key});

  @override
  State<AllSongFunction> createState() => _AllSongFunctionState();
}

class _AllSongFunctionState extends State<AllSongFunction> {
  final _audioQuery = OnAudioQuery();
  List<SongModel> allsongslist = [];
  Future<void> songlistFunction() async {
    allsongslist = await _audioQuery.querySongs(
        sortType: null,
        orderType: OrderType.ASC_OR_SMALLER,
        uriType: UriType.EXTERNAL,
        ignoreCase: true);

    if (allsongslist.isEmpty) {
      log('All song list is Empty');
    } else {
      log('All song list is ${allsongslist.length}');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    songlistFunction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SongModel>>(
        future: _audioQuery.querySongs(
            sortType: null,
            orderType: OrderType.ASC_OR_SMALLER,
            uriType: UriType.EXTERNAL,
            ignoreCase: true),
        builder: (context, item) {
          if (item.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (item.data!.isEmpty) {
            return Center(
              child: Text('No song found'),
            );
          }

          return ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) =>
                //  ListTile(
                //   leading: Icon(Icons.music_note),
                //   title: Text(item.data![index].displayNameWOExt),
                //   subtitle: Text('${item.data![index].artist} '),
                //   trailing: Icon(Icons.more_horiz),
                // ),
                SongsListTile(
              image: 'assets/images/img demo 9 gv prakash.jpg',
              songname: item.data![index].title,
              singer: item.data![index].artist ?? '<Unknown>',
              index: index,
              songList: item.data!,
            ),
            itemCount: item.data!.length,
          );
        });
  }
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     physics: ScrollPhysics(),
  //     itemBuilder: (context, index) {
  //       return SongsListTile(
  //         image: 'assets/images/img demo 9 gv prakash.jpg',
  //         songname: allsongslist[index].title,
  //         singer: allsongslist[index].artist ?? 'Unknown',
  //         index: index,
  //         songList: allsongslist,
  //       );
  //     },
  //     itemCount: allsongslist.length,
  //   );
  // }
}
