import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UklonFirebaseUser {
  UklonFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

UklonFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UklonFirebaseUser> uklonFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<UklonFirebaseUser>((user) => currentUser = UklonFirebaseUser(user));
