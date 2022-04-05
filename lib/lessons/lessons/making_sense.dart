import 'package:flutter/material.dart';
import 'package:langedge/custom/colors.dart';
import 'package:langedge/custom/textstyles.dart';
import 'package:langedge/custom/transitions.dart';
import 'package:langedge/lessons/lessons/more_particles.dart';
import 'package:langedge/services/texttospeach.dart';

class MakingSense extends StatefulWidget {
  @override
  _MakingSenseState createState() => _MakingSenseState();
}

class _MakingSenseState extends State<MakingSense> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: lessonScaffoldColor,
          appBar: AppBar(
            actions: nextActions(MoreParticles(), context),
            centerTitle: true,
            title: Text(
              "Making Sense",
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
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "一",
                        style: TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.bold),
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
            _MakingSenseDesu(),
            _MakingSenseWa(),
            _MakingSenseKa(),
          ]),
        ));
  }
}

class _MakingSenseDesu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Making Simple Sentences",
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
                        text: "です (Desu)\n\n\n",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "You're sitting in a park with your little kitten when an old woman approaches you and asks what that thing on your lap is. You reply to her with\n\n",
                        style: BodyStyle),
                    TextSpan(
                        text: "ねこ (cat) です 🔊\n'It's a cat' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("ねこです")),
                    TextSpan(
                        text:
                            "Moving on with life ignoring the fact that you just met a person who couldn't identify a cat, you notice how shiny the watch that kid is wearing is, and just to confirm that it is a Rolex, you ask him what time it is. He replies to you with\n\n",
                        style: BodyStyle),
                    TextSpan(
                        text: "はい (yes)、Rolex です 🔊\n'Yes, it is a Rolex' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("はい、Rolexです")),
                    TextSpan(
                        text:
                            "Cheeky brat! You're home. Now it's the police at your door, don't look at me I wouldn't know what crimes you have committed. You ask who it is and hear\n\n",
                        style: BodyStyle),
                    TextSpan(
                        text: "けいさつ (police) です 🔊\n'It's the police!' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("けいさつです")),
                    TextSpan(
                        text:
                            "So what exactly is going on here? \n\nApart from the quick escalation of things, you must have noticed how we used です in all the sentences in the same way, following a noun. \n\nThe structure didn't change regardless of whether our subject was in first, second or third person. \n\nThat's です it can mean 'is', 'am' or 'are' depending on context. It's the same for all.\n\nJust say something like \n\nXです. \n\nIt is a valid sentance meaning \n\n'it is X', \n'I am X', \n'they are X' \ndepending on the context. ",
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

class _MakingSenseWa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("But What's The Subject",
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
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "は (Wa)\n\n\n",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "Wait what, 'wa'?? But wasn't this the symbol for 'ha'?\n\nYes, it still is. But this is a special case where this symbol is pronounced as 'wa'. \n\nThe 'は' we are going to talk about is what we call the topic marker. It is a particle, we don't have particles in English so I can't give you an approximate English language counter of it. \n\nHowever these examples will make it clear as to what this 'topic marker' thing does\n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "なまえ (name) は 'bond' です 'James Bond' です 🔊\n'The name is Bond, James Bond.' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer:
                            japaneseTapSpeaker("なまえはボンドです、James Bond です")),
                    TextSpan(
                        text: "これ (this) は ねこ です 🔊\n'This is a cat' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("これはねこです")),
                    TextSpan(
                        text:
                            "わたし (I) は がいこくじん (foreigner) です 🔊\n'I am a foreigner' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("わたしは外国人です")),
                    TextSpan(
                        text:
                            "If you did atleast try, you must have noticed how you can't directly translate は to English and eveerytime it is used in a slightly different context, the translation differs significantly. \n\nIt's a topic marker. It just tells you what we are talkng about, no more information. \n\nIn a sentence, whatever comes before は is the topic; the thing we are talking about, whatever comes after it is its predicate.\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                  ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MakingSenseKa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("The Question Mark",
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
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "か (Ka)\n\n\n",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'avenir')),
                    TextSpan(
                        text:
                            "Another particle that comes in is the か particle. It can roughly be equated to the question mark (?) from the English language, except that unlike the question mark it is actually articulated in speech and does have more uses. You don't 'say' the question mark, but you do 'say' the か. \n\nか comes at the end of a sentence and makes it interrogative. \n\nIn this short journey yet, you might have understoond that Japanese is a highy contextual language i.e. the meaning of a sentence can change a lot depending on the context it was said in. \n\nThe following examples should help you get an intuition of how this particular particle is used.\n\n",
                        style: TextStyle(fontSize: 20, fontFamily: 'avenir')),
                    TextSpan(
                        text: "かのじょ (she) です か 🔊\n'Is it her?' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("かのじょですか")),
                    TextSpan(
                        text: "けいさつ です か 🔊\n'Is it the police?' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("けいさつですか")),
                    TextSpan(
                        text:
                            "それ (that) は なん (what) です か 🔊\n'What is that?' \n\n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("それはなんですか")),
                    TextSpan(
                        text:
                            "しにがみ (death god)　です　か 🔊\n'Are you a death god?' \n",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'avenir',
                            color: Colors.amber),
                        recognizer: japaneseTapSpeaker("しにがみですか")),
                  ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
