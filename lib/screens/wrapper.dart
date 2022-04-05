import 'package:flutter/material.dart';
import 'package:langedge/models/user.dart';
import 'package:langedge/screens/loginscreen.dart';
import 'package:langedge/screens/main_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<EdgeUser>(context);
    print(user);
    if (user == null) {
      return SignIn();
    } else {
      return MainPage();
    }
  }
}
