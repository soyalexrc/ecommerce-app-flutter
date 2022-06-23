import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Category',
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
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 50,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 6),
                    ]),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset('assets/images/splash-screen.png',
                          height: 50, width: 50)),
                  const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text('Category',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)))
                ]))
        ]),
      )
    ]);
  }
}
