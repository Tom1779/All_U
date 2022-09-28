import 'dart:ui';
import 'package:flutter/material.dart';

class home_page_left extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
