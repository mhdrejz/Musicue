import 'package:flutter/cupertino.dart';
import 'package:musicue/screens/sample.dart';

Widget customCard1({required String libraryname}) {
  return Column(
    children: [
      dbox(
        Child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), boxShadow: []),
          width: 90,
          height: 90,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/img demo 1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Text(libraryname),
      )
    ],
  );
}

Widget customCard2({required String libraryname}) {
  return Column(
    children: [
      dbox(
        Child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), boxShadow: []),
          width: 90,
          height: 90,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/img demo 2.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Text(
          libraryname,
          textAlign: TextAlign.center,
        ),
      )
    ],
  );
}

Widget customCard3({required String libraryname}) {
  return Column(
    children: [
      dbox(
        Child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), boxShadow: []),
          width: 90,
          height: 90,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/img demo 3.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Text(
          libraryname,
          textAlign: TextAlign.center,
        ),
      )
    ],
  );
}
