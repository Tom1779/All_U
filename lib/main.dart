// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, unused_label, dead_code, avoid_unnecessary_containers, avoid_print, sort_child_properties_last
import 'dart:ui';
import 'page/settings_page.dart';
import 'page/messages_page.dart';
import 'page/leaderboard_page.dart';
import 'page/analytics_page.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(
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
      ),
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

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(47, 49, 55, 1),
        child: ListView(
          padding: padding,
          children: [
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: "Settings",
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 8),
            Divider(color: Color(0xb36f0303)),
            const SizedBox(height: 8),
            buildMenuItem(
              text: "Messages",
              icon: Icons.message_rounded,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 8),
            Divider(color: Color(0xb36f0303)),
            const SizedBox(height: 8),
            buildMenuItem(
              text: "Analytics",
              icon: Icons.analytics_outlined,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 8),
            Divider(color: Color(0xb36f0303)),
            const SizedBox(height: 8),
            buildMenuItem(
              text: "Leaderboard",
              icon: Icons.leaderboard,
              onClicked: () => selectedItem(context, 3),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white70;
    final hoverColor = Color(0xb36f0303);

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 20,
        ),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SettingsPage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MessagesPage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AnalyticsPage(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LeaderboardPage(),
          ),
        );
        break;
    }
  }
}
