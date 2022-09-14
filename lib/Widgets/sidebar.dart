import 'package:flutter/material.dart';
import '../page/settings_page.dart';
import '../page/messages_page.dart';
import '../page/leaderboard_page.dart';
import '../page/analytics_page.dart';

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
