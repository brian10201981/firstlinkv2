import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FirstLinkFirebaseUser {
  FirstLinkFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

FirstLinkFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FirstLinkFirebaseUser> firstLinkFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FirstLinkFirebaseUser>(
        (user) => currentUser = FirstLinkFirebaseUser(user));
