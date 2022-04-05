import 'package:flutter/material.dart';
import 'package:langedge/screens/main_page.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 800,
                ),
                Hero(
                  tag: "sun",
                  child: Container(
                      height: 500,
                      width: 3000,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(2000),
                            bottomRight: Radius.circular(00),
                          ),
                          gradient: LinearGradient(
                              colors: <Color>[Colors.red, Colors.amber]))),
                ),
                Positioned(
                    bottom: 50,
                    left: 30,
                    child: Transform.scale(
                      scale: 0.3,
                      child: Image.asset(
                        "assets/images/nihongo.png",
                      ),
                    )),
                Positioned(
                  bottom: 30,
                  right: 50,
                  child: Transform.scale(
                    scale: 1.5,
                    child: FlatButton(
                        autofocus: true,
                        padding: EdgeInsets.all(13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainPage();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(30, 12, 30, 12),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: <Color>[Colors.red, Colors.amber]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Start",
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
                  ),
                ),
                Positioned(
                    bottom: 130,
                    left: 20,
                    child: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Start Learning\n\n",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 45,
                            fontFamily: 'avenir',
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "Jump right in! \nGet learning with the handcrafted lessons \nor flashcards. Designed for beginners and\nintermediate learners.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'avenir',
                        ),
                      ),
                    ])))
              ],
            )
          ],
        ),
      ),
    );
  }
}
