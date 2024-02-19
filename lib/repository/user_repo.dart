import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edu_app/model/user_modal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserRepository {
  final CollectionReference _usersCollection = FirebaseFirestore.instance.collection('edu-app');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> createUser(Usermodel user) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );

      await _usersCollection.doc(userCredential.user?.uid).set({
        'id': userCredential.user?.uid,
        'fullname': user.fullname,
        'email': user.email,
      });

      return userCredential.user?.uid;
    } catch (e) {
      debugPrint("Error creating user: $e");
      return null;
    }
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("Error signing in: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
