import 'package:flutter/material.dart';
import 'package:musicue/screens/sample.dart';
import 'package:musicue/widgets/navBarFunction.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
              child: Column(children: [
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
                    Text(
                      'S E A R C H',
                      style: TextStyle(fontSize: 25),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: dbox(Child: Icon(Icons.more_vert)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: dbox2(
                    Child: TextFormField(
                      decoration: InputDecoration(
                          hoverColor: Colors.brown,
                          hintText: 'S E A R C H  S O N G  H E R E',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                )
              ]),
            ),
          ),
        )
        // backbutton and menu button

        );
  }
}
