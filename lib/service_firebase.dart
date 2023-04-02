import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ServiceClass
{

  static signInWithProfile(String email, String password)
  async {

    try {
      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  static createProfile(String email, String password)
  async {
    try {

      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential;


    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  static createDashboardTree()
  async {
    DatabaseReference ref = FirebaseDatabase.instance.ref("dashboard/static");

    await ref.set({
      "primary_sec":[
        {"item_name": "Holiday Packages"},
        {"item_name": "Hotels"},
        {"item_name": "Cabs"},
      ]

    });
  }

}