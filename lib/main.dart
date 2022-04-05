import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:langedge/models/user.dart';
import 'package:langedge/screens/wrapper.dart';
import 'package:langedge/services/auth.dart';

import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<EdgeUser>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
        theme: ThemeData.dark(),
      ),
    );
  }

  @override
  void initState() {
    // initializeGrade1Kanji();
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
}
