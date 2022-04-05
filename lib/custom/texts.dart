import 'package:flutter/material.dart';

Text copyright = Text(
  "© Project Edge",
  style: TextStyle(color: Colors.white30),
);

Text funFact(String text) {
  return Text(text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontFamily: 'avenir',
          color: Colors.white70,
          fontSize: 15,
          fontStyle: FontStyle.italic));
}

Column watermark = Column(
  children: [
    Divider(color: Colors.white38, height: 30),
    Text(
      "Langedge",
      style: TextStyle(color: Colors.white30),
    ),
  ],
);
