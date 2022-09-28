import 'dart:ui';
import 'package:flutter/material.dart';

class home_page_right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
