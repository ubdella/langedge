import 'package:flutter/material.dart';

import 'package:langedge/custom/colors.dart';
import 'package:langedge/custom/texts.dart';
import 'package:langedge/custom/transitions.dart';
import 'package:langedge/lessons/lessons/basic_verbs.dart';
import 'package:langedge/services/texttospeach.dart';

class MoreParticles extends StatefulWidget {
  @override
  _MoreParticlesState createState() => _MoreParticlesState();
}

class _MoreParticlesState extends State<MoreParticles> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: lessonScaffoldColor,
          appBar: AppBar(
            actions: nextActions(BasicVerbs(), context),
            centerTitle: true,
            title: Text(
              "More Particles",
              style: TextStyle(fontSize: 25, color: Colors.white54),
            ),
            backgroundColor: lessonAppBarColor,
            elevation: 8,
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
                    tag: "more particles",
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
                  // Tab(
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Text("五",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold)),
                  //   ),
                  // ),
                ]),
          ),
          body: TabBarView(children: [
            PossessiveParticle(),
            NiParticle(),
            DeParticle(),
          ]),
        ));
  }
}

class PossessiveParticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Possession",
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
                        text: "の (No)\n\n\n",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "This one is the possessive particle. I'm going to start with a few examples\n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text: "ねこ (cat) の なまえ (name) \n'The cat's name' \n\n",
                        recognizer: japaneseTapSpeaker("ねこのなまえ"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text: "かれ (he) の かみ (hair)\n'His hair' \n\n",
                        recognizer: japaneseTapSpeaker("彼の髪"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "The particle の is followed by an object that is being possessed by whatever came before the の. So 'Trump の chicken' would simply mean 'chicken that belongs to Trump'. Whenever you see it, just think of it to be an ['s].  \n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text: "Schrödinger の ねこ \n'Schrödinger's cat' \n\n",
                        recognizer: japaneseTapSpeaker("Schrödingerのねこ"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "かれん (Karen) の いかり (anger)\n'a Karen's wrath' \n\n",
                        recognizer: japaneseTapSpeaker("かれんのいかり "),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "はは (mother) の あい (love)\n'motherly love/ a mother's love' \n\n",
                        recognizer: japaneseTapSpeaker("母のあい"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                  ])),
                  watermark
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NiParticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Location/Time/Purpose",
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
                        text: "に (Ni)\n\n\n",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "This particle marks:\nLocation\nPurpose\nTime\n\nWe haven't gotten into verbs yet but learn this:\nある means 'to exist', but is used for non living things. \nいる means 'to exist', but is used for living things.\n\nLet us first look at a few examples for the first case: marking a location:\n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "わたし (I) の いえ (house) は そこ(there) に ある(exists)\n'My house is over there' \n\n",
                        recognizer: japaneseTapSpeaker("わたしのいえはそこにある"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "かれ (he) は といれ (toilet) に います(exists)\n'He is in the toilet' \n\n",
                        recognizer: japaneseTapSpeaker("かれわといれにいる"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "かれん は まだ　そと に います\n'The Karen is still outside' \n\n",
                        recognizer: japaneseTapSpeaker("かれんwaまだそとにいる"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "かれ は まだ おや (parents) の いえ に すんでいる(lives)\n'He still lives with his parents' \n\n",
                        recognizer: japaneseTapSpeaker("かれwaまだおやのいえにすんでいる"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "This particle also marks absolute time, as in a particular value of time (like '11:00 AM'/'Monday') and not a relative value (like 'today'/'next hour') \n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text: "よる　に いく (go) \n'I will go at night' \n\n",
                        recognizer: japaneseTapSpeaker("よるにいく"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text: "それ は しがつ (april) に ある\n'That is in April' \n\n",
                        recognizer: japaneseTapSpeaker("それはしがつにある"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "Lastly, に also marks purpose. Whatever precedes the particle is the purpose of whatever verb follows it. \n\n ",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text: "み(see)  に  いく(go)\n'Go to see' \n\n",
                        recognizer: japaneseTapSpeaker("みにいく"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text: "あい(meet)  に  くる(come)\n'Come to meet' \n\n",
                        recognizer: japaneseTapSpeaker("あいにくる"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                  ])),
                  watermark
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DeParticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Means/Location",
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
                        text: "で (De)\n\n\n",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "This particle also has multiple use cases. It is used to mark means or location. Let's look at the first case\n\nMeans\n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text: "ばす (bus) で くる (came) \n'I come by bus' \n\n",
                        recognizer: japaneseTapSpeaker("バスでくる"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "かっぷ (cup) で のみむ(drinking)\n'I drink from a cup' \n\n",
                        recognizer: japaneseTapSpeaker("かっぷでのむ"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "おかね (money) で かう (bought) \n'I bought it using money' \n\n",
                        recognizer: japaneseTapSpeaker("おかねでかう"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "The next use case is: marking \n\nLocation: \n\nで is gonna be your default particle for marking location. In this usage, this particle is similar to に but there are subtle differences you will notice as you go. \n\nAn important such is that it can't be used with existential verbs like いる (to be) ある (to be) すんでいる (to live). For these you will use the particle に. Have a look at these examples\n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "おおさか (Osaka) で べんきょうします (study) \n'I study in Osaka' \n\n",
                        recognizer: japaneseTapSpeaker("おおさかでべんきょうします"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                    TextSpan(
                        text:
                            "とうきょう (Tokyo) で あう (meet)\n'we will meet in Tokyo' \n\n",
                        recognizer: japaneseTapSpeaker("東京であう"),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber)),
                  ])),
                  watermark
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
