import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CreateAccount with ChangeNotifier {
  final authSettings = FirebaseAuth.instance;


  //

  //

  Future<void> CreateAccountProvider(
      {required String email, required String password, required String userName}) async {
    authSettings.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
