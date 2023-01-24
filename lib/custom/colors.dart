import 'package:flutter/material.dart';

Color lessonScaffoldColor = Colors.purple[800];

Color lessonAppBarColor = Colors.purple[800];

Color color1 = Colors.amber[50];

Color color2 = Colors.black87;

Color subtitleColor = Colors.redAccent;

List<Color> lessonBackgroundGradient = <Color>[
  Colors.purple[900],
  Colors.purple[700]
];

LinearGradient flashcardBackgroundGradient = LinearGradient(
    stops: [0.2, 1],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    colors: <Color>[
      Colors.amber[900],
      Colors.amber[500],
    ]);
