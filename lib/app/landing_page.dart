
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/signin/signin.dart';

import 'homepage.dart';

class LandingPage extends StatefulWidget {

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  User? _user;
  void _updateUser(User user){
    setState(() {
      _user = user;
    });

  }
  @override
  Widget build(BuildContext context) {
    if (_user == null ){
     return SignInPage(onSignIn: _updateUser);
  }
    return HomePage();}
}
