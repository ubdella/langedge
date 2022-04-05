import 'package:flutter/material.dart';
import 'package:langedge/custom/cards.dart';
import 'package:langedge/custom/colors.dart';
import 'package:langedge/custom/texts.dart';

class FeelingJapanese extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Center(
              child: Card(
                margin: EdgeInsets.all(0),
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
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text("Japanese",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                fontSize: 50,
                                fontFamily: 'avenir')),
                      ),
                      SizedBox(height: 10),
                      Text("Information",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 15)),
                      Divider(
                        thickness: 1,
                        height: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      lessonCard(<Widget>[
                        Text(
                            "Spoken in: Japan 🇯🇵, Palau 🇵🇼\nNumber of speakers (L1): 126.2 million\nWord order: SOV (Subject-Object-Verb)\nWriting systems:\n  1.ひらがな\n  2.カタカナ\n  3.漢字\nLanguage family: Japonic",
                            style: TextStyle(
                                fontFamily: 'avenir',
                                color: Colors.white,
                                fontSize: 19))
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      lessonCard(
                        <Widget>[
                          Text(
                              "Japanese uses Arabic numberals (1,2,3...) alongside with the Chinese ones (一,二,三,四...). Despite using Chinese characters extensively, the Japanese language is not at all related to Chinese.",
                              style: TextStyle(
                                  fontFamily: 'avenir',
                                  color: Colors.white,
                                  fontSize: 20)),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Text("Lessons",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 50,
                                fontFamily: 'avenir')),
                      ),
                      Divider(
                        thickness: 1,
                        height: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      lessonCard(<Widget>[
                        Text(
                            "Starting with basics and building up on knowledge with each lesson, you are gonna leap levels and start speaking the language real quick! We have used reinforced learning patterns so do not be discouraged if somethings aren't looking very obvoius at some point. Concepts will repeat and get clearer as you move forward. Good luck!",
                            style: TextStyle(
                              fontFamily: "avenir",
                              fontSize: 19,
                            ))
                      ]),
                      SizedBox(height: 30),
                      Text("Fun fact: These fun facts are gonna be lies.",
                          style: TextStyle(
                              fontFamily: 'avenir',
                              color: Colors.white60,
                              fontSize: 15,
                              fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.white38,
                        height: 30,
                      ),
                      SizedBox(height: 10),
                      copyright,
                      SizedBox(height: 0)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class FeelingJapanese extends StatefulWidget {
//   @override
//   _FeelingJapaneseState createState() => _FeelingJapaneseState();
// }

// class _FeelingJapaneseState extends State<FeelingJapanese> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         title: Text(
//           "Introduction",
//           style: TextStyle(fontFamily: "LibreBaskerville"),
//         ),
//         backgroundColor: lessonAppBarColor,
//       ),
//       body: Introduction(),
//     );
//   }
// }

// class Introduction extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         padding: EdgeInsets.all(25),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors: lessonBackgroundGradient),
//         ),
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//               child: Text("Japanese",
//                   style: TextStyle(
//                       // fontWeight: FontWeight.bold,
//                       color: Colors.white60,
//                       fontSize: 50,
//                       fontFamily: 'avenir')),
//             ),
//             SizedBox(height: 20),
//             Text("Information",
//                 style: TextStyle(color: Colors.white70, fontSize: 15)),
//             Divider(
//               thickness: 1,
//               height: 30,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             lessonCard(<Widget>[
//               Text(
//                   "Spoken in: Japan 🇯🇵, Palau 🇵🇼\nNumber of speakers (L1): 126.2 million\nWord order: SOV (Subject-Object-Verb)\nWriting systems:\n  1.ひらがな\n  2.カタカナ\n  3.漢字\nLanguage family: Japonic",
//                   style: TextStyle(
//                       fontFamily: 'avenir', color: Colors.white, fontSize: 19))
//             ]),
//             SizedBox(
//               height: 20,
//             ),
//             lessonCard(
//               <Widget>[
//                 Text(
//                     "Japanese uses Arabic numberals (1,2,3...) alongside with the Chinese ones (一,二,三,四...). Despite using Chinese characters extensively, the Japanese language is not at all related to Chinese.",
//                     style: TextStyle(
//                         fontFamily: 'avenir',
//                         color: Colors.white,
//                         fontSize: 20)),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Center(
//               child: Text("Lessons",
//                   style: TextStyle(
//                       // fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontSize: 50,
//                       fontFamily: 'avenir')),
//             ),
//             Divider(
//               thickness: 1,
//               height: 30,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             lessonCard(<Widget>[
//               Text(
//                   "Starting with basics and building up on knowledge with each lesson, you are gonna leap levels and start speaking the language real quick! We have used reinforced learning patterns so do not be discouraged if somethings aren't looking very obvoius at some point. Concepts will repeat and get clearer as you move forward. Good luck!",
//                   style: TextStyle(
//                     fontFamily: "avenir",
//                     fontSize: 19,
//                   ))
//             ]),
//             SizedBox(height: 30),
//             Text("Fun fact: These fun facts are gonna be lies.",
//                 style: TextStyle(
//                     fontFamily: 'avenir',
//                     color: Colors.white60,
//                     fontSize: 15,
//                     fontStyle: FontStyle.italic)),
//             SizedBox(height: 20),
//             Divider(
//               color: Colors.white38,
//               height: 30,
//             ),
//             SizedBox(height: 10),
//             copyright,
//             SizedBox(height: 0)
//           ],
//         ),
//       ),
//     );
//   }
// }
