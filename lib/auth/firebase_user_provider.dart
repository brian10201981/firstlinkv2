import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FirstLinkV2FirebaseUser {
  FirstLinkV2FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FirstLinkV2FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FirstLinkV2FirebaseUser> firstLinkV2FirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FirstLinkV2FirebaseUser>(
        (user) => currentUser = FirstLinkV2FirebaseUser(user));
