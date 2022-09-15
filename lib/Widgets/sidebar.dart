import 'package:flutter/material.dart';
import '../page/settings_page.dart';
import '../page/messages_page.dart';
import '../page/leaderboard_page.dart';
import '../page/analytics_page.dart';
import '../page/profile_page.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

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
              height: 20,
            ),
            Stack(
              alignment: Alignment(-0.9, 1),
              children: [
                ProfilePicture(
                  name: 'Aditya Dharmawan Saputra',
                  role: 'ADMINISTRATOR',
                  radius: 31,
                  fontsize: 21,
                  tooltip: true,
                  img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Text(
                  "Jared Hartwig",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            buildMenuItem(
              text: "Profile",
              icon: Icons.account_circle_rounded,
              onClicked: () => selectedItem(context, 0),
            ),
            CustomDivider(),
            buildMenuItem(
              text: "Settings",
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 1),
            ),
            CustomDivider(),
            buildMenuItem(
              text: "Messages",
              icon: Icons.message_rounded,
              onClicked: () => selectedItem(context, 2),
            ),
            CustomDivider(),
            buildMenuItem(
              text: "Analytics",
              icon: Icons.analytics_outlined,
              onClicked: () => selectedItem(context, 3),
            ),
            CustomDivider(),
            buildMenuItem(
              text: "Leaderboard",
              icon: Icons.leaderboard,
              onClicked: () => selectedItem(context, 4),
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
            builder: (context) => ProfilePage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SettingsPage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MessagesPage(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AnalyticsPage(),
          ),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LeaderboardPage(),
          ),
        );
        break;
    }
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
          child: new Center(
            child: new Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 2.0,
              color: Color(0xb36f0303),
            ),
          ),
        ),
      ],
    );
  }
}
