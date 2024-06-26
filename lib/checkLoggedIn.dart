import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sole_quest/view/login/login.dart';
import 'package:sole_quest/view/navigator.dart';

class CheckLoggedInUser extends StatefulWidget {
  const CheckLoggedInUser({Key? key}) : super(key: key);

  @override
  State<CheckLoggedInUser> createState() => _CheckLoggedInUserState();
}

class _CheckLoggedInUserState extends State<CheckLoggedInUser> {
  List<String> userInfo = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  Future<void> _checkUser() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      await _fetchAndSaveUserInfo();
      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _fetchAndSaveUserInfo() async {
    final user = FirebaseAuth.instance.currentUser;
    String? documentId = user?.uid;
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      DocumentSnapshot documentSnapshot = await users.doc(documentId).get();

      if (documentSnapshot.exists) {
        List<String> mydata = [];
        mydata.add(documentSnapshot.get('username'));
        mydata.add(documentSnapshot.get('email'));
        mydata.add(documentSnapshot.get('city'));
        if (mounted) {
          // Check if the widget is still mounted
          setState(() {
            userInfo = mydata;
          });
        }
        // Save userInfo to SharedPreferences
        await _saveUserInfoToSharedPreferences(userInfo);
      } else {
        print('Document does not exist on the database');
      }
    } catch (e) {
      print('Error fetching user info: $e');
    }
  }

  Future<void> _saveUserInfoToSharedPreferences(List<String> userInfo) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setStringList('userInfo', userInfo);
    } catch (e) {
      print('Error saving user info to SharedPreferences: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Scaffold(
            body: Center(child: CircularProgressIndicator()),
          )
        : userInfo.isNotEmpty
            ? MainNavigator()
            : Login();
  }
}
