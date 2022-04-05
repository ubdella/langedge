import 'package:flutter/material.dart';
import 'colors.dart';

Widget lessonCard(List<Widget> children) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    child: Container(
      padding: EdgeInsets.all(25),
      alignment: Alignment.topCenter,
      width: 1000,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              // begin: Alignment.topRight,
              // end: Alignment.bottomLeft,
              colors: lessonBackgroundGradient),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children),
    ),
  );
}

Widget lessonTextCard(Text text) {
  return lessonCard(
    <Widget>[text],
  );
}
