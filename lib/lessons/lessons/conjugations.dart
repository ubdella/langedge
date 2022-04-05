import 'package:flutter/material.dart';
import 'package:langedge/custom/cards.dart';

import 'package:langedge/custom/colors.dart';
import 'package:langedge/custom/textstyles.dart';
import 'package:langedge/services/texttospeach.dart';

class Conjugations extends StatefulWidget {
  @override
  _ConjugationsState createState() => _ConjugationsState();
}

class _ConjugationsState extends State<Conjugations> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: lessonScaffoldColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Conjugations",
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
                  //       alignment: Alignment.center,
                  //       child: Text("四",
                  //           style: TextStyle(
                  //               color: Colors.amber,
                  //               fontWeight: FontWeight.bold))),
                  // ),
                  // Tab(
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Text("五",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold)),
                  //   ),00
                  // ),
                ]),
          ),
          body: TabBarView(
              children: [ConjugationsIntro(), VerbGroups(), _Conjugating()])),
    );
  }
}

class ConjugationsIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("What Why How", style: AmberHeader),
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
                    Text(
                      "What, Why",
                      style: QuasiWhiteHeader,
                      textAlign: TextAlign.left,
                    ),
                    Divider(),
                    Text(
                      "Verbs can be modified to add specificity to them with more information about the context.\n\nAs in the last lesson. Just by modifying verbs with a -た we were able to create the past tense.\n\nThere are many conjugations serving different purposes.",
                      style: BodyStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
                    Text(
                      "How",
                      style: QuasiWhiteHeader,
                      textAlign: TextAlign.left,
                    ),
                    Divider(),
                    Text(
                      "How? It depends on the type of verb and the conjugation you are making. \n\nYou probably have noticed that all verbs end with an -u sound in Japanese. Luckily this always happens. \n\nNow there are different types of verbs that follow different conjugation rules. On the next page I lay them out, if some things are going over your head, it is totally okay; keep proceeding and things will get clearer with progress.",
                      style: BodyStyle,
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

class VerbGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Verb Groups", style: AmberHeader),
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
                    Text(
                      "The Types",
                      style: QuasiWhiteHeader,
                      textAlign: TextAlign.left,
                    ),
                    Divider(),
                    Text(
                      "1. る Verbs",
                      style: QuasiWhiteSubHeader,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "These are verbs that always end with a る\n",
                        style: BodyStyle,
                      ),
                    ),
                    Text(
                      "2. う Verbs",
                      style: QuasiWhiteSubHeader,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "These are all the other verbs (except irregulars). They could end with any -u sound.\n",
                        style: BodyStyle,
                      ),
                    ),
                    Text(
                      "3. Irregular Verbs",
                      style: QuasiWhiteSubHeader,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "There are just two in this category\nする -to do\nくる -to come",
                        style: BodyStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
                    Text(
                      "Let's Template",
                      style: QuasiWhiteHeader,
                      textAlign: TextAlign.left,
                    ),
                    Divider(),
                    Text(
                      "いる (To be/exist) - る verb\nいく (To go) - う verb\n",
                      style: QuasiWhiteSubHeader,
                    ),
                    Text(
                      "いる is a る verb and いく is an -う verb. Let's use these as examples to create an intuition for all other verbs of their respective groups.\nFirstly let's statr with their -ます forms (keigo):\n",
                      style: BodyStyle,
                    ),
                    Text(
                      "いる -> います",
                      style: AmberBodyStyle,
                    ),
                    Text(
                      "For る verbs, we drop the る and then add the -ます suffix.\n",
                      style: BodyStyle,
                    ),
                    Text(
                      "いく -> いきます",
                      style: AmberBodyStyle,
                    ),
                    Text(
                      "For -う verbs, we do not drop the end character, instead we change it to an -い ending (む->み く->き す->し る->り) and then stick in the suffix.\n",
                      style: BodyStyle,
                    ),
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

class _Conjugating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text("Conjugating", style: AmberHeader),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
              child: lessonCard(<Widget>[
            Text(
              "Negative Form",
              style: QuasiWhiteHeader,
            ),
            Divider(
              thickness: 1,
            ),
            Text(
              "いる -> いない",
              style: AmberBodyStyle,
            ),
            Text("   is       is not\n", style: BodyStyle),
            Text(
              "It is a る verb. So we drop the る and add the suffix -ない which is the negative conjugation suffix.",
              style: BodyStyle,
            ),
            Divider(
              height: 30,
            ),
            Text(
              "いく -> いかない",
              style: AmberBodyStyle,
            ),
            Text("to go    to not go\n", style: BodyStyle),
            Text(
              "It is an -う verb. So we modify the く to its -あ ending か and then stick the suffix -ない to it.",
              style: BodyStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: lessonCard(<Widget>[
                Text(
                  "Examples",
                  style: QuasiWhiteSubHeader,
                ),
                Divider(
                  thickness: 1,
                  height: 25,
                ),
                Text.rich(TextSpan(
                    text: "かれはそこにいない",
                    style: AmberBodyStyle,
                    recognizer: japaneseTapSpeaker("かれはそこにいない"))),
                Text("He is not there", style: BodyStyle),
                Divider(),
                Text.rich(TextSpan(
                    text: "かのじょはいかない",
                    style: AmberBodyStyle,
                    recognizer: japaneseTapSpeaker("かのじょはいかない"))),
                Text("She is not going", style: BodyStyle),
              ]),
            ),
          ])),
          SizedBox(
            height: 20,
          ),
          Center(
            child: lessonCard(<Widget>[
              Text(
                "Keigo",
                style: QuasiWhiteHeader,
              ),
              Divider(thickness: 1, height: 25),
              Text(
                "Of course, their keigo are conjugated differently because they are different!\n",
                style: BodyStyle,
              ),
              Text(
                "いきます -> いきません",
                style: AmberBodyStyle,
              ),
              Text(
                "This is the same for all verbs IRRESPECTIVE OF VERB GROUP. Since all verbs when written in keigo end with a ます, their conjugation will require modifying only the ます part.",
                style: BodyStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: lessonCard(<Widget>[
                  Text(
                    "Examples",
                    style: QuasiWhiteSubHeader,
                  ),
                  Divider(
                    thickness: 1,
                    height: 25,
                  ),
                  Text.rich(TextSpan(
                      text: "かれはそこにいません",
                      style: AmberBodyStyle,
                      recognizer: japaneseTapSpeaker("かれはそこにいません"))),
                  Text("He's not there", style: BodyStyle),
                  Divider(),
                  Text.rich(TextSpan(
                      text: "かのじょはいきません",
                      style: AmberBodyStyle,
                      recognizer: japaneseTapSpeaker("かのじょはいきません"))),
                  Text("She is not going", style: BodyStyle),
                ]),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
