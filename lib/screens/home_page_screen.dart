import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:tutorials/widgets/items_widget.dart';
import '../widgets/categories_widget.dart';
import '../widgets/popular_items_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00A368),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //custom appbar
              Container(
                padding: EdgeInsets.only(right: 20, left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00A368),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              blurRadius: 2
                          )
                        ]),
                      child: Badge(
                        badgeColor: Colors.red,
                          padding: const EdgeInsets.all(5),
                          badgeContent: const Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          child: InkWell(
                              onTap: (){},
                              child: const Icon(
                                  CupertinoIcons.cart,
                                  size: 30,
                                  color: Colors.white
                              ))
                      )
                    )
                  ]
                )
              ),
              //welcome text
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                     Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Text(
                      'What do you want to buy today?',
                      style: TextStyle(color: Colors.white, fontSize: 20)
                    )
                  ]
                )
              ),
              //search widget
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,
                      child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Search here...',
                            border: InputBorder.none
                      ))
                    ),
                    const Spacer(),
                    const Icon(Icons.filter_list),
                  ]
                )

              ),
            //  products widget
              Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CategoriesWidget(),
                    PopularItemsWidget(),
                    ItemsWidget(),
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}
