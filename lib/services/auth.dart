import 'package:firebase_auth/firebase_auth.dart';
import 'package:langedge/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create user object
  EdgeUser _edgeUserFromUser(User user) {
    return user != null ? EdgeUser(uid: user.uid) : null;
  }

  // stream users
  Stream<EdgeUser> get user {
    return _auth.authStateChanges().map((_edgeUserFromUser));
  }

  //sign out
  int signOut() {
    try {
      _auth.signOut();
      return 1;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in anonymous
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _edgeUserFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in email

  //sign in google
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  Future signInWithGoogle() async {
    //triggering authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    //obtaining auuth details from request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    //create a new credential
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    UserCredential result =
        await FirebaseAuth.instance.signInWithCredential(credential);

    User user = result.user;
    return _edgeUserFromUser(user);
  }
}
