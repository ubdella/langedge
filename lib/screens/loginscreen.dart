import 'package:flutter/material.dart';
import 'package:langedge/custom/colors.dart';
import 'package:langedge/models/user.dart';
import 'package:langedge/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Transform.scale(
                      scale: .5,
                      child: Image.asset('assets/logo.png'),
                    ),
                    Text(
                      "Japanese Edge",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: 'LibreBaskerville',
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      autofocus: true,
                      splashColor: Colors.red,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          width: 240,
                          height: 45,
                          // margin: EdgeInsets.only(top: 25),
                          decoration: BoxDecoration(
                              // gradient: flashcardBackgroundGradient,
                              borderRadius: BorderRadius.circular(10),
                              // border: Border.all(width: 1.2, color: Colors.black),
                              color: Colors.red),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/google_logo.png'),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'avenir',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.amber[50]),
                              ),
                            ],
                          ))),
                      onTap: () async {
                        dynamic result = await _auth.signInWithGoogle();
                        if (result == null) {
                          print("error signing in");
                        } else {
                          print(result.uid);
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                        style:
                            ButtonStyle(splashFactory: NoSplash.splashFactory),
                        onPressed: () async {
                          dynamic result = await _auth.signInAnon();
                          if (result == null) {
                            print("error signing in");
                          } else {
                            print(result.uid);
                          }
                        },
                        child: Text(
                          "Skip signing in",
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'avenir',
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
