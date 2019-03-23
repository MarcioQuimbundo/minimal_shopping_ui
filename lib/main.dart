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
                child: Image.asset("assets/logo.png", width: 62.0, height:43.0,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
