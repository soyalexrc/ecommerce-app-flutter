import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Top',
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
                  ]
              )
          ),
          GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              shrinkWrap: true,
              children: [
                for(int i = 0; i < 10; i++)
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/images/splash-screen.png',
                                    height: 110,
                                    width: 110,
                                  )
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                      'Item title',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Color(0xFF555555)
                                      )
                                  )
                              )
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                  'Item subtitle',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color(0xFF555555)
                                  )
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    const Text(
                                        "\$20",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF00A368)
                                        )
                                    ),
                                    InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, 'item_page');
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: const Color(0xFF00A368),
                                                borderRadius: BorderRadius
                                                    .circular(10)
                                            ),
                                            child: const Icon(
                                                Icons.add_shopping_cart,
                                                color: Colors.white
                                            )
                                        )
                                    )
                                  ]
                              )
                          )
                        ],
                      )
                  )
              ]
          )
        ]
    );
  }
}
