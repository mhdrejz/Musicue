// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter/material.dart';
// import 'package:marquee/marquee.dart';
// import 'package:musicue/funtions/functions.dart';
// import 'package:on_audio_query/on_audio_query.dart';

// class miniPlayer extends StatefulWidget {
//   const miniPlayer({super.key});

//   @override
//   State<miniPlayer> createState() => _miniPlayerState();
// }

// class _miniPlayerState extends State<miniPlayer> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: 50,
//         child: ListTile(
//           tileColor: Color.fromARGB(255, 104, 102, 102),
//           contentPadding: const EdgeInsets.only(bottom: 15, left: 5, top: 7),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           leading: QueryArtworkWidget(
//             id: int.parse(myAudio.metas.id!),
//             artworkFit: BoxFit.fill,
//             artworkBorder: BorderRadius.circular(15),
//             type: ArtworkType.AUDIO,
//             nullArtworkWidget: ClipOval(
//               child: Image.asset(
//                 'assets/images/home/282775792_551198669707007_1507136733228624337_n.jpg',
//                 width: 42,
//                 height: 51,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) =>
//                   PlayerMain(index: widget.index, myaudiosong: audiosongs),
//             ));
//           },
//           title: Marquee(
//             text: myAudio.metas.title.toString(),
//             pauseAfterRound: const Duration(seconds: 3),
//             velocity: 30,
//             blankSpace: 50,
//             style: const TextStyle(
//                 fontFamily: "poppinz",
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold),
//           ),
//           trailing: Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               prevvisible
//                   ? Visibility(
//                       visible: prevvisible,
//                       child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               widget.index = widget.index + 1;
//                               if (widget.index != audiosongs.length - 1) {
//                                 nxtvisible = true;
//                               }
//                               assetsAudioPlayer.previous();
//                             });
//                           },
//                           icon: const Icon(
//                             Icons.skip_previous_sharp,
//                             color: Colors.white,
//                             size: 30,
//                           )),
//                     )
//                   : const SizedBox(
//                       width: 30,
//                     ),
//               PlayerBuilder.isPlaying(
//                   player: assetsAudioPlayer,
//                   builder: (context, isPlaying) {
//                     return GestureDetector(
//                       onTap: () async {
//                         await assetsAudioPlayer.playOrPause();
//                       },
//                       child: Icon(
//                         isPlaying ? Icons.pause : Icons.play_arrow,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                     );
//                   }),
//               nxtvisible
//                   ? Visibility(
//                       visible: nxtvisible,
//                       child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               widget.index = widget.index + 1;
//                               if (widget.index > 0) {
//                                 prevvisible = true;
//                               }
//                               assetsAudioPlayer.next();
//                             });
//                           },
//                           icon: const Icon(
//                             Icons.skip_next_sharp,
//                             color: Colors.white,
//                             size: 30,
//                           )),
//                     )
//                   : const SizedBox(
//                       width: 30,
//                     )
//             ],
//           ),
//         ));
//   }
// }
