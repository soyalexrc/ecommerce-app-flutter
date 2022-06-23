import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Popular',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00a368),
                    )),
                Text('Se All',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ])),
      SingleChildScrollView(
        //  so row can be scrollable in horizontal
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8),
                  ]),
              child: Image.asset('assets/images/splash-screen.png'),
            ),
        ]),
      )
    ]);
  }
}
