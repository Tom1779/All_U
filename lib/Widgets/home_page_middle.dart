import 'dart:ui';
import 'package:flutter/material.dart';

class home_page_middle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            GestureDetector(
              onTap: () {
                print("Nav to page");
              },
              behavior: HitTestBehavior.translucent,
              child: Container(
                height: 50,
                width: 300,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(34),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
                child: Text(
                  "Create Post...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            new ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                const Text('I\'m dedicating every day to you'),
                const Text('Domestic life was never quite my style'),
                const Text('When you smile, you knock me out, I fall apart'),
                const Text('And I thought I was so smart'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
