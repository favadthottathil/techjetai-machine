import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  User? get user => _user;

  listenForAuthChanges() {
    _auth.authStateChanges().listen((event) {
      _user = event;
    });

    notifyListeners();
  }

  googleSignIn() {
    try {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();

      _auth.signInWithProvider(googleAuthProvider).then((_) => listenForAuthChanges());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<String> logOut() async {
    try {
      await _auth.signOut();

      return Future.value('');
    } on FirebaseAuthException catch (ex) {
      return Future.value(ex.message);
    }
  }
}
