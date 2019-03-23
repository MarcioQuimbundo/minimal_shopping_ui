import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
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
            Container(
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                  color: Color(0xFFFAECFB),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.grey.withOpacity(.3), width: .2)),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 8.0,),
                          Image.asset("assets/shoes_01.png", width: 251.0, height: 161.0,),
                          Text("Hybrid Rocket WNS", style:TextStyle(fontSize: 20.0, fontFamily:"Raleway")),
                          SizedBox(height: 15.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton()
                            ],
                          )
                        ],
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
