import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

PageRouteBuilder customPageRoute(Widget child, Curve curve) {
  return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        animation = CurvedAnimation(parent: animation, curve: curve);
        return ScaleTransition(
          scale: animation,
          child: child,
          alignment: Alignment.centerRight,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secAnimation) {
        return child;
      });
}

List<Widget> nextActions(StatefulWidget page, BuildContext context) {
  return <Widget>[
    IconButton(
        color: Colors.amber,
        iconSize: 30,
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                child: page,
                type: PageTransitionType.rightToLeft,
              ));
        },
        icon: Icon(Icons.arrow_forward))
  ];
}
