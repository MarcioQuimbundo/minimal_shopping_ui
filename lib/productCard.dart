import 'package:flutter/material.dart';
import './customIcon.dart';

class ProductCard extends StatelessWidget {
  int cardColor;
  String imgUrl;
  String title;
  String previousPrice;
  String price;

  ProductCard({this.cardColor, this.imgUrl, this.title, this.previousPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              height: 270.0,
              decoration: BoxDecoration(
                  color: Color(0xFFFAECFB),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.grey.withOpacity(.3), width: .2)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset(
                    "assets/shoes_01.png",
                    width: 251.0,
                    height: 161.0,
                  ),
                  Text("Hybrid Rocket WNS",
                      style: TextStyle(fontSize: 20.0, fontFamily: "Raleway")),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(CustomIcons.favorite),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text("999.0",
                                style: TextStyle(
                                    color: Color(0xFFFEB0BA),
                                    fontSize: 16.0,
                                    fontFamily: "Helvetica")),
                                    SizedBox(height: 12.0,),
                                    Text("\$749", style: TextStyle(fontSize: 28.0, fontFamily: "Helvetica"),),
                          ],
                        ),
                        IconButton(
                          icon: Icon(CustomIcons.cart),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}