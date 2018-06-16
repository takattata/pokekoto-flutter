import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> _words = ["aaa", "行なう人だけが成功する"];
  final List<Image> _imagesOfBg = [
    Image.asset(
      'assets/images/image_bg00.png',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/image_bg01.png',
      fit: BoxFit.fill,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const double sideMargin = 32.0;
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
              child: _imagesOfBg[Random().nextInt(_imagesOfBg.length)]
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                left: sideMargin, right: sideMargin
              ),
              child: Text(
                _words[1],
                style: TextStyle(
                  fontSize: 26.0,
                ),
              ),
            )
          ),
        ],
      )
    );
  }
}
