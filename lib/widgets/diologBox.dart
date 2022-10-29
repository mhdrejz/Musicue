import 'package:flutter/material.dart';

class CustomAlertBox extends StatelessWidget {
  const CustomAlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.black87,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade600),
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      children: <Widget>[
        SimpleDialogOption(
            onPressed: () {},
            child: ListTile(
              leading: Icon(
                Icons.playlist_add,
                color: Color(0xff00C2CB),
              ),
              title: Text(
                'Playlist',
                style: TextStyle(color: Colors.white),
              ),
            )),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        SimpleDialogOption(
            onPressed: () {},
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: Color(0xff00C2CB),
              ),
              title: Text(
                'Favorit',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ],
    );
  }
}
