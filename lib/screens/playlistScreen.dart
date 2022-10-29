import 'package:flutter/material.dart';

import 'package:musicue/screens/sample.dart';
import 'package:musicue/screens/searchScreen.dart';
import 'package:musicue/widgets/customCards.dart';

import 'package:musicue/widgets/navBarFunction.dart';
import 'package:musicue/widgets/playListCard.dart';

class playlist extends StatelessWidget {
  const playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomnavBarFunction(),
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
                    Text('P L A Y L I S T'),
                    Container(
                      height: 60,
                      width: 60,
                      child: dbox(
                          Child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SearchScreen(),
                                  ),
                                );
                              },
                              icon: Icon(Icons.search))),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 150,
                    width: 280,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        dbox(
                          Child: Container(
                            height: 140,
                            width: 100,
                            child: customPlayListCard(
                                libraryname: 'ar rahman',
                                image: 'assets/images/img demo 5.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
