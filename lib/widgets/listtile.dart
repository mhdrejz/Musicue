import 'package:flutter/material.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/playlistScreen.dart';
import 'package:musicue/widgets/popupmenuButton.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

Widget listtile() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
    child: ListTile(
      trailing: IconButton(
          onPressed: () {
            CustomPopUpMenuButton();
          },
          icon: Icon(Icons.more_vert)),
      leading: Container(
        height: 55,
        width: 55,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/img demo 3.jpg',
              fit: BoxFit.cover,
            )),
      ),
      title: Column(
        children: [
          Text(
            'vizhimoodiyo',
            textAlign: TextAlign.start,
          ),
          Text(
            'harris jayaraj',
            textAlign: TextAlign.start,
          )
        ],
      ),
    ),
  );
}
