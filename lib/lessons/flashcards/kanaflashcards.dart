import 'package:flutter/material.dart';
import 'package:langedge/custom/colors.dart';
import 'package:langedge/lessons/flashcards/flashcards.dart';

class HiraganaFlashCards extends StatefulWidget {
  @override
  _HiraganaFlashCardsState createState() => _HiraganaFlashCardsState();
}

class _HiraganaFlashCardsState extends State<HiraganaFlashCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.2, 1],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: <Color>[Colors.amber[400], Colors.deepOrangeAccent])),
          child: Center(
            child: KanaFlashCardBuilder(),
          ),
        ),
      ),
    );
  }
}

class KatakanaFlashCards extends StatefulWidget {
  @override
  _KatakanaFlashCardsState createState() => _KatakanaFlashCardsState();
}

class _KatakanaFlashCardsState extends State<KatakanaFlashCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.2, 1],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: <Color>[
                    Colors.amber[400],
                    Colors.deepOrangeAccent,
                  ])),
          child: Center(
            child: KatakanaFlashCardBuilder(),
          ),
        ),
      ),
    );
  }
}

class NumbersFlashCards extends StatefulWidget {
  @override
  _NumbersFlashCardsState createState() => _NumbersFlashCardsState();
}

class _NumbersFlashCardsState extends State<NumbersFlashCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.2, 1],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: <Color>[Colors.amber[400], Colors.deepOrangeAccent])),
          child: Center(
            child: NumbersFlashCardBuilder(),
          ),
        ),
      ),
    );
  }
}
