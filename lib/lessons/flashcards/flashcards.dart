import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:langedge/lists/kanalist.dart';
import 'package:langedge/services/texttospeach.dart';

class KanaFlashCardBuilder extends StatefulWidget {
  @override
  _KanaFlashCardBuilderState createState() => _KanaFlashCardBuilderState();
}

class _KanaFlashCardBuilderState extends State<KanaFlashCardBuilder> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: kanaList.length,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 1,
          initialPage: 0,
        ),
        itemBuilder: (BuildContext context, int index, _) {
          return FlipCard(
            flipOnTouch: true,
            speed: 400,
            onFlip: () {
              speakJapanese(kanaList[index].char);
            },
            direction: FlipDirection.VERTICAL,
            front: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              elevation: 5,
              color: Colors.grey[900],
              child: Container(
                height: 280,
                width: 280,
                child: Center(
                  child: Text(
                    kanaList[index].char,
                    style: TextStyle(fontSize: 100, color: Colors.white),
                  ),
                ),
              ),
            ),
            back: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              color: Colors.white,
              elevation: 5,
              child: Container(
                height: 280,
                width: 280,
                child: Center(
                  child: Text(
                    kanaList[index].latin,
                    style: TextStyle(fontSize: 100, color: Colors.black),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class KatakanaFlashCardBuilder extends StatefulWidget {
  @override
  _KatakanaFlashCardBuilderState createState() =>
      _KatakanaFlashCardBuilderState();
}

class _KatakanaFlashCardBuilderState extends State<KatakanaFlashCardBuilder> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: kanaList.length,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 1,
          initialPage: 0,
        ),
        itemBuilder: (BuildContext context, int index, _) {
          return FlipCard(
            flipOnTouch: true,
            speed: 400,
            onFlip: () {
              speakJapanese(kanaList[index].char);
            },
            direction: FlipDirection.VERTICAL,
            front: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              elevation: 5,
              color: Colors.grey[900],
              child: Container(
                height: 280,
                width: 280,
                child: Center(
                  child: Text(
                    KatakanaList[index].char,
                    style: TextStyle(fontSize: 100, color: Colors.white),
                  ),
                ),
              ),
            ),
            back: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              color: Colors.white,
              elevation: 5,
              child: Container(
                height: 280,
                width: 280,
                child: Center(
                  child: Text(
                    kanaList[index].char,
                    style: TextStyle(fontSize: 100, color: Colors.black),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class NumbersFlashCardBuilder extends StatefulWidget {
  @override
  _NumbersFlashCardBuilderState createState() =>
      _NumbersFlashCardBuilderState();
}

class _NumbersFlashCardBuilderState extends State<NumbersFlashCardBuilder> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: numbersList.length,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 1,
          initialPage: 0,
        ),
        itemBuilder: (BuildContext context, int index, _) {
          return FlipCard(
            flipOnTouch: true,
            speed: 400,
            onFlip: () {
              speakJapanese(numbersList[index].char);
            },
            direction: FlipDirection.VERTICAL,
            front: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              elevation: 5,
              color: Colors.grey[900],
              child: Container(
                height: 280,
                width: 280,
                child: Center(
                  child: Text(
                    numbersList[index].char,
                    style: TextStyle(fontSize: 100, color: Colors.white),
                  ),
                ),
              ),
            ),
            back: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              color: Colors.white,
              elevation: 5,
              child: Container(
                height: 280,
                width: 280,
                child: Center(
                  child: Text(
                    numbersList[index].latin,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
