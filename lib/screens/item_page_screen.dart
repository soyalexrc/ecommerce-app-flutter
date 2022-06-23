import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_bar_widget.dart';

class ItemPageScreen extends StatelessWidget {
  const ItemPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(15),
                  height: 350,
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash-screen.png'),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back,
                        size: 30, color: Color(0xFF00A368)),
                  )),
              Container(
                //you can change height according to your choice
                height: MediaQuery.of(context).size.height * 0.4,
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Color(0xFF00A368),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Item title',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold)),
                              Row(children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 8)
                                      ]),
                                  child: const Icon(CupertinoIcons.minus),
                                ),
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: const Text('01',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18))),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 8)
                                      ]),
                                  child: const Icon(CupertinoIcons.plus),
                                )
                              ])
                            ])),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.amber, size: 30),
                        Text(
                          '4.8 (230)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'This is the  description of the product',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Delivery Time',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.clock,
                          color: Colors.white
                        ),
                        SizedBox(width: 5),
                        Text(
                          '20 Minutes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
