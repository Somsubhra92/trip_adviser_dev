import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ServiceClass
{

  static FirebaseFirestore db = FirebaseFirestore.instance;

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
    FirebaseFirestore.instance.collection('users').add({
      'email':'abc@gmail.com',
      'name':'hasvdhv',
      'phone':'5678892'
    });
  }

  static getPackageDetails()
  async {

    final docRef = db.collection("tour_details").doc("ayR5bV8c300yuGf7To7T");

    const source = Source.server;

    docRef.get(const GetOptions(source: source)).then(
          (res) {
            print("Successfully completed") ;
            print(res.data());

        },
      onError: (e) => print("Error completing: $e"),
    );
  }

}