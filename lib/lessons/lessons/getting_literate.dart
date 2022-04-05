import 'package:flutter/material.dart';
import 'package:langedge/custom/cards.dart';
import 'package:langedge/custom/colors.dart';
import 'package:langedge/custom/texts.dart';
import 'package:langedge/custom/textstyles.dart';
import 'package:langedge/custom/transitions.dart';
import 'package:langedge/lessons/lessons/making_sense.dart';
import 'package:langedge/lists/kanalist.dart';
import 'package:langedge/services/texttospeach.dart';
import 'package:page_transition/page_transition.dart';

class GettingLiterate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: lessonScaffoldColor,
          appBar: AppBar(
            centerTitle: true,
            actions: nextActions(MakingSense(), context),
            title: Text(
              "Getting Literate",
              style: TextStyle(
                  fontSize: 25, color: Colors.white54, fontFamily: 'avenir'),
            ),
            backgroundColor: lessonAppBarColor,
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.pink[300], Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.redAccent),
                tabs: [
                  Hero(
                    tag: "getting literate",
                    child: Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "一",
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("二",
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("三",
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  // Tab(
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Text("四",
                  //         style: TextStyle(
                  //             color: Colors.amber,
                  //             fontWeight: FontWeight.bold)),
                  //   ),
                  // ),
                ]),
          ),
          body: TabBarView(children: [
            _HiraganaIntro(),
            Container(
              padding: EdgeInsets.all(10),
              child: HiraganaGrid1(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: HiraganaGrid2(),
            ),
          ]),
        ));
  }
}

class _HiraganaIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Hiragana",
                style: TextStyle(
                    fontFamily: 'avenir',
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              width: 1000,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      // begin: Alignment.topRight,
                      // end: Alignment.bottomLeft,
                      colors: lessonBackgroundGradient),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "How to write\n\n\n",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "Japanese is kinda cool. Unlike most languages, it uses multiple scripts to write:\n\n",
                        style: BodyStyle),
                    TextSpan(
                        text: "- ひらがな \n  Hiragana \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("ひらがな")),
                    TextSpan(
                        text: "- カタカナ \n  Katakana \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("カタカナ")),
                    TextSpan(
                        text: "- 漢字 \n  Kanji \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("漢字")),
                    TextSpan(
                        text:
                            "When you start learning Japanese, or if you are child; Hiragana will be your friend for a while.\nThrough Hiragana later you will learn the other scripts.\n\nKatakana is just Hiragana with different symbols so that won't be much of a task.\n\nKanji is for later.\n\nHiragana is just a bunch of symbols each representing a sound made from a consonant and a vowel together. This kind of sound is called a syllable.\nWhich is why Hiragana is called a syllabary.\n\nOn the next two pages as well as the Flashcards section, you will find all the Hiragana characters.\nYou are expected to learn them before moving on with the lessons.\nDon't worry they are quite easy to learn\n\nTry writing your name and the names of your friends using them.\nYou may also use flashcards in the Flashcards section of the application.",
                        style: BodyStyle),
                  ])),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HiraganaGrid1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(height: 15),
        Text(
          "Hiragana",
          style: TextStyle(
              fontSize: 35, fontFamily: "avenir", color: Colors.amber),
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "I mean how can you not just fall in love with these curvy little things",
            style: TextStyle(
                fontSize: 15,
                fontFamily: "avenir",
                color: Colors.white70,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: GridView.builder(
            itemCount: kanaList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    splashColor: Colors.amber[900],
                    onTap: () => speakJapanese(kanaList[index].char),
                    child: Container(
                        padding: EdgeInsets.only(bottom: 2),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              kanaList[index].char,
                              style: TextStyle(
                                  fontSize: 30, color: Colors.black54),
                            ),
                            Text(kanaList[index].latin,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.purple)),
                          ],
                        ))),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}

class HiraganaGrid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "A little more to go",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Segoe",
                          // fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    )),
                Divider(
                  height: 20,
                  thickness: 0,
                ),
                Container(
                    padding: EdgeInsets.all(0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Notice how the characters on this page relate to the ones on the previous page.",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Segoe",
                          fontStyle: FontStyle.italic,
                          color: Colors.white70),
                    )),
              ],
            ),
            Divider(
              height: 40,
              thickness: 1,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: kanaList2.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.amber[900],
                        onTap: () => speakJapanese(kanaList2[index].char),
                        child: Container(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  kanaList2[index].char,
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black54),
                                ),
                                Text(kanaList2[index].latin,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.purple[800])),
                              ],
                            ))),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
