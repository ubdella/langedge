import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:langedge/custom/colors.dart';
import 'package:langedge/custom/transitions.dart';
import 'package:langedge/lessons/lessons/conjugations.dart';
import 'package:langedge/lists/verbs.dart';
import 'package:langedge/services/texttospeach.dart';

class BasicVerbs extends StatefulWidget {
  @override
  _BasicVerbsState createState() => _BasicVerbsState();
}

class _BasicVerbsState extends State<BasicVerbs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.purple[800],
          appBar: AppBar(
            actions: nextActions(Conjugations(), context),
            centerTitle: true,
            title: Text(
              "Basic Verbs",
              style: TextStyle(fontSize: 25, color: Colors.white54),
            ),
            backgroundColor: lessonAppBarColor,
            elevation: 20,
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
                    tag: "basic verbs",
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
                  Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("四",
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold))),
                  ),
                  // Tab(
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Text("五",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold)),
                  //   ),00
                  // ),
                ]),
          ),
          body: TabBarView(children: [
            ExistentialVerbs(),
            ExistentialVerbsPast(),
            _Keigo(),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Text(
                    "Verbcabulary",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Five verbs and you have finally started learning Japanese",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.white30),
                    ),
                  ),
                  Divider(
                    height: 40,
                    thickness: 1,
                  ),
                  _CardSlider(),
                  Divider(),
                  Text(
                    "Swipe >",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}

class ExistentialVerbs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Doing Stuff",
                style: TextStyle(
                    fontFamily: 'avenir',
                    color: Colors.amber,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
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
                    Text("Existential Verbs",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "いる and ある\n\n",
                          style: TextStyle(
                              color: Colors.white38,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'avenir')),
                      TextSpan(
                          text:
                              "Japanese verbs are great! You learn a few patterns and everything else builds logically. \n\nStarting with the most basic, the simplest thing you can do is to be. The verb for being is いる for living beings, and ある for everything else. \n\nが is a particle we call the subject marker. It is just like particle は and is used for more emphasis on the subject. There are certain rules regarding how to use it but right now I won't bore you with them\n\n",
                          style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                      TextSpan(
                          text: "かれはそこにいる \n'He is over there' \n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amber),
                          recognizer: japaneseTapSpeaker("かれはそこにいる")),
                      TextSpan(
                          text: "それはそこにある \n'It is over there' \n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amber),
                          recognizer: japaneseTapSpeaker("それはそこにある")),
                      TextSpan(
                          text: "かのじょはがっこうにいる \n'She is at school' \n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amber),
                          recognizer: japaneseTapSpeaker("かのじょはがっこうにいる")),
                      TextSpan(
                          text:
                              "However these verbs must not be taken to be direct translations of 'is' or 'are' because they can also function as 'have' or 'has'\n\n",
                          style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                      TextSpan(
                          text: "Allergiesがある \n'I have allergies'\n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amber),
                          recognizer: japaneseTapSpeaker("Allergiesがある")),
                      TextSpan(
                          text: "かれにはねこがいる \n'He has got cat' \n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amber),
                          recognizer: japaneseTapSpeaker("かれにはねこがいる")),
                    ])),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "すんでいる\n\n",
                            style: TextStyle(
                                color: Colors.white38,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'avenir')),
                        TextSpan(
                            text:
                                "Another important verb we will learn is すんでいる, that means to live. Not to live in the sense of being alive, but to stay somewhere as in the sentence 'I live in Wakanda'.\n\n",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'avenir')),
                        TextSpan(
                            text: "とうきょうにすんでいる \n'I am living in Tokyo'\n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber),
                            recognizer: japaneseTapSpeaker("とうきょうにすんでいる")),
                        TextSpan(
                            text:
                                "かのじょがおおさか(Osaka)にすんでいる \n'She lives in Osaka' \n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber),
                            recognizer: japaneseTapSpeaker("かのじょがおおさかにすんでいる")),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExistentialVerbsPast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("In The Past",
                style: TextStyle(
                    fontFamily: 'avenir',
                    color: Colors.amber,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Been There And Done That",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "いた, あった,すんでいた\n\n",
                          style: TextStyle(
                              color: Colors.white38,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'avenir')),
                      TextSpan(
                          text:
                              "You know what いる, ある and すんでいる mean, but these are what we can call the 'dictionary form' of the verbs. In Japanese, verbs have many conjugations making them super cool. Such as, if you replace る with た in verbs like いる and すんでいる and with った for ある they become past tense. Yes, it is that simple.\n\n",
                          style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    ])),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "いる/いた\n\n",
                            style: TextStyle(
                                color: Colors.white38,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'avenir')),
                        TextSpan(
                            text: "'ru' go 'taaa'\n\n",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'avenir')),
                        TextSpan(
                            text: "かれはそこにいた　\n'He was over there' \n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("かれはそこにいた")),
                        TextSpan(
                            text: "かのじょはがっこうにいた　\n'She was at school'\n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("かのじょはがっこうにいた")),
                        TextSpan(
                            text: "かれにはねこがいた　\n'He had a cat' \n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("かれにはねこがいた")),
                      ]),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "ある/あった\n\n",
                            style: TextStyle(
                                color: Colors.white38,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'avenir')),
                        TextSpan(
                            text: "'ru' go 'ttaaa'\n\n",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'avenir')),
                        TextSpan(
                            text: "それはそこにあった \n'That was over there'\n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("それはそこにあった")),
                        TextSpan(
                            text: "かれにはおかねがあった \n'He had money'\n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("かれにはおかねがあった")),
                        TextSpan(
                            text: "わたしにはくるま(car)があった \n'I had a car' \n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("わたしにはくるまがあった")),
                      ]),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "すんでいる/すんでいた\n\n",
                            style: TextStyle(
                                color: Colors.white38,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'avenir')),
                        TextSpan(
                            text: "'ru' go 'taaa'\n\n",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'avenir')),
                        TextSpan(
                            text:
                                "わたしはとうきょうにすんでいた \n'I was living in Tokyo' \n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("わたしはとうきょうにすんでいた")),
                        TextSpan(
                            text:
                                "かれがFranceにすんでいた \n'He was living in France'\n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("かれがFranceにすんでいた")),
                        TextSpan(
                            text:
                                "いま(now)まで(until)おや(parents)のいえ(house)にすんでいた \n'Until now, I had been living at my parents' house' \n\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'avenir',
                                color: Colors.amber,
                                fontStyle: FontStyle.italic),
                            recognizer: japaneseTapSpeaker("いままでおやのいえにすんでいた")),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Keigo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Keigo",
                style: TextStyle(
                    fontFamily: 'avenir',
                    color: Colors.amber,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Respect bro, respect!",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "けいご\n\n",
                          style: TextStyle(
                              color: Colors.white38,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'avenir')),
                      TextSpan(
                          text:
                              "Keigo refers to Japanese honorifics, these are parts of speech that show respect. You have seen that だ means the same as です and いる means the same as います. So what's the difference? In both cases the former is informal while the latter is formal i.e. the latter usage shows more respect than the former. These parts of speech are known as keigo. Now it is pretty easy to figure out the Keigo for a verb. The Keigo for the verb いる is います and すんでいる is すんでいます. For other kinds of verbs like ある, the Keigo is あります and for いく: いきます. Just keep in mind that whenever you are in a formal situation, or are speaking with someone you are supposed to show more respect to; you have to use keigo. Your だs become ですs and your いるs become いますs. I'll still drop some examples here\n\n",
                          style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    ])),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Examples",
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    Divider(
                      thickness: 1,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Non Keigo vs Keigo\n\n",
                          style: TextStyle(
                              color: Colors.white38,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'avenir')),
                      TextSpan(
                          text:
                              "Remember that keigo is only for formal situations, otherwise you are going to use the casual non Keigo forms. All the examples from previous pages are shown below with their Keigo forms     \n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.white)),
                      TextSpan(
                          text: "かれはそこにいる\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amberAccent)),
                      TextSpan(
                          text: "かれはそこにいます\n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.green)),
                      TextSpan(
                          text: "かれはそこにいた\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amberAccent)),
                      TextSpan(
                          text: "かれはそこにいました\n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.green)),
                      TextSpan(
                          text: "それはそこにある\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amberAccent)),
                      TextSpan(
                          text: "それはそこにあります\n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.green)),
                      TextSpan(
                          text: "それはそこにあった\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amberAccent)),
                      TextSpan(
                          text: "それはそこにありました\n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.green)),
                      TextSpan(
                          text: "かのじょがおおさかにすんでいる\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amberAccent)),
                      TextSpan(
                          text: "かのじょがおおさかにすんでいます\n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.green)),
                      TextSpan(
                          text: "かのじょがおおさかにすんでいた\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.amberAccent)),
                      TextSpan(
                          text: "かのじょがおおさかにすんでいました\n\n",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              color: Colors.green)),
                    ])),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _VerbCard extends StatefulWidget {
  final Verb verb;
  _VerbCard({this.verb});
  @override
  _VerbCardState createState() => _VerbCardState(verb: verb);
}

class _VerbCardState extends State<_VerbCard> {
  Verb verb;
  _VerbCardState({this.verb});

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    String title;
    String verbShown;
    String pastShown;
    if (_switchValue == false) {
      setState(() {
        title = "Dictionary form";
        verbShown = verb.douji.verb;
        pastShown = verb.douji.past;
      });
    } else {
      setState(() {
        title = "Keigo form";
        verbShown = verb.keigo.verb;
        pastShown = verb.keigo.past;
      });
    }
    return Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  colors: <Color>[Colors.amber[700], Colors.amberAccent])),
          height: 280,
          width: 1000,
          child: Stack(
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Divider(),
                    Text(
                      verbShown,
                      style: TextStyle(fontSize: 70, color: Colors.purple),
                    ),
                    Text(
                      verb.douji.verbTranslation,
                      style: TextStyle(fontSize: 15, color: Colors.purple[900]),
                    ),
                    Divider(),
                    Text("-た form/past tense:\n"),
                    Text(
                      pastShown,
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ]),
              Positioned(
                child: Transform.scale(
                  scale: 1.5,
                  child: Switch(
                      value: _switchValue,
                      activeColor: Colors.amber,
                      inactiveThumbColor: Colors.amberAccent,
                      activeTrackColor: Colors.purple[700],
                      inactiveTrackColor: Colors.purple[700],
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      }),
                ),
                top: 3,
                left: 30,
              ),
              Positioned(
                child: Transform.scale(
                  scale: 2,
                  child: IconButton(
                      icon: Icon(
                        Icons.volume_up,
                        // color: Colors.amber[300],
                      ),
                      onPressed: () => speakJapanese(verbShown)),
                ),
                top: 10,
                right: 20,
              )
            ],
          ),
        ));
  }
}

class _CardSlider extends StatefulWidget {
  @override
  _CardSliderState createState() => _CardSliderState();
}

class _CardSliderState extends State<_CardSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider.builder(
            itemCount: verbs1.length,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 1,
              initialPage: 0,
            ),
            itemBuilder: (BuildContext context, int index, _) {
              return _VerbCard(verb: verbs1[index]);
            }));
  }
}
