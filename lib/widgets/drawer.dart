import 'package:flutter/material.dart';
import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/homeScreen.dart';
import 'package:musicue/screens/playlistScreen.dart';
import 'package:musicue/screens/recent_screen.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/searchScreen.dart';
import 'package:musicue/screens/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.grey.shade200,
      child: Column(
        // padding: EdgeInsets.zero,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 68,
                      backgroundImage: AssetImage(
                        'assets/images/musicue logo.webp',
                      ),
                    ),
                  ],
                ),
              ),
              dbox(
                Child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => playlist()),
                    );
                  },
                  child: DrawerFunction(
                    leadingicon: Icons.playlist_play_rounded,
                    titletext: 'P L A Y L I S T',
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              dbox(
                Child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                  child: DrawerFunction(
                    leadingicon: Icons.search,
                    titletext: 'S E A R C H',
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              dbox(
                Child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecentScreen()),
                    );
                  },
                  child: DrawerFunction(
                      leadingicon: Icons.playlist_play_rounded,
                      titletext: 'R E C E N T L Y  P L A Y'),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              dbox(
                Child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FavScreen()),
                    );
                  },
                  child: DrawerFunction(
                      leadingicon: Icons.favorite_outline_outlined,
                      titletext: 'L I K E D  S O N G S'),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              // InkWell(
              //   child: DrawerFunction(
              //       leadingicon: Icons.equalizer_rounded, titletext: 'Equalizer'),
              // ),
              dbox(
                Child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: DrawerFunction(
                      leadingicon: Icons.settings,
                      titletext: 'S E T T I N G S'),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Version',
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.6),
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '0.0.1',
                style: TextStyle(
                    color: Colors.grey.withOpacity(1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget DrawerFunction({required IconData leadingicon, required titletext}) {
  return ListTile(
    leading: Icon(
      leadingicon,
      color: Colors.black,
      size: 20,
    ),
    title: Text(
      titletext,
      style: const TextStyle(fontSize: 15, color: Colors.black),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      color: Colors.grey,
      size: 20,
    ),
  );
}
