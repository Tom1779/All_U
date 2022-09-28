// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, unused_label, dead_code, avoid_unnecessary_containers, avoid_print, sort_child_properties_last
import 'dart:ui';
import 'Widgets/appbar.dart';
import 'Widgets/sidebar.dart';
import 'Widgets/home_page_middle.dart';
import 'Widgets/home_page_right.dart';
import 'Widgets/home_page_left.dart';
import 'theme/theme.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "All U",
      theme: app_theme(),
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
              home_page_left(),
              home_page_middle(),
              home_page_right(),
            ],
          ),
        ),
      ),
    );
  }
}
