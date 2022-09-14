// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, unused_label, dead_code, avoid_unnecessary_containers, avoid_print, sort_child_properties_last
import 'dart:ui';
import 'Widgets/appbar.dart';
import 'Widgets/sidebar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "All U",
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'AlmaSans',
            fontWeight: FontWeight.bold,
          ),
        ).apply(
          bodyColor: Colors.white70,
        ),
      ),
      home: AllU(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AllU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      backgroundColor: Color.fromRGBO(19, 20, 23, 25),
      appBar: Appbar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
          color: Color.fromRGBO(19, 20, 23, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(4, 172, 181, 255),
                  child: Column(children: [
                    FittedBox(
                      fit: BoxFit.contain,
                      child: const Text(
                        "Side Bar",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(48, 52, 52, 1),
                    border: Border.all(color: Color.fromRGBO(85, 85, 85, 25)),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(19, 20, 23, 25),
                  child: Column(
                    children: [
                      FittedBox(
                        fit: BoxFit.contain,
                        child: const Text(
                          "Recommendations",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
