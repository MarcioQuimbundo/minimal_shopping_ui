import 'package:flutter/material.dart';
import 'package:minimal_shopping_ui/customIcon.dart';
import './productCard.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> bottomNavIconList = [
    Image.asset("assets/store.png", width: 35.0, height: 35.0),
    Icon(
      CustomIcons.search,
      size: 32.0,
    ),
    Icon(
      CustomIcons.favorite,
      size: 32.0,
    ),
    Icon(
      CustomIcons.cart,
      size: 32.0,
    ),
    Image.asset("assets/profile.png", width: 35.0, height: 35.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
                    child: Image.asset(
                      "assets/logo.png",
                      width: 52.0,
                      height: 33.0,
                    ),
                  ),
                ),
                ProductCard(
                  cardColor: 0xFFFAECFB,
                  imgUrl: "assets/shoes_01.png",
                  title: "Hybrid Rocked WNS",
                  previousPrice: "\$999.00",
                  price: "\$749",
                ),
                SizedBox(
                  height: 32.0,
                ),
                ProductCard(
                  cardColor: 0xFFF8E1DA,
                  imgUrl: "assets/shoes_02.png",
                  title: "Hybrid Runner ARS",
                  previousPrice: "\$699.00",
                  price: "\$599",
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(0.065),
              offset: Offset(0.0, -3.0),
              blurRadius: 10.0)
        ]),
        child: Row(
            children: bottomNavIconList.map((item) {
          var index = bottomNavIconList.indexOf(item);
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: bottomNavItem(item, index ==_currentIndex),
            ),
          );
        }).toList()),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
      decoration: BoxDecoration(
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.2),
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                  )
                ]
              : []),
              child: item,
    );
