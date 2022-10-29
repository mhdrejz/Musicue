import 'package:flutter/material.dart';

import 'package:musicue/screens/favorate_screen.dart';
import 'package:musicue/screens/library.dart';
import 'package:musicue/screens/playlistScreen.dart';
import 'package:musicue/widgets/customCards.dart';

class MainCards extends StatelessWidget {
  const MainCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
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
                child: customCard2(libraryname: 'R E C E N T L Y')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const playlist(),
                    ),
                  );
                },
                child: customCard3(libraryname: 'P L A Y L I S T'))
          ],
        ),
      ),
    );
  }
}
