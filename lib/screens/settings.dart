import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/widgets/navBarFunction.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
                  Text('S E T T I N G S'),
                  Container(
                    height: 60,
                    width: 60,
                    child: dbox(Child: Icon(Icons.more_vert)),
                  )
                ],
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Icon(Icons.info_outlined),
                      ),
                      Text('A B O U T  U S'),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Icon(Icons.notifications_active_outlined),
                      ),
                      Text('N O T I F I C A T I O N'),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Icon(Icons.share),
                      ),
                      Text('S H A R E '),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Icon(Icons.privacy_tip_outlined),
                      ),
                      Text('P R I V A C Y'),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Icon(Icons.drive_file_rename_outline),
                      ),
                      Text('T E R M S  A N D  C O N D I T I O N S '),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
              ]),
            ],
          ),
        )),
      ),

      // // appBar: AppBar(
      // //   backgroundColor: Colors.grey.shade200,
      // //   leading: dbox(
      // //     Child: Icon(
      // //       Icons.arrow_back,
      // //       color: Colors.black,
      // //     ),
      // //   ),
      // //   actions: [
      // //     dbox(
      // //         Child: Icon(
      // //       Icons.more_vert_outlined,
      // //       color: Colors.black,
      // //     ))
      // //   ],
      // // ),
      // bottomNavigationBar: CustomnavBarFunction(),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       dbox(
      //         Child: Container(
      //           height: 55,
      //           width: 400,
      //           child: Row(
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Text('Settings',
      //                     style: TextStyle(
      //                         fontSize: 25,
      //                         fontWeight: FontWeight.w500,
      //                         fontStyle: FontStyle.normal,
      //                         color: Colors.black54)),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 10),
      //         child: dbox(
      //           Child: Container(
      //             height: 650,
      //             width: 400,
      //             child: ListView(
      //               children: [
      //                 // Padding(
      //                 //   padding: const EdgeInsets.all(8.0),
      //                 //   child: Text(
      //                 //     'Settings',
      //                 //     style: TextStyle(
      //                 //         fontSize: 25,
      //                 //         fontWeight: FontWeight.w500,
      //                 //         fontStyle: FontStyle.normal,
      //                 //         color: Colors.black54),
      //                 //   ),
      //                 // ),

      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Column(
      //                     children: [
      //                       Padding(
      //                         padding:
      //                             const EdgeInsets.only(top: 18, bottom: 10),
      //                         child: Row(
      //                           children: [
      //                             Icon(
      //                               Icons.info_outline_rounded,
      //                               size: 25,
      //                             ),
      //                             SizedBox(
      //                               width: 5,
      //                             ),
      //                             Text('About us',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     fontStyle: FontStyle.normal,
      //                                     color: Colors.black))
      //                           ],
      //                         ),
      //                       ),
      //                       Divider(
      //                         thickness: 2,
      //                       ),
      //                       Padding(
      //                         padding:
      //                             const EdgeInsets.only(top: 18, bottom: 10),
      //                         child: Row(
      //                           children: [
      //                             Icon(
      //                               Icons.notifications_none,
      //                               size: 25,
      //                             ),
      //                             SizedBox(
      //                               width: 5,
      //                             ),
      //                             Text('Notification',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     fontStyle: FontStyle.normal,
      //                                     color: Colors.black))
      //                           ],
      //                         ),
      //                       ),
      //                       Divider(
      //                         thickness: 2,
      //                       ),
      //                       Padding(
      //                         padding:
      //                             const EdgeInsets.only(top: 18, bottom: 10),
      //                         child: Row(
      //                           children: [
      //                             Icon(
      //                               Icons.share,
      //                               size: 25,
      //                             ),
      //                             SizedBox(
      //                               width: 5,
      //                             ),
      //                             Text('Share',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     fontStyle: FontStyle.normal,
      //                                     color: Colors.black))
      //                           ],
      //                         ),
      //                       ),
      //                       Divider(
      //                         thickness: 2,
      //                       ),
      //                       Padding(
      //                         padding:
      //                             const EdgeInsets.only(top: 18, bottom: 10),
      //                         child: Row(
      //                           children: [
      //                             Icon(
      //                               Icons.privacy_tip_outlined,
      //                               size: 25,
      //                             ),
      //                             SizedBox(
      //                               width: 5,
      //                             ),
      //                             Text('Privacy',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     fontStyle: FontStyle.normal,
      //                                     color: Colors.black))
      //                           ],
      //                         ),
      //                       ),
      //                       Divider(
      //                         thickness: 2,
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(
      //                           top: 18,
      //                         ),
      //                         child: Row(
      //                           children: [
      //                             Icon(
      //                               Icons.drive_file_rename_outline_sharp,
      //                               size: 25,
      //                             ),
      //                             SizedBox(
      //                               width: 5,
      //                             ),
      //                             Text('Terms and conditions',
      //                                 style: TextStyle(
      //                                     fontSize: 20,
      //                                     fontWeight: FontWeight.w500,
      //                                     fontStyle: FontStyle.normal,
      //                                     color: Colors.black))
      //                           ],
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
