import 'package:langedge/custom/colors.dart';
import 'package:langedge/custom/textstyles.dart';
import 'dart:io';
import 'package:langedge/services/auth.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:langedge/custom/transitions.dart';
import 'package:langedge/lessons/flashcards/kanaflashcards.dart';
import 'package:langedge/lessons/flashcards/kanjiflashcards.dart';
import 'package:langedge/lessons/flashcards/savedkanji.dart';
import 'package:langedge/lists/kanjilists.dart';
import 'package:langedge/lists/lessons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color1,
        bottomNavigationBar: CurvedNavigationBar(
            onTap: _onItemTapped,
            index: _currentIndex,
            animationDuration: Duration(milliseconds: 200),
            color: color2,
            backgroundColor: Colors.transparent,
            items: <Icon>[
              Icon(Icons.local_library_rounded),
              Icon(Icons.view_carousel_rounded),
              Icon(Icons.bookmark)
            ]),
        // backgroundColor: Colors.purple[800],
        body: _currentIndex == 0
            ? IntroView()
            : _currentIndex == 1
                ? LessonsView()
                : FlashCardsView());
  }
}

class LessonsView extends StatefulWidget {
  @override
  _LessonsViewState createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,

      // backgroundColor: Colors.purple[800],
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0), color: color1),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Lessons",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black87,
                          fontFamily: 'avenir',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Center(
                    child: Container(
                      width: 10000,
                      height: 500,
                      padding: EdgeInsets.all(5),
                      child: Swiper(
                        loop: false,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                              activeSize: 15,
                              space: 8,
                              activeColor: Colors.white.withOpacity(0.8),
                              color: Colors.white.withOpacity(0.5)),
                        ),
                        itemHeight: 500,
                        itemWidth: 500,
                        layout: SwiperLayout.TINDER,
                        itemCount: lessons.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              height: 400,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: <Color>[
                                    color2,
                                    Colors.grey[800]
                                  ]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(120, 0, 0, 0),
                                    child: Center(
                                        child: Text(
                                      lessons[index].number.toString(),
                                      style: TextStyle(
                                          fontSize: 300,
                                          color: Colors.grey.withOpacity(0.2)),
                                    )),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 60, 20, 10),
                                        child: Text(
                                          lessons[index].name,
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: color1.withOpacity(1),
                                              fontFamily: "avenir",
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 120, 30),
                                        child: Text(
                                          lessons[index].description,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontFamily: "avenir",
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 40,
                                    right: 20,
                                    child: Transform.scale(
                                      scale: 1,
                                      child: FlatButton(
                                          autofocus: true,
                                          padding: EdgeInsets.all(13),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                customPageRoute(
                                                    lessons[index].page,
                                                    Curves.bounceInOut));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                30, 12, 30, 12),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: <Color>[
                                                      Colors.red,
                                                      Colors.redAccent
                                                    ]),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Text(
                                              "Start",
                                              style: TextStyle(
                                                  fontFamily: 'avenir',
                                                  color:
                                                      color1.withOpacity(0.9)),
                                            ),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlashCardsView extends StatefulWidget {
  @override
  _FlashCardsViewState createState() => _FlashCardsViewState();
}

class _FlashCardsViewState extends State<FlashCardsView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        color: color1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Flash Cards",
                style: TextStyle(
                    fontSize: 50,
                    color: color2,
                    fontFamily: 'avenir',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 30, top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(10000)),
                              depth: 2,
                              lightSource: LightSource.topLeft,
                              color: color1),
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1000)),
                            color: color2,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(1000),
                              splashColor: subtitleColor,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: HiraganaFlashCards(),
                                        type: PageTransitionType.size,
                                        alignment: Alignment.topCenter));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.width * 0.3,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Text(
                                              "あ",
                                              style: TextStyle(
                                                  color: color1, fontSize: 35),
                                            ),
                                            VerticalDivider(
                                              width: 50,
                                            ),
                                            Text(
                                              "Hiragana",
                                              style: TextStyle(
                                                  color: color1,
                                                  fontSize: 17,
                                                  fontFamily: "avenir"),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(1000)),
                              depth: 3,
                              lightSource: LightSource.top,
                              color: color1),
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: color1,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              splashColor: subtitleColor,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: KatakanaFlashCards(),
                                        type: PageTransitionType.size,
                                        alignment: Alignment.topCenter));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.width * 0.3,
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Text(
                                              "ツ",
                                              style: TextStyle(
                                                  color: color2, fontSize: 35),
                                            ),
                                            VerticalDivider(
                                              width: 50,
                                            ),
                                            Text(
                                              "Katakana",
                                              style: TextStyle(
                                                  color: color2,
                                                  fontSize: 17,
                                                  fontFamily: "avenir"),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10000)),
                          depth: 8,
                          lightSource: LightSource.topLeft,
                          color: color1),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1000)),
                        color: color2,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(1000),
                          splashColor: subtitleColor,
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: NumbersFlashCards(),
                                    type: PageTransitionType.size,
                                    alignment: Alignment.topCenter));
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.width * 0.3,
                              padding: EdgeInsets.only(bottom: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "四",
                                          style: TextStyle(
                                              color: color1, fontSize: 35),
                                        ),
                                        VerticalDivider(
                                          width: 50,
                                        ),
                                        Text(
                                          "Numbers",
                                          style: TextStyle(
                                              color: color1,
                                              fontSize: 17,
                                              fontFamily: "avenir"),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                elevation: 0,
                color: Colors.white24,
                child: Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width * 8,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Kanji",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "avenir",
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1000)),
                              child: Material(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1000)),
                                color: Colors.black,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(1000),
                                  splashColor: color1,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child:
                                                KanjiFlashCards(grade1Kanjis),
                                            type: PageTransitionType.size,
                                            alignment: Alignment.topCenter));
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: subtitleColor, width: 3),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      width: 120,
                                      height: 120,
                                      padding: EdgeInsets.only(bottom: 2),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "GRADE",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily: "avenir"),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "1",
                                                  style: TextStyle(
                                                      color: color1,
                                                      fontSize: 50),
                                                ),
                                                VerticalDivider(
                                                  width: 50,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1000)),
                              child: Material(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1000)),
                                color: Colors.black,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(1000),
                                  splashColor: color1,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child:
                                                KanjiFlashCards(grade2Kanjis),
                                            type: PageTransitionType.size,
                                            alignment: Alignment.topCenter));
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: subtitleColor, width: 3),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      width: 120,
                                      height: 120,
                                      padding: EdgeInsets.only(bottom: 2),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "GRADE",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily: "avenir"),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "2",
                                                  style: TextStyle(
                                                      color: color1,
                                                      fontSize: 50),
                                                ),
                                                VerticalDivider(
                                                  width: 50,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IntroView extends StatefulWidget {
  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  //old code for accessing saved kanji

  // File jsonFile;
  // Directory dir;
  // bool fileExists = false;
  // String fileName = 'savedkanjis.json';
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getApplicationDocumentsDirectory().then((Directory directory) {
  //     dir = directory;
  //     jsonFile = new File(dir.path + "/" + fileName);
  //     setState(() {
  //       fileExists = jsonFile.existsSync();
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    AuthService _auth = AuthService();
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          color: color1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 50, 10),
                child: Text(
                  "words and \nphrases",
                  style: TextStyle(
                      fontSize: 40,
                      color: color2,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                endIndent: 100,
                thickness: 1.5,
                color: subtitleColor,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )),
    );
  }
}
