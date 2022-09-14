// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Appbar extends AppBar {
  Appbar()
      : super(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff131417),
          actions: <Widget>[
            Expanded(
              flex: 1,
              child: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Color.fromRGBO(33, 149, 242, 1),
                  ),
                  iconSize: 30,
                  splashRadius: 20,
                );
              }),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xff131417)),
                  onPressed: () {},
                  child: Image.network(
                      "https://www.logomaker.com/api/main/images/1j+ojVVCOMkX9Wyrexe4hGfY8oqbyQETmhPbi2c...ZzlJ8ghulickjuQuq6R6b0gN4FcNgR0Jd8I7jDIqD99LxUc6unyAOA==%22"),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: TextField(
                style: TextStyle(color: Color.fromRGBO(33, 149, 242, 1)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff33363d),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color.fromRGBO(33, 149, 242, 1),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.circle_notifications,
                  color: Color.fromRGBO(33, 149, 242, 1),
                ),
                iconSize: 30,
                splashRadius: 20,
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle_rounded,
                  color: Color.fromRGBO(33, 149, 242, 1),
                ),
                iconSize: 30,
                splashRadius: 20,
              ),
            ),
          ],
          centerTitle: false,
        );
}
