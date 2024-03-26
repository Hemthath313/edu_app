import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  late String _username = "";

  String get username => _username;

  Future<void> loadUsername() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      DocumentSnapshot<Map<String, dynamic>> userDoc = await FirebaseFirestore
          .instance
          .collection('edu-app')
          .doc(user.uid)
          .get();

      String? username = userDoc['fullname'];
      _username = "Welcome ${username ?? ''}";
      notifyListeners();
    }
  }
}
